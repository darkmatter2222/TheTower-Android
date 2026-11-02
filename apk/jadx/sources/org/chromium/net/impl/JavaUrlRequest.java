package org.chromium.net.impl;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.TrafficStats;
import android.os.Process;
import android.util.Log;
import com.google.common.net.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.time.Duration;
import java.util.AbstractMap;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.chromium.base.metrics.ScopedSysTraceEvent;
import org.chromium.net.CronetException;
import org.chromium.net.ExperimentalUrlRequest;
import org.chromium.net.InlineExecutionProhibitedException;
import org.chromium.net.ThreadStatsUid;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;

/* JADX INFO: loaded from: classes5.dex */
final class JavaUrlRequest extends ExperimentalUrlRequest {
    private static final int DEFAULT_CHUNK_LENGTH = 8192;
    private static final String TAG = "JavaUrlRequest";
    private static final String USER_AGENT = "User-Agent";
    private static final String X_ANDROID = "X-Android";
    private static final String X_ANDROID_SELECTED_TRANSPORT = "X-Android-Selected-Transport";
    private final boolean mAllowDirectExecutor;
    private final AsyncUrlRequestCallback mCallbackAsync;
    private final int mCronetEngineId;
    private String mCurrentUrl;
    private HttpURLConnection mCurrentUrlConnection;
    private final JavaCronetEngine mEngine;
    private final Executor mExecutor;
    private boolean mFinalUserCallbackThrew;
    private final String mInitialMethod;
    private final CronetLogger mLogger;
    private final long mNetworkHandle;
    private int mNonfinalUserCallbackExceptionCount;
    private OutputStreamDataSink mOutputStreamDataSink;
    private String mPendingRedirectUrl;
    private int mReadCount;
    private ReadableByteChannel mResponseChannel;
    private final VersionSafeCallbacks.UploadDataProviderWrapper mUploadDataProvider;
    private final Executor mUploadExecutor;
    private UrlResponseInfoImpl mUrlResponseInfo;
    private final String mUserAgent;
    private final Map<String, String> mRequestHeaders = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    private final List<String> mUrlChain = new ArrayList();
    private final AtomicInteger mState = new AtomicInteger(0);
    private final AtomicBoolean mUploadProviderClosed = new AtomicBoolean(false);
    private volatile int mAdditionalStatusDetails = -1;

    /* JADX INFO: Access modifiers changed from: private */
    final class AsyncUrlRequestCallback {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        final VersionSafeCallbacks.UrlRequestCallback mCallback;
        final Executor mFallbackExecutor;
        final Executor mUserExecutor;

        AsyncUrlRequestCallback(UrlRequest.Callback callback, Executor executor) {
            this.mCallback = new VersionSafeCallbacks.UrlRequestCallback(callback);
            if (JavaUrlRequest.this.mAllowDirectExecutor) {
                this.mUserExecutor = executor;
                this.mFallbackExecutor = null;
            } else {
                this.mUserExecutor = new JavaUrlRequestUtils.DirectPreventingExecutor(executor);
                this.mFallbackExecutor = executor;
            }
        }

        private CronetLogger.CronetTrafficInfo buildCronetTrafficInfo() {
            Map<String, List<String>> mapEmptyMap;
            String negotiatedProtocol;
            boolean zWasCached;
            int i;
            long jEstimateHeadersSizeInBytes;
            long j;
            long jEstimateHeadersSizeInBytesList;
            CronetLogger.CronetTrafficInfo.RequestTerminalState requestTerminalState;
            if (JavaUrlRequest.this.mUrlResponseInfo != null) {
                mapEmptyMap = JavaUrlRequest.this.mUrlResponseInfo.getAllHeaders();
                negotiatedProtocol = JavaUrlRequest.this.mUrlResponseInfo.getNegotiatedProtocol();
                int httpStatusCode = JavaUrlRequest.this.mUrlResponseInfo.getHttpStatusCode();
                zWasCached = JavaUrlRequest.this.mUrlResponseInfo.wasCached();
                i = httpStatusCode;
            } else {
                mapEmptyMap = Collections.emptyMap();
                negotiatedProtocol = "";
                zWasCached = false;
                i = 0;
            }
            String str = negotiatedProtocol;
            long contentLengthString = -1;
            long j2 = 0;
            if (zWasCached) {
                jEstimateHeadersSizeInBytes = 0;
                j = 0;
            } else {
                jEstimateHeadersSizeInBytes = JavaUrlRequest.estimateHeadersSizeInBytes(JavaUrlRequest.this.mRequestHeaders);
                j = 0;
                j2 = -1;
            }
            if (zWasCached) {
                contentLengthString = j;
                jEstimateHeadersSizeInBytesList = contentLengthString;
            } else {
                jEstimateHeadersSizeInBytesList = JavaUrlRequest.estimateHeadersSizeInBytesList(mapEmptyMap);
                if (mapEmptyMap.containsKey(HttpHeaders.CONTENT_LENGTH)) {
                    contentLengthString = JavaUrlRequest.parseContentLengthString(mapEmptyMap.get(HttpHeaders.CONTENT_LENGTH).get(0));
                }
            }
            Duration durationOfSeconds = Duration.ofSeconds(j);
            Duration durationOfSeconds2 = Duration.ofSeconds(j);
            int i2 = JavaUrlRequest.this.mState.get();
            if (i2 == 6) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.ERROR;
            } else if (i2 == 7) {
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.SUCCEEDED;
            } else {
                if (i2 != 8) {
                    throw new IllegalStateException("Internal Cronet error: attempted to report metrics but current state (" + i2 + ") is not a done state!");
                }
                requestTerminalState = CronetLogger.CronetTrafficInfo.RequestTerminalState.CANCELLED;
            }
            return new CronetLogger.CronetTrafficInfo(jEstimateHeadersSizeInBytes, j2, jEstimateHeadersSizeInBytesList, contentLengthString, i, durationOfSeconds, durationOfSeconds2, str, false, false, requestTerminalState, JavaUrlRequest.this.mNonfinalUserCallbackExceptionCount, JavaUrlRequest.this.mReadCount, JavaUrlRequest.this.mOutputStreamDataSink != null ? JavaUrlRequest.this.mOutputStreamDataSink.getReadCount() : 0, false, JavaUrlRequest.this.mFinalUserCallbackThrew, Process.myUid(), 0, 0, 0, CronetLogger.CronetTrafficInfo.RequestFailureReason.UNKNOWN, false, ImplVersion.getCronetVersion(), CronetLogger.CronetSource.CRONET_SOURCE_FALLBACK, -1L, -1L, -1L, -1L);
        }

        static /* synthetic */ void lambda$executeOnFallbackExecutor$9(String str, Runnable runnable) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor  " + str + " running callback");
            try {
                runnable.run();
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        static /* synthetic */ void lambda$executeOnUserExecutor$8(String str, Runnable runnable) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor " + str + " running callback");
            try {
                runnable.run();
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$maybeReportMetrics$4() {
            try {
                JavaUrlRequest.this.mLogger.logCronetTrafficInfo(JavaUrlRequest.this.mCronetEngineId, buildCronetTrafficInfo());
            } catch (RuntimeException e) {
                Log.i(JavaUrlRequest.TAG, "Error while trying to log CronetTrafficInfo: ", e);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCanceled$5(UrlResponseInfo urlResponseInfo) {
            try {
                this.mCallback.onCanceled(JavaUrlRequest.this, urlResponseInfo);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onCanceled", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFailed$7(UrlResponseInfo urlResponseInfo, CronetException cronetException) {
            try {
                this.mCallback.onFailed(JavaUrlRequest.this, urlResponseInfo, cronetException);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onFailed", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReadCompleted$3(UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) throws Exception {
            if (JavaUrlRequest.this.mState.compareAndSet(5, 4)) {
                this.mCallback.onReadCompleted(JavaUrlRequest.this, urlResponseInfo, byteBuffer);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRedirectReceived$1(UrlResponseInfo urlResponseInfo, String str) throws Exception {
            this.mCallback.onRedirectReceived(JavaUrlRequest.this, urlResponseInfo, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onResponseStarted$2() throws Exception {
            if (JavaUrlRequest.this.mState.compareAndSet(1, 4)) {
                VersionSafeCallbacks.UrlRequestCallback urlRequestCallback = this.mCallback;
                JavaUrlRequest javaUrlRequest = JavaUrlRequest.this;
                urlRequestCallback.onResponseStarted(javaUrlRequest, javaUrlRequest.mUrlResponseInfo);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSucceeded$6(UrlResponseInfo urlResponseInfo) {
            try {
                this.mCallback.onSucceeded(JavaUrlRequest.this, urlResponseInfo);
            } catch (Exception e) {
                JavaUrlRequest.this.onFinalCallbackException("onSucceded", e);
            }
            maybeReportMetrics();
            JavaUrlRequest.this.mEngine.decrementActiveRequestCount();
        }

        private void maybeReportMetrics() {
            JavaUrlRequest.this.executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$maybeReportMetrics$4();
                }
            }, "maybeReportMetrics");
        }

        void execute(JavaUrlRequestUtils.CheckedRunnable checkedRunnable, String str) {
            try {
                executeOnUserExecutor(JavaUrlRequest.this.userErrorSetting(checkedRunnable), str);
            } catch (RejectedExecutionException e) {
                JavaUrlRequest.this.enterErrorState(new CronetExceptionImpl("Exception posting task to executor", e));
            }
        }

        void executeOnFallbackExecutor(final Runnable runnable, final String str) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnFallbackExecutor " + str);
            try {
                this.mFallbackExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        JavaUrlRequest.AsyncUrlRequestCallback.lambda$executeOnFallbackExecutor$9(str, runnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        void executeOnUserExecutor(final Runnable runnable, final String str) {
            ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest.AsyncUrlRequestCallback#executeOnUserExecutor " + str);
            try {
                this.mUserExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        JavaUrlRequest.AsyncUrlRequestCallback.lambda$executeOnUserExecutor$8(str, runnable);
                    }
                });
                if (scopedSysTraceEventScoped != null) {
                    scopedSysTraceEventScoped.close();
                }
            } catch (Throwable th) {
                if (scopedSysTraceEventScoped != null) {
                    try {
                        scopedSysTraceEventScoped.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        }

        void onCanceled(final UrlResponseInfo urlResponseInfo) {
            JavaUrlRequest.this.closeResponseChannel();
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCanceled$5(urlResponseInfo);
                }
            }, "onCanceled");
        }

        void onFailed(final UrlResponseInfo urlResponseInfo, final CronetException cronetException) {
            JavaUrlRequest.this.closeResponseChannel();
            Runnable runnable = new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFailed$7(urlResponseInfo, cronetException);
                }
            };
            try {
                executeOnUserExecutor(runnable, "onFailed");
            } catch (InlineExecutionProhibitedException unused) {
                if (this.mFallbackExecutor != null) {
                    executeOnFallbackExecutor(runnable, "onFailed");
                }
            }
        }

        void onReadCompleted(final UrlResponseInfo urlResponseInfo, final ByteBuffer byteBuffer) {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda3
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws Exception {
                    this.f$0.lambda$onReadCompleted$3(urlResponseInfo, byteBuffer);
                }
            }, "onReadCompleted");
        }

        void onRedirectReceived(final UrlResponseInfo urlResponseInfo, final String str) {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda9
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws Exception {
                    this.f$0.lambda$onRedirectReceived$1(urlResponseInfo, str);
                }
            }, "onRedirectReceived");
        }

        void onResponseStarted() {
            execute(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda4
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws Exception {
                    this.f$0.lambda$onResponseStarted$2();
                }
            }, "onResponseStarted");
        }

        void onSucceeded(final UrlResponseInfo urlResponseInfo) {
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onSucceeded$6(urlResponseInfo);
                }
            }, "onSucceeded");
        }

        void sendStatus(final VersionSafeCallbacks.UrlRequestStatusListener urlRequestStatusListener, final int i) {
            executeOnUserExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$AsyncUrlRequestCallback$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    urlRequestStatusListener.onStatus(i);
                }
            }, "sendStatus");
        }
    }

    private final class OutputStreamDataSink extends JavaUploadDataSinkBase {
        private WritableByteChannel mOutputChannel;
        private final AtomicBoolean mOutputChannelClosed;
        private final HttpURLConnection mUrlConnection;
        private OutputStream mUrlConnectionOutputStream;

        OutputStreamDataSink(Executor executor, Executor executor2, HttpURLConnection httpURLConnection, VersionSafeCallbacks.UploadDataProviderWrapper uploadDataProviderWrapper) {
            super(executor, executor2, uploadDataProviderWrapper);
            this.mOutputChannelClosed = new AtomicBoolean(false);
            this.mUrlConnection = httpURLConnection;
        }

        void closeOutputChannel() throws IOException {
            if (this.mOutputChannel == null || !this.mOutputChannelClosed.compareAndSet(false, true)) {
                return;
            }
            this.mOutputChannel.close();
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        protected void finish() throws IOException {
            closeOutputChannel();
            JavaUrlRequest.this.fireGetHeaders();
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        protected Runnable getErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
            return JavaUrlRequest.this.errorSetting(checkedRunnable);
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        protected Runnable getUploadErrorSettingRunnable(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
            return JavaUrlRequest.this.uploadErrorSetting(checkedRunnable);
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        protected void initializeRead() throws IOException {
            if (this.mOutputChannel == null) {
                JavaUrlRequest.this.mAdditionalStatusDetails = 10;
                this.mUrlConnection.setDoOutput(true);
                this.mUrlConnection.connect();
                JavaUrlRequest.this.mAdditionalStatusDetails = 12;
                OutputStream outputStream = this.mUrlConnection.getOutputStream();
                this.mUrlConnectionOutputStream = outputStream;
                this.mOutputChannel = Channels.newChannel(outputStream);
            }
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        protected void initializeStart(long j) {
            if (j > 0) {
                this.mUrlConnection.setFixedLengthStreamingMode(j);
            } else {
                this.mUrlConnection.setChunkedStreamingMode(8192);
            }
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        protected int processSuccessfulRead(ByteBuffer byteBuffer) throws IOException {
            int iWrite = 0;
            while (byteBuffer.hasRemaining()) {
                iWrite += this.mOutputChannel.write(byteBuffer);
            }
            this.mUrlConnectionOutputStream.flush();
            return iWrite;
        }

        @Override // org.chromium.net.impl.JavaUploadDataSinkBase
        protected void processUploadError(Throwable th) {
            JavaUrlRequest.this.enterUploadErrorState(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class SerializingExecutor implements Executor {
        private boolean mRunning;
        private final Executor mUnderlyingExecutor;
        private final Runnable mRunTasks = new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$SerializingExecutor$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.runTasks();
            }
        };
        private final ArrayDeque<Runnable> mTaskQueue = new ArrayDeque<>();

        SerializingExecutor(Executor executor) {
            this.mUnderlyingExecutor = executor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void runTasks() {
            synchronized (this.mTaskQueue) {
                if (this.mRunning) {
                    return;
                }
                Runnable runnablePollFirst = this.mTaskQueue.pollFirst();
                this.mRunning = runnablePollFirst != null;
                while (runnablePollFirst != null) {
                    try {
                        runnablePollFirst.run();
                        synchronized (this.mTaskQueue) {
                            runnablePollFirst = this.mTaskQueue.pollFirst();
                            this.mRunning = runnablePollFirst != null;
                        }
                    } catch (Throwable th) {
                        synchronized (this.mTaskQueue) {
                            this.mRunning = false;
                            try {
                                this.mUnderlyingExecutor.execute(this.mRunTasks);
                            } catch (RejectedExecutionException unused) {
                            }
                            throw th;
                        }
                    }
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            synchronized (this.mTaskQueue) {
                this.mTaskQueue.addLast(runnable);
                try {
                    this.mUnderlyingExecutor.execute(this.mRunTasks);
                } catch (RejectedExecutionException unused) {
                    this.mTaskQueue.removeLast();
                }
            }
        }
    }

    JavaUrlRequest(JavaCronetEngine javaCronetEngine, UrlRequest.Callback callback, final Executor executor, Executor executor2, String str, String str2, boolean z, boolean z2, int i, final boolean z3, final int i2, long j, String str3, ArrayList<Map.Entry<String, String>> arrayList, UploadDataProvider uploadDataProvider, Executor executor3) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#JavaUrlRequest");
        try {
            Objects.requireNonNull(str, "URL is required");
            Objects.requireNonNull(callback, "Listener is required");
            Objects.requireNonNull(executor, "Executor is required");
            Objects.requireNonNull(executor2, "userExecutor is required");
            this.mAllowDirectExecutor = z;
            this.mCallbackAsync = new AsyncUrlRequestCallback(callback, executor2);
            final int threadStatsTag = z2 ? i : TrafficStats.getThreadStatsTag();
            this.mExecutor = new SerializingExecutor(new Executor() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda4
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    executor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda6
                        @Override // java.lang.Runnable
                        public final void run() {
                            JavaUrlRequest.lambda$new$0(i, z, i, runnable);
                        }
                    });
                }
            });
            this.mEngine = javaCronetEngine;
            this.mCronetEngineId = javaCronetEngine.getCronetEngineId();
            this.mLogger = javaCronetEngine.getCronetLogger();
            this.mCurrentUrl = str;
            this.mUserAgent = str2;
            this.mNetworkHandle = j;
            this.mInitialMethod = checkedHttpMethod(str3);
            setHeaders(arrayList);
            this.mUploadDataProvider = checkedUploadDataProvider(uploadDataProvider);
            this.mUploadExecutor = (executor3 == null || z) ? executor3 : new JavaUrlRequestUtils.DirectPreventingExecutor(executor3);
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped == null) {
                throw th;
            }
            try {
                scopedSysTraceEventScoped.close();
                throw th;
            } catch (Throwable th2) {
                th.addSuppressed(th2);
                throw th;
            }
        }
    }

    private static String checkedHttpMethod(String str) {
        Objects.requireNonNull(str, "Method is required.");
        if ("OPTIONS".equalsIgnoreCase(str) || "GET".equalsIgnoreCase(str) || "HEAD".equalsIgnoreCase(str) || "POST".equalsIgnoreCase(str) || "PUT".equalsIgnoreCase(str) || "DELETE".equalsIgnoreCase(str) || "TRACE".equalsIgnoreCase(str) || "PATCH".equalsIgnoreCase(str)) {
            return str;
        }
        throw new IllegalArgumentException("Invalid http method " + str);
    }

    private VersionSafeCallbacks.UploadDataProviderWrapper checkedUploadDataProvider(UploadDataProvider uploadDataProvider) {
        if (uploadDataProvider == null) {
            return null;
        }
        if (this.mRequestHeaders.containsKey("Content-Type")) {
            return new VersionSafeCallbacks.UploadDataProviderWrapper(uploadDataProvider);
        }
        throw new IllegalArgumentException("Requests with upload data must have a Content-Type.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeResponseChannel() {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$closeResponseChannel$14();
            }
        }, "closeResponseChannel");
    }

    private void enterCronetErrorState(Throwable th) {
        enterErrorState(new CronetExceptionImpl("System error", th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterErrorState(CronetException cronetException) {
        if (setTerminalState(6)) {
            fireDisconnect();
            fireCloseUploadDataProvider();
            this.mCallbackAsync.onFailed(this.mUrlResponseInfo, cronetException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void enterUploadErrorState(Throwable th) {
        enterErrorState(new CallbackExceptionImpl("Exception received from UploadDataProvider", th));
    }

    private void enterUserErrorState(Throwable th) {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$enterUserErrorState$3();
            }
        }, "enterUserErrorState");
        enterErrorState(new CallbackExceptionImpl("Exception received from UrlRequest.Callback", th));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable errorSetting(final JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$errorSetting$8(checkedRunnable);
            }
        };
    }

    static long estimateHeadersSizeInBytes(Map<String, String> map) {
        long length = 0;
        if (map == null) {
            return 0L;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                length += (long) key.length();
            }
            String value = entry.getValue();
            if (value != null) {
                length += (long) value.length();
            }
        }
        return length;
    }

    static long estimateHeadersSizeInBytesList(Map<String, List<String>> map) {
        long length = 0;
        if (map == null) {
            return 0L;
        }
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            if (key != null) {
                length += (long) key.length();
            }
            if (entry.getValue() != null) {
                for (String str : entry.getValue()) {
                    if (str != null) {
                        length += (long) str.length();
                    }
                }
            }
        }
        return length;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeOnExecutor(final Runnable runnable, final String str) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#executeOnExecutor " + str);
        try {
            this.mExecutor.execute(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    JavaUrlRequest.lambda$executeOnExecutor$15(str, runnable);
                }
            });
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private void fireCloseUploadDataProvider() {
        if (this.mUploadDataProvider == null || !this.mUploadProviderClosed.compareAndSet(false, true)) {
            return;
        }
        try {
            Executor executor = this.mUploadExecutor;
            final VersionSafeCallbacks.UploadDataProviderWrapper uploadDataProviderWrapper = this.mUploadDataProvider;
            Objects.requireNonNull(uploadDataProviderWrapper);
            executor.execute(uploadErrorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda1
                @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
                public final void run() throws IOException {
                    uploadDataProviderWrapper.close();
                }
            }));
        } catch (RejectedExecutionException e) {
            Log.e(TAG, "Exception when closing uploadDataProvider", e);
        }
    }

    private void fireDisconnect() {
        executeOnExecutor(new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireDisconnect$13();
            }
        }, "fireDisconnect");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireGetHeaders() {
        this.mAdditionalStatusDetails = 13;
        executeOnExecutor(errorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda9
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$fireGetHeaders$4();
            }
        }), "fireGetHeaders");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fireOpenConnection() {
        executeOnExecutor(errorSetting(new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda8
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$fireOpenConnection$7();
            }
        }), "fireOpenConnection");
    }

    private void fireRedirectReceived(final String str, final UrlResponseInfo urlResponseInfo) {
        transitionStates(1, 2, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireRedirectReceived$6(str, urlResponseInfo);
            }
        });
    }

    private Network getNetworkFromHandle(long j) {
        for (Network network : ((ConnectivityManager) this.mEngine.getContext().getSystemService("connectivity")).getAllNetworks()) {
            if (network.getNetworkHandle() == j) {
                return network;
            }
        }
        return null;
    }

    private static boolean isValidHeaderName(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ',' && cCharAt != '/' && cCharAt != '{' && cCharAt != '}') {
                switch (cCharAt) {
                    case '\'':
                    case '(':
                    case ')':
                        break;
                    default:
                        switch (cCharAt) {
                            case ':':
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                            case '?':
                            case '@':
                                break;
                            default:
                                switch (cCharAt) {
                                    case '[':
                                    case '\\':
                                    case ']':
                                        break;
                                    default:
                                        if (!Character.isISOControl(cCharAt) && !Character.isWhitespace(cCharAt)) {
                                        }
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$closeResponseChannel$14() {
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            try {
                readableByteChannel.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.mResponseChannel = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$enterUserErrorState$3() {
        this.mNonfinalUserCallbackExceptionCount++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$errorSetting$8(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterCronetErrorState(th);
        }
    }

    static /* synthetic */ void lambda$executeOnExecutor$15(String str, Runnable runnable) {
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#executeOnExecutor " + str + " running callback");
        try {
            runnable.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireDisconnect$13() {
        OutputStreamDataSink outputStreamDataSink = this.mOutputStreamDataSink;
        if (outputStreamDataSink != null) {
            try {
                outputStreamDataSink.closeOutputChannel();
            } catch (IOException e) {
                Log.e(TAG, "Exception when closing OutputChannel", e);
            }
        }
        HttpURLConnection httpURLConnection = this.mCurrentUrlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mCurrentUrlConnection = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireGetHeaders$4() throws Exception {
        List<String> list;
        if (this.mCurrentUrlConnection == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        String headerField = "http/1.1";
        int i = 0;
        while (true) {
            String headerFieldKey = this.mCurrentUrlConnection.getHeaderFieldKey(i);
            if (headerFieldKey == null) {
                break;
            }
            if (X_ANDROID_SELECTED_TRANSPORT.equalsIgnoreCase(headerFieldKey)) {
                headerField = this.mCurrentUrlConnection.getHeaderField(i);
            }
            if (!headerFieldKey.startsWith(X_ANDROID)) {
                arrayList.add(new AbstractMap.SimpleEntry(headerFieldKey, this.mCurrentUrlConnection.getHeaderField(i)));
            }
            i++;
        }
        int responseCode = this.mCurrentUrlConnection.getResponseCode();
        UrlResponseInfoImpl urlResponseInfoImpl = new UrlResponseInfoImpl(new ArrayList(this.mUrlChain), responseCode, this.mCurrentUrlConnection.getResponseMessage(), Collections.unmodifiableList(arrayList), false, headerField, "", 0L);
        if (responseCode >= 300 && responseCode < 400 && (list = urlResponseInfoImpl.getAllHeaders().get(FirebaseAnalytics.Param.LOCATION)) != null) {
            fireRedirectReceived(list.get(0), urlResponseInfoImpl);
            return;
        }
        this.mUrlResponseInfo = urlResponseInfoImpl;
        fireCloseUploadDataProvider();
        if (responseCode < 400) {
            this.mResponseChannel = InputStreamChannel.wrap(this.mCurrentUrlConnection.getInputStream());
            this.mCallbackAsync.onResponseStarted();
        } else {
            InputStream errorStream = this.mCurrentUrlConnection.getErrorStream();
            this.mResponseChannel = errorStream == null ? null : InputStreamChannel.wrap(errorStream);
            this.mCallbackAsync.onResponseStarted();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireOpenConnection$7() throws Exception {
        if (this.mState.get() == 8) {
            return;
        }
        URL url = new URL(this.mCurrentUrl);
        HttpURLConnection httpURLConnection = this.mCurrentUrlConnection;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.mCurrentUrlConnection = null;
        }
        long j = this.mNetworkHandle;
        if (j == -1) {
            this.mCurrentUrlConnection = (HttpURLConnection) url.openConnection();
        } else {
            Network networkFromHandle = getNetworkFromHandle(j);
            if (networkFromHandle == null) {
                throw new NetworkExceptionImpl("Network bound to request not found", 9, -4);
            }
            this.mCurrentUrlConnection = (HttpURLConnection) networkFromHandle.openConnection(url);
        }
        this.mCurrentUrlConnection.setInstanceFollowRedirects(false);
        if (!this.mRequestHeaders.containsKey("User-Agent")) {
            this.mRequestHeaders.put("User-Agent", this.mUserAgent);
        }
        for (Map.Entry<String, String> entry : this.mRequestHeaders.entrySet()) {
            this.mCurrentUrlConnection.setRequestProperty(entry.getKey(), entry.getValue());
        }
        this.mCurrentUrlConnection.setRequestMethod(this.mInitialMethod);
        if (this.mUploadDataProvider != null) {
            OutputStreamDataSink outputStreamDataSink = new OutputStreamDataSink(this.mUploadExecutor, this.mExecutor, this.mCurrentUrlConnection, this.mUploadDataProvider);
            this.mOutputStreamDataSink = outputStreamDataSink;
            outputStreamDataSink.start(this.mUrlChain.size() == 1);
        } else {
            this.mAdditionalStatusDetails = 10;
            this.mCurrentUrlConnection.connect();
            fireGetHeaders();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireRedirectReceived$5(UrlResponseInfo urlResponseInfo) {
        this.mCallbackAsync.onRedirectReceived(urlResponseInfo, this.mPendingRedirectUrl);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fireRedirectReceived$6(String str, final UrlResponseInfo urlResponseInfo) {
        String string = URI.create(this.mCurrentUrl).resolve(str).toString();
        this.mPendingRedirectUrl = string;
        this.mUrlChain.add(string);
        transitionStates(2, 3, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fireRedirectReceived$5(urlResponseInfo);
            }
        });
    }

    static /* synthetic */ void lambda$new$0(int i, boolean z, int i2, Runnable runnable) {
        int threadStatsTag = TrafficStats.getThreadStatsTag();
        TrafficStats.setThreadStatsTag(i);
        if (z) {
            ThreadStatsUid.set(i2);
        }
        try {
            runnable.run();
        } finally {
            if (z) {
                ThreadStatsUid.clear();
            }
            TrafficStats.setThreadStatsTag(threadStatsTag);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$read$11(ByteBuffer byteBuffer) throws Exception {
        int i;
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            this.mReadCount++;
            i = readableByteChannel.read(byteBuffer);
        } else {
            i = -1;
        }
        processReadResult(i, byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$read$12(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        executeOnExecutor(errorSetting(checkedRunnable), "read");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$start$2() {
        this.mUrlChain.add(this.mCurrentUrl);
        fireOpenConnection();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$uploadErrorSetting$10(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterUploadErrorState(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$userErrorSetting$9(JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        try {
            checkedRunnable.run();
        } catch (Throwable th) {
            enterUserErrorState(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onFinalCallbackException(String str, Exception exc) {
        Log.e(TAG, "Exception in " + str + " method", exc);
        this.mFinalUserCallbackThrew = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long parseContentLengthString(String str) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    private void processReadResult(int i, ByteBuffer byteBuffer) throws IOException {
        if (i != -1) {
            this.mCallbackAsync.onReadCompleted(this.mUrlResponseInfo, byteBuffer);
            return;
        }
        ReadableByteChannel readableByteChannel = this.mResponseChannel;
        if (readableByteChannel != null) {
            readableByteChannel.close();
        }
        if (this.mState.compareAndSet(5, 7)) {
            fireDisconnect();
            this.mCallbackAsync.onSucceeded(this.mUrlResponseInfo);
        }
    }

    private void setHeaders(ArrayList<Map.Entry<String, String>> arrayList) {
        for (Map.Entry<String, String> entry : arrayList) {
            if (!isValidHeaderName(entry.getKey()) || entry.getValue().contains("\r\n")) {
                throw new IllegalArgumentException("Invalid header with headername: " + entry.getKey());
            }
            this.mRequestHeaders.put(entry.getKey(), entry.getValue());
        }
    }

    private boolean setTerminalState(int i) {
        int i2;
        do {
            i2 = this.mState.get();
            if (i2 == 0) {
                throw new IllegalStateException("Can't enter error state before start");
            }
            if (i2 == 6 || i2 == 7 || i2 == 8) {
                return false;
            }
        } while (!this.mState.compareAndSet(i2, i));
        return true;
    }

    private void transitionStates(int i, int i2, Runnable runnable) {
        if (!this.mState.compareAndSet(i, i2)) {
            int i3 = this.mState.get();
            if (i3 == 8 || i3 == 6) {
                return;
            }
            throw new IllegalStateException("Invalid state transition - expected " + JavaUrlRequestUtils.stateToString(i) + " but was " + JavaUrlRequestUtils.stateToString(i3));
        }
        ScopedSysTraceEvent scopedSysTraceEventScoped = ScopedSysTraceEvent.scoped("Cronet JavaUrlRequest#transitionStates " + JavaUrlRequestUtils.stateToString(i) + " -> " + JavaUrlRequestUtils.stateToString(i2));
        try {
            runnable.run();
            if (scopedSysTraceEventScoped != null) {
                scopedSysTraceEventScoped.close();
            }
        } catch (Throwable th) {
            if (scopedSysTraceEventScoped != null) {
                try {
                    scopedSysTraceEventScoped.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable uploadErrorSetting(final JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$uploadErrorSetting$10(checkedRunnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Runnable userErrorSetting(final JavaUrlRequestUtils.CheckedRunnable checkedRunnable) {
        return new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$userErrorSetting$9(checkedRunnable);
            }
        };
    }

    @Override // org.chromium.net.UrlRequest
    public void cancel() {
        int andSet = this.mState.getAndSet(8);
        if (andSet == 1 || andSet == 2 || andSet == 3 || andSet == 4 || andSet == 5) {
            fireDisconnect();
            fireCloseUploadDataProvider();
            this.mCallbackAsync.onCanceled(this.mUrlResponseInfo);
        }
    }

    @Override // org.chromium.net.UrlRequest
    public void followRedirect() {
        transitionStates(3, 1, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest.1
            @Override // java.lang.Runnable
            public void run() {
                JavaUrlRequest javaUrlRequest = JavaUrlRequest.this;
                javaUrlRequest.mCurrentUrl = javaUrlRequest.mPendingRedirectUrl;
                JavaUrlRequest.this.mPendingRedirectUrl = null;
                JavaUrlRequest.this.fireOpenConnection();
            }
        });
    }

    @Override // org.chromium.net.UrlRequest
    public void getStatus(UrlRequest.StatusListener statusListener) {
        int i = this.mState.get();
        int i2 = this.mAdditionalStatusDetails;
        switch (i) {
            case 0:
            case 6:
            case 7:
            case 8:
                i2 = -1;
                break;
            case 1:
                break;
            case 2:
            case 3:
            case 4:
                i2 = 0;
                break;
            case 5:
                i2 = 14;
                break;
            default:
                throw new IllegalStateException("Switch is exhaustive: " + i);
        }
        this.mCallbackAsync.sendStatus(new VersionSafeCallbacks.UrlRequestStatusListener(statusListener), i2);
    }

    @Override // org.chromium.net.UrlRequest
    public boolean isDone() {
        int i = this.mState.get();
        return i == 7 || i == 6 || i == 8;
    }

    @Override // org.chromium.net.UrlRequest
    public void read(final ByteBuffer byteBuffer) {
        Preconditions.checkDirect(byteBuffer);
        Preconditions.checkHasRemaining(byteBuffer);
        final JavaUrlRequestUtils.CheckedRunnable checkedRunnable = new JavaUrlRequestUtils.CheckedRunnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda15
            @Override // org.chromium.net.impl.JavaUrlRequestUtils.CheckedRunnable
            public final void run() throws Exception {
                this.f$0.lambda$read$11(byteBuffer);
            }
        };
        transitionStates(4, 5, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$read$12(checkedRunnable);
            }
        });
    }

    @Override // org.chromium.net.UrlRequest
    public void start() {
        this.mAdditionalStatusDetails = 10;
        this.mEngine.incrementActiveRequestCount();
        transitionStates(0, 1, new Runnable() { // from class: org.chromium.net.impl.JavaUrlRequest$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$start$2();
            }
        });
    }
}
