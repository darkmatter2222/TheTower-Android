package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
class TopicsSubscriber {
    private static final long MAX_DELAY_SEC = TimeUnit.HOURS.toSeconds(8);
    private static final long MIN_DELAY_SEC = 30;
    private final Context context;
    private final Metadata metadata;
    private final TopicsStore store;
    private final ScheduledExecutorService syncExecutor;
    private final TopicSubscriptionClient topicSubscriptionClient;
    private final Map<String, ArrayDeque<TaskCompletionSource<Void>>> pendingOperations = new ArrayMap();
    private boolean syncScheduledOrRunning = false;

    TopicsSubscriber(Metadata metadata, TopicsStore topicsStore, TopicSubscriptionClient topicSubscriptionClient, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.metadata = metadata;
        this.store = topicsStore;
        this.topicSubscriptionClient = topicSubscriptionClient;
        this.context = context;
        this.syncExecutor = scheduledExecutorService;
    }

    private void addToPendingOperations(TopicOperation topicOperation, TaskCompletionSource<Void> taskCompletionSource) {
        ArrayDeque<TaskCompletionSource<Void>> arrayDeque;
        synchronized (this.pendingOperations) {
            String strSerialize = topicOperation.serialize();
            if (this.pendingOperations.containsKey(strSerialize)) {
                arrayDeque = this.pendingOperations.get(strSerialize);
            } else {
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque2 = new ArrayDeque<>();
                this.pendingOperations.put(strSerialize, arrayDeque2);
                arrayDeque = arrayDeque2;
            }
            arrayDeque.add(taskCompletionSource);
        }
    }

    private void blockingSubscribeToTopic(String str) throws IOException {
        this.topicSubscriptionClient.subscribe(str);
    }

    private void blockingUnsubscribeFromTopic(String str) throws IOException {
        this.topicSubscriptionClient.unsubscribe(str);
    }

    static Task<TopicsSubscriber> createInstance(final FirebaseApp firebaseApp, final FirebaseMessaging firebaseMessaging, final FirebaseInstallationsApi firebaseInstallationsApi, final Metadata metadata, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return Tasks.call(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.TopicsSubscriber$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return TopicsSubscriber.lambda$createInstance$0(context, scheduledExecutorService, metadata, firebaseApp, firebaseMessaging, firebaseInstallationsApi);
            }
        });
    }

    static boolean isDebugLogEnabled() {
        return Log.isLoggable(Constants.TAG, 3);
    }

    static /* synthetic */ TopicsSubscriber lambda$createInstance$0(Context context, ScheduledExecutorService scheduledExecutorService, Metadata metadata, FirebaseApp firebaseApp, FirebaseMessaging firebaseMessaging, FirebaseInstallationsApi firebaseInstallationsApi) throws Exception {
        return new TopicsSubscriber(metadata, TopicsStore.getInstance(context, scheduledExecutorService), new TopicSubscriptionClient(firebaseApp, firebaseMessaging, firebaseInstallationsApi), context, scheduledExecutorService);
    }

    private void markCompletePendingOperation(TopicOperation topicOperation) {
        synchronized (this.pendingOperations) {
            String strSerialize = topicOperation.serialize();
            if (this.pendingOperations.containsKey(strSerialize)) {
                ArrayDeque<TaskCompletionSource<Void>> arrayDeque = this.pendingOperations.get(strSerialize);
                TaskCompletionSource<Void> taskCompletionSourcePoll = arrayDeque.poll();
                if (taskCompletionSourcePoll != null) {
                    taskCompletionSourcePoll.setResult(null);
                }
                if (arrayDeque.isEmpty()) {
                    this.pendingOperations.remove(strSerialize);
                }
            }
        }
    }

    private void startSync() {
        if (isSyncScheduledOrRunning()) {
            return;
        }
        syncWithDelaySecondsInternal(0L);
    }

    TopicsStore getStore() {
        return this.store;
    }

    boolean hasPendingOperation() {
        return this.store.getNextTopicOperation() != null;
    }

    synchronized boolean isSyncScheduledOrRunning() {
        return this.syncScheduledOrRunning;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f  */
    boolean performTopicOperation(TopicOperation topicOperation) throws IOException {
        byte b;
        try {
            String operation = topicOperation.getOperation();
            int iHashCode = operation.hashCode();
            if (iHashCode != 83) {
                if (iHashCode == 85 && operation.equals("U")) {
                    b = 1;
                } else {
                    b = -1;
                }
            } else if (operation.equals("S")) {
                b = 0;
            } else {
                b = -1;
            }
            if (b == 0) {
                blockingSubscribeToTopic(topicOperation.getTopic());
                if (isDebugLogEnabled()) {
                    Log.d(Constants.TAG, "Subscribe to topic: " + topicOperation.getTopic() + " succeeded.");
                }
            } else if (b == 1) {
                blockingUnsubscribeFromTopic(topicOperation.getTopic());
                if (isDebugLogEnabled()) {
                    Log.d(Constants.TAG, "Unsubscribe from topic: " + topicOperation.getTopic() + " succeeded.");
                }
            } else if (isDebugLogEnabled()) {
                Log.d(Constants.TAG, "Unknown topic operation" + topicOperation + ".");
            }
            return true;
        } catch (IOException e) {
            if (com.google.firebase.iid.GmsRpc.ERROR_SERVICE_NOT_AVAILABLE.equals(e.getMessage()) || com.google.firebase.iid.GmsRpc.ERROR_INTERNAL_SERVER_ERROR.equals(e.getMessage())) {
                Log.e(Constants.TAG, "Topic operation failed: " + e.getMessage() + ". Will retry Topic operation.");
                return false;
            }
            if (e.getMessage() != null) {
                throw e;
            }
            Log.e(Constants.TAG, "Topic operation failed without exception message. Will retry Topic operation.");
            return false;
        }
    }

    void scheduleSyncTaskWithDelaySeconds(Runnable runnable, long j) {
        this.syncExecutor.schedule(runnable, j, TimeUnit.SECONDS);
    }

    Task<Void> scheduleTopicOperation(TopicOperation topicOperation) {
        this.store.addTopicOperation(topicOperation);
        TaskCompletionSource<Void> taskCompletionSource = new TaskCompletionSource<>();
        addToPendingOperations(topicOperation, taskCompletionSource);
        return taskCompletionSource.getTask();
    }

    synchronized void setSyncScheduledOrRunning(boolean z) {
        this.syncScheduledOrRunning = z;
    }

    void startTopicsSyncIfNecessary() {
        if (hasPendingOperation()) {
            startSync();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> subscribeToTopic(String str) {
        Task<Void> taskScheduleTopicOperation = scheduleTopicOperation(TopicOperation.subscribe(str));
        startTopicsSyncIfNecessary();
        return taskScheduleTopicOperation;
    }

    boolean syncTopics() throws IOException {
        while (true) {
            synchronized (this) {
                TopicOperation nextTopicOperation = this.store.getNextTopicOperation();
                if (nextTopicOperation == null) {
                    if (isDebugLogEnabled()) {
                        Log.d(Constants.TAG, "topic sync succeeded");
                    }
                    return true;
                }
                if (!performTopicOperation(nextTopicOperation)) {
                    return false;
                }
                this.store.removeTopicOperation(nextTopicOperation);
                markCompletePendingOperation(nextTopicOperation);
            }
        }
    }

    void syncWithDelaySecondsInternal(long j) {
        scheduleSyncTaskWithDelaySeconds(new TopicsSyncTask(this, this.context, this.metadata, Math.min(Math.max(MIN_DELAY_SEC, 2 * j), MAX_DELAY_SEC)), j);
        setSyncScheduledOrRunning(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task<Void> unsubscribeFromTopic(String str) {
        Task<Void> taskScheduleTopicOperation = scheduleTopicOperation(TopicOperation.unsubscribe(str));
        startTopicsSyncIfNecessary();
        return taskScheduleTopicOperation;
    }
}
