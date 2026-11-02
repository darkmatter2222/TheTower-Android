package com.unity.androidnotifications;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationChannelGroup;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.service.notification.StatusBarNotification;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.unity3d.player.UnityPlayer;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public class UnityNotificationManager extends BroadcastReceiver {
    public static final String KEY_BIG_CONTENT_DESCRIPTION = "com.unity.BigContentDescription";
    public static final String KEY_BIG_CONTENT_TITLE = "com.unity.BigContentTytle";
    public static final String KEY_BIG_LARGE_ICON = "com.unity.BigLargeIcon";
    public static final String KEY_BIG_PICTURE = "com.unity.BigPicture";
    public static final String KEY_BIG_SHOW_WHEN_COLLAPSED = "com.unity.BigShowWhenCollapsed";
    public static final String KEY_BIG_SUMMARY_TEXT = "com.unity.BigSummaryText";
    public static final String KEY_CHANNEL_ID = "channelID";
    public static final String KEY_FIRE_TIME = "fireTime";
    public static final String KEY_ID = "id";
    public static final String KEY_INTENT_DATA = "data";
    public static final String KEY_LARGE_ICON = "largeIcon";
    public static final String KEY_NOTIFICATION = "unityNotification";
    public static final String KEY_NOTIFICATION_DISMISSED = "com.unity.NotificationDismissed";
    public static final String KEY_NOTIFICATION_ID = "com.unity.NotificationID";
    public static final String KEY_REPEAT_INTERVAL = "repeatInterval";
    public static final String KEY_SHOW_IN_FOREGROUND = "com.unity.showInForeground";
    public static final String KEY_SMALL_ICON = "smallIcon";
    static final String NOTIFICATION_CHANNELS_SHARED_PREFS = "UNITY_NOTIFICATIONS";
    static final String NOTIFICATION_CHANNELS_SHARED_PREFS_KEY = "ChannelIDs";
    static final String NOTIFICATION_IDS_SHARED_PREFS = "UNITY_STORED_NOTIFICATION_IDS";
    static final String NOTIFICATION_IDS_SHARED_PREFS_KEY = "UNITY_NOTIFICATION_IDS";
    private static final int PERMISSION_STATUS_ALLOWED = 1;
    private static final int PERMISSION_STATUS_DENIED = 2;
    private static final int PERMISSION_STATUS_NOTIFICATIONS_BLOCKED_FOR_APP = 5;
    static final String TAG_UNITY = "UnityNotifications";
    static UnityNotificationManager mUnityNotificationManager;
    private UnityNotificationBackgroundThread mBackgroundThread;
    private NotificationCallback mNotificationCallback;
    private Random mRandom;
    private ConcurrentHashMap<Integer, Notification.Builder> mScheduledNotifications;
    private HashSet<Integer> mVisibleNotifications;
    private Context mContext = null;
    private Activity mActivity = null;
    private Class mOpenActivity = null;
    private int mExactSchedulingSetting = -1;

    private Notification buildNotificationForSending(Class cls, Notification.Builder builder) {
        int i = builder.getExtras().getInt("id", -1);
        Intent intent = new Intent(this.mContext, (Class<?>) cls);
        intent.addFlags(805306368);
        intent.putExtra(KEY_NOTIFICATION_ID, i);
        builder.setContentIntent(getActivityPendingIntent(i, intent, 0));
        finalizeNotificationForDisplay(builder);
        return builder.build();
    }

    private Intent buildNotificationIntent() {
        Intent intent = new Intent(this.mContext, (Class<?>) UnityNotificationManager.class);
        intent.setFlags(268468224);
        return intent;
    }

    private boolean canScheduleExactAlarms(AlarmManager alarmManager) {
        Bundle appMetadata;
        if (this.mExactSchedulingSetting < 0 && (appMetadata = getAppMetadata()) != null) {
            this.mExactSchedulingSetting = appMetadata.getInt("com.unity.androidnotifications.exact_scheduling", 1);
        }
        if (this.mExactSchedulingSetting == 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 31) {
            return true;
        }
        return alarmManager.canScheduleExactAlarms();
    }

    private Notification.Builder deserializeNotificationBuilder(Integer num) {
        Object objDeserializeNotification = UnityNotificationUtilities.deserializeNotification(this.mContext, this.mContext.getSharedPreferences(getSharedPrefsNameByNotificationId(num.toString()), 0));
        if (objDeserializeNotification == null) {
            return null;
        }
        return objDeserializeNotification instanceof Notification ? UnityNotificationUtilities.recoverBuilder(this.mContext, (Notification) objDeserializeNotification) : (Notification.Builder) objDeserializeNotification;
    }

    private void finalizeNotificationForDisplay(Notification.Builder builder) {
        String string = builder.getExtras().getString(KEY_SMALL_ICON);
        Object iconForUri = getIconForUri(string);
        if (iconForUri != null) {
            builder.setSmallIcon((Icon) iconForUri);
        } else {
            int iFindResourceIdInContextByName = UnityNotificationUtilities.findResourceIdInContextByName(this.mContext, string);
            if (iFindResourceIdInContextByName == 0) {
                iFindResourceIdInContextByName = this.mContext.getApplicationInfo().icon;
            }
            builder.setSmallIcon(iFindResourceIdInContextByName);
        }
        Object icon = getIcon(builder.getExtras().getString(KEY_LARGE_ICON));
        if (icon != null) {
            if (icon instanceof Icon) {
                builder.setLargeIcon((Icon) icon);
            } else {
                builder.setLargeIcon((Bitmap) icon);
            }
        }
        setupBigPictureStyle(builder);
    }

    private Set<String> findInvalidNotificationIds(Set<String> set) {
        Intent intentBuildNotificationIntent = buildNotificationIntent();
        HashSet hashSet = new HashSet();
        for (String str : set) {
            if (getBroadcastPendingIntent(Integer.valueOf(str).intValue(), intentBuildNotificationIntent, 536870912) == null) {
                hashSet.add(str);
            }
        }
        for (StatusBarNotification statusBarNotification : getNotificationManager().getActiveNotifications()) {
            hashSet.remove(String.valueOf(statusBarNotification.getId()));
        }
        if (UnityPlayer.currentActivity != null) {
            Intent intent = UnityPlayer.currentActivity.getIntent();
            if (intent.hasExtra(KEY_NOTIFICATION_ID)) {
                hashSet.remove(String.valueOf(intent.getExtras().getInt(KEY_NOTIFICATION_ID)));
            }
        }
        return hashSet;
    }

    private int generateUniqueId() {
        int iNextInt = 0;
        do {
            iNextInt += this.mRandom.nextInt(1000);
        } while (this.mScheduledNotifications.containsKey(Integer.valueOf(iNextInt)));
        return iNextInt;
    }

    private PendingIntent getActivityPendingIntent(int i, Intent intent, int i2) {
        return PendingIntent.getActivity(this.mContext, i, intent, i2 | AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
    }

    private Bundle getAppMetadata() {
        try {
            return this.mContext.getPackageManager().getApplicationInfo(this.mContext.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private PendingIntent getBroadcastPendingIntent(int i, Intent intent, int i2) {
        return PendingIntent.getBroadcast(this.mContext, i, intent, i2 | AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
    }

    private Object getIcon(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (str.charAt(0) == '/') {
            return BitmapFactory.decodeFile(str);
        }
        Object iconForUri = getIconForUri(str);
        return iconForUri != null ? iconForUri : getIconFromResources(str, false);
    }

    private Object getIconForUri(String str) {
        if (str == null || str.length() == 0 || str.indexOf("://") <= 0) {
            return null;
        }
        return Icon.createWithContentUri(str);
    }

    private Object getIconFromResources(String str, boolean z) {
        int iFindResourceIdInContextByName = UnityNotificationUtilities.findResourceIdInContextByName(this.mContext, str);
        if (iFindResourceIdInContextByName != 0) {
            return !z ? Icon.createWithResource(this.mContext, iFindResourceIdInContextByName) : BitmapFactory.decodeResource(this.mContext.getResources(), iFindResourceIdInContextByName);
        }
        return null;
    }

    public static String getNotificationChannelId(Notification notification) {
        return notification.getChannelId();
    }

    public static Integer getNotificationColor(Notification notification) {
        if (notification.extras.containsKey(NotificationCompat.EXTRA_COLORIZED)) {
            return Integer.valueOf(notification.color);
        }
        return null;
    }

    public static int getNotificationGroupAlertBehavior(Notification notification) {
        return notification.getGroupAlertBehavior();
    }

    public static synchronized UnityNotificationManager getNotificationManagerImpl(Activity activity, NotificationCallback notificationCallback) {
        if (mUnityNotificationManager == null) {
            mUnityNotificationManager = new UnityNotificationManager();
        }
        mUnityNotificationManager.initialize(activity, notificationCallback);
        return mUnityNotificationManager;
    }

    static synchronized UnityNotificationManager getNotificationManagerImpl(Context context) {
        if (mUnityNotificationManager == null) {
            UnityNotificationManager unityNotificationManager = new UnityNotificationManager();
            mUnityNotificationManager = unityNotificationManager;
            unityNotificationManager.mVisibleNotifications = new HashSet<>();
            mUnityNotificationManager.mScheduledNotifications = new ConcurrentHashMap<>();
        }
        mUnityNotificationManager.mContext = context.getApplicationContext();
        return mUnityNotificationManager;
    }

    private Object getNotificationOrBuilderForIntent(Intent intent) {
        Object notificationOrIdForIntent = getNotificationOrIdForIntent(intent);
        if (!(notificationOrIdForIntent instanceof Integer)) {
            return notificationOrIdForIntent;
        }
        Integer num = (Integer) notificationOrIdForIntent;
        Notification.Builder builder = this.mScheduledNotifications.get(num);
        return builder == null ? deserializeNotificationBuilder(num) : builder;
    }

    private Object getNotificationOrIdForIntent(Intent intent) {
        if (intent.hasExtra(KEY_NOTIFICATION_ID)) {
            return Integer.valueOf(intent.getExtras().getInt(KEY_NOTIFICATION_ID));
        }
        if (intent.hasExtra(KEY_NOTIFICATION)) {
            return intent.getParcelableExtra(KEY_NOTIFICATION);
        }
        return null;
    }

    private synchronized Set<String> getScheduledNotificationIDs() {
        return this.mContext.getSharedPreferences(NOTIFICATION_IDS_SHARED_PREFS, 0).getStringSet(NOTIFICATION_IDS_SHARED_PREFS_KEY, new HashSet());
    }

    private static String getSharedPrefsNameByChannelId(String str) {
        return String.format("unity_notification_channel_%s", str);
    }

    static String getSharedPrefsNameByNotificationId(String str) {
        return String.format("u_notification_data_%s", str);
    }

    private void initialize(Activity activity, NotificationCallback notificationCallback) {
        this.mContext = activity.getApplicationContext();
        this.mActivity = activity;
        this.mNotificationCallback = notificationCallback;
        if (this.mScheduledNotifications == null) {
            this.mScheduledNotifications = new ConcurrentHashMap<>();
        }
        UnityNotificationBackgroundThread unityNotificationBackgroundThread = this.mBackgroundThread;
        if (unityNotificationBackgroundThread == null || !unityNotificationBackgroundThread.isAlive()) {
            this.mBackgroundThread = new UnityNotificationBackgroundThread(this, this.mScheduledNotifications);
        }
        if (this.mRandom == null) {
            this.mRandom = new Random();
        }
        if (this.mVisibleNotifications == null) {
            this.mVisibleNotifications = new HashSet<>();
        }
        getAppMetadata();
        Class<?> openAppActivity = UnityNotificationUtilities.getOpenAppActivity(this.mContext);
        this.mOpenActivity = openAppActivity;
        if (openAppActivity == null) {
            throw new RuntimeException("Failed to determine Activity to be opened when tapping notification");
        }
        if (this.mBackgroundThread.isAlive()) {
            return;
        }
        this.mBackgroundThread.start();
    }

    private static boolean isInForeground() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo.importance == 100 || runningAppProcessInfo.importance == 200;
    }

    private Bitmap loadBitmap(String str) {
        try {
            return BitmapFactory.decodeStream(this.mContext.getContentResolver().openInputStream(Uri.parse(str)));
        } catch (Exception e) {
            Log.e(TAG_UNITY, "Failed to load image " + str, e);
            return null;
        }
    }

    private static NotificationChannelWrapper notificationChannelToWrapper(Object obj) {
        NotificationChannel notificationChannel = (NotificationChannel) obj;
        NotificationChannelWrapper notificationChannelWrapper = new NotificationChannelWrapper();
        notificationChannelWrapper.id = notificationChannel.getId();
        notificationChannelWrapper.name = notificationChannel.getName().toString();
        notificationChannelWrapper.importance = notificationChannel.getImportance();
        notificationChannelWrapper.description = notificationChannel.getDescription();
        notificationChannelWrapper.enableLights = notificationChannel.shouldShowLights();
        notificationChannelWrapper.enableVibration = notificationChannel.shouldVibrate();
        notificationChannelWrapper.canBypassDnd = notificationChannel.canBypassDnd();
        notificationChannelWrapper.canShowBadge = notificationChannel.canShowBadge();
        notificationChannelWrapper.vibrationPattern = notificationChannel.getVibrationPattern();
        notificationChannelWrapper.lockscreenVisibility = notificationChannel.getLockscreenVisibility();
        notificationChannelWrapper.group = notificationChannel.getGroup();
        return notificationChannelWrapper;
    }

    private void notify(int i, Notification notification) {
        boolean z = notification.extras.getBoolean(KEY_SHOW_IN_FOREGROUND, true);
        if (!isInForeground() || z) {
            getNotificationManager().notify(i, notification);
        }
        if (notification.extras.getLong(KEY_REPEAT_INTERVAL, -1L) <= 0) {
            this.mScheduledNotifications.remove(Integer.valueOf(i));
            cancelPendingNotificationIntent(i);
        }
        try {
            NotificationCallback notificationCallback = this.mNotificationCallback;
            if (notificationCallback != null) {
                notificationCallback.onSentNotification(notification);
            }
        } catch (RuntimeException unused) {
            Log.w(TAG_UNITY, "Can not invoke OnNotificationReceived event when the app is not running!");
        }
    }

    private void scheduleNotificationIntentAlarm(long j, long j2, PendingIntent pendingIntent) {
        AlarmManager alarmManager = (AlarmManager) this.mContext.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (j > 0) {
            alarmManager.setInexactRepeating(0, j2, j, pendingIntent);
        } else if (canScheduleExactAlarms(alarmManager)) {
            alarmManager.setExactAndAllowWhileIdle(0, j2, pendingIntent);
        } else {
            alarmManager.set(0, j2, pendingIntent);
        }
    }

    public static void setNotificationColor(Notification.Builder builder, int i) {
        if (i != 0) {
            builder.setColor(i);
            builder.setColorized(true);
        }
    }

    public static void setNotificationGroupAlertBehavior(Notification.Builder builder, int i) {
        builder.setGroupAlertBehavior(i);
    }

    public static void setNotificationIcon(Notification.Builder builder, String str, String str2) {
        if (str2 == null || (str2.length() == 0 && builder.getExtras().getString(str) != null)) {
            builder.getExtras().remove(str);
        } else {
            builder.getExtras().putString(str, str2);
        }
    }

    public static void setNotificationUsesChronometer(Notification.Builder builder, boolean z) {
        builder.setUsesChronometer(z);
    }

    private void setupBigPictureStyle(Notification.Builder builder) {
        Bundle extras = builder.getExtras();
        String string = extras.getString(KEY_BIG_PICTURE);
        if (string == null) {
            return;
        }
        Notification.BigPictureStyle bigPictureStyle = new Notification.BigPictureStyle();
        Object icon = getIcon(extras.getString(KEY_BIG_LARGE_ICON));
        if (icon != null) {
            if (icon instanceof Icon) {
                bigPictureStyle.bigLargeIcon((Icon) icon);
            } else {
                bigPictureStyle.bigLargeIcon((Bitmap) icon);
            }
        }
        if (string.charAt(0) == '/') {
            bigPictureStyle.bigPicture(BitmapFactory.decodeFile(string));
        } else if (string.indexOf("://") <= 0) {
            Object iconFromResources = getIconFromResources(string, Build.VERSION.SDK_INT < 31);
            if (Build.VERSION.SDK_INT >= 31 && (iconFromResources instanceof Icon)) {
                bigPictureStyle.bigPicture((Icon) iconFromResources);
            } else if (iconFromResources instanceof Bitmap) {
                bigPictureStyle.bigPicture((Bitmap) iconFromResources);
            }
        } else if (Build.VERSION.SDK_INT >= 31) {
            bigPictureStyle.bigPicture(Icon.createWithContentUri(string));
        } else {
            Bitmap bitmapLoadBitmap = loadBitmap(string);
            if (bitmapLoadBitmap != null) {
                bigPictureStyle.bigPicture(bitmapLoadBitmap);
            }
        }
        bigPictureStyle.setBigContentTitle(extras.getString(KEY_BIG_CONTENT_TITLE));
        bigPictureStyle.setSummaryText(extras.getString(KEY_BIG_SUMMARY_TEXT));
        if (Build.VERSION.SDK_INT >= 31) {
            bigPictureStyle.setContentDescription(extras.getString(KEY_BIG_CONTENT_DESCRIPTION));
            bigPictureStyle.showBigPictureWhenCollapsed(extras.getBoolean(KEY_BIG_SHOW_WHEN_COLLAPSED, false));
        }
        builder.setStyle(bigPictureStyle);
    }

    private void showNotification(Intent intent) {
        Object notificationOrIdForIntent = getNotificationOrIdForIntent(intent);
        if (notificationOrIdForIntent == null) {
            return;
        }
        if (notificationOrIdForIntent instanceof Notification) {
            Notification notification = (Notification) notificationOrIdForIntent;
            notify(notification.extras.getInt("id", -1), notification);
            return;
        }
        final Integer num = (Integer) notificationOrIdForIntent;
        Notification.Builder builder = this.mScheduledNotifications.get(num);
        if (builder != null) {
            notify(num.intValue(), builder);
        } else {
            AsyncTask.execute(new Runnable() { // from class: com.unity.androidnotifications.UnityNotificationManager$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.m2719x329bd7ea(num);
                }
            });
        }
    }

    public int areNotificationsEnabled() {
        boolean z = Build.VERSION.SDK_INT < 33 || this.mContext.checkCallingOrSelfPermission("android.permission.POST_NOTIFICATIONS") == 0;
        boolean zAreNotificationsEnabled = getNotificationManager().areNotificationsEnabled();
        if (z) {
            return zAreNotificationsEnabled ? 1 : 5;
        }
        return 2;
    }

    public boolean canScheduleExactAlarms() {
        return canScheduleExactAlarms((AlarmManager) this.mContext.getSystemService(NotificationCompat.CATEGORY_ALARM));
    }

    public void cancelAllNotifications() {
        getNotificationManager().cancelAll();
    }

    public void cancelAllPendingNotificationIntents() {
        this.mBackgroundThread.enqueueCancelAllNotifications();
    }

    public void cancelDisplayedNotification(int i) {
        getNotificationManager().cancel(i);
    }

    public void cancelPendingNotification(int i) {
        this.mBackgroundThread.enqueueCancelNotification(i);
    }

    void cancelPendingNotificationIntent(int i) {
        PendingIntent broadcastPendingIntent = getBroadcastPendingIntent(i, new Intent(this.mContext, (Class<?>) UnityNotificationManager.class), 536870912);
        if (broadcastPendingIntent != null) {
            ((AlarmManager) this.mContext.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(broadcastPendingIntent);
            broadcastPendingIntent.cancel();
        }
    }

    public boolean checkIfPendingNotificationIsRegistered(int i) {
        return getBroadcastPendingIntent(i, new Intent(this.mActivity, (Class<?>) UnityNotificationManager.class), 536870912) != null;
    }

    public int checkNotificationStatus(int i) {
        for (StatusBarNotification statusBarNotification : getNotificationManager().getActiveNotifications()) {
            if (i == statusBarNotification.getId()) {
                return 2;
            }
        }
        return (this.mScheduledNotifications.containsKey(Integer.valueOf(i)) || checkIfPendingNotificationIsRegistered(i)) ? 1 : 0;
    }

    public Notification.Builder createNotificationBuilder(String str) {
        return new Notification.Builder(this.mContext, str);
    }

    synchronized void deleteExpiredNotificationIntent(String str) {
        this.mContext.getSharedPreferences(getSharedPrefsNameByNotificationId(str), 0).edit().clear().apply();
    }

    public void deleteNotificationChannel(String str) {
        getNotificationManager().deleteNotificationChannel(str);
    }

    public void deleteNotificationChannelGroup(String str) {
        if (str == null) {
            return;
        }
        getNotificationManager().deleteNotificationChannelGroup(str);
    }

    public NotificationChannelWrapper getNotificationChannel(String str) {
        NotificationChannel notificationChannel = getNotificationManagerImpl(this.mContext).getNotificationManager().getNotificationChannel(str);
        if (notificationChannel == null) {
            return null;
        }
        return notificationChannelToWrapper(notificationChannel);
    }

    public NotificationChannelWrapper[] getNotificationChannels() {
        List<NotificationChannel> notificationChannels = getNotificationManager().getNotificationChannels();
        if (notificationChannels.size() == 0) {
            return null;
        }
        NotificationChannelWrapper[] notificationChannelWrapperArr = new NotificationChannelWrapper[notificationChannels.size()];
        Iterator<NotificationChannel> it = notificationChannels.iterator();
        int i = 0;
        while (it.hasNext()) {
            notificationChannelWrapperArr[i] = notificationChannelToWrapper(it.next());
            i++;
        }
        return notificationChannelWrapperArr;
    }

    public Notification getNotificationFromIntent(Intent intent) {
        if (intent.hasExtra(KEY_NOTIFICATION_ID)) {
            int i = intent.getExtras().getInt(KEY_NOTIFICATION_ID);
            for (StatusBarNotification statusBarNotification : getNotificationManager().getActiveNotifications()) {
                if (statusBarNotification.getId() == i) {
                    return statusBarNotification.getNotification();
                }
            }
        }
        Object notificationOrBuilderForIntent = getNotificationOrBuilderForIntent(intent);
        if (notificationOrBuilderForIntent == null) {
            return null;
        }
        return notificationOrBuilderForIntent instanceof Notification ? (Notification) notificationOrBuilderForIntent : ((Notification.Builder) notificationOrBuilderForIntent).build();
    }

    public NotificationManager getNotificationManager() {
        return (NotificationManager) this.mContext.getSystemService("notification");
    }

    public int getTargetSdk() {
        return this.mContext.getApplicationInfo().targetSdkVersion;
    }

    /* JADX INFO: renamed from: lambda$showNotification$0$com-unity-androidnotifications-UnityNotificationManager, reason: not valid java name */
    /* synthetic */ void m2719x329bd7ea(Integer num) {
        Notification.Builder builderDeserializeNotificationBuilder = deserializeNotificationBuilder(num);
        if (builderDeserializeNotificationBuilder == null) {
            Log.e(TAG_UNITY, "Failed to recover builder, can't send notification");
        } else {
            notify(num.intValue(), builderDeserializeNotificationBuilder);
        }
    }

    synchronized List<Notification.Builder> loadSavedNotifications() {
        ArrayList arrayList;
        Set<String> scheduledNotificationIDs = getScheduledNotificationIDs();
        arrayList = new ArrayList();
        HashSet<String> hashSet = new HashSet();
        for (String str : scheduledNotificationIDs) {
            Object objDeserializeNotification = UnityNotificationUtilities.deserializeNotification(this.mContext, this.mContext.getSharedPreferences(getSharedPrefsNameByNotificationId(str), 0));
            Notification.Builder builderRecoverBuilder = objDeserializeNotification != null ? objDeserializeNotification instanceof Notification.Builder ? (Notification.Builder) objDeserializeNotification : UnityNotificationUtilities.recoverBuilder(this.mContext, (Notification) objDeserializeNotification) : null;
            if (builderRecoverBuilder != null) {
                arrayList.add(builderRecoverBuilder);
            } else {
                hashSet.add(str);
            }
        }
        if (hashSet.size() > 0) {
            HashSet hashSet2 = new HashSet(scheduledNotificationIDs);
            for (String str2 : hashSet) {
                hashSet2.remove(str2);
                deleteExpiredNotificationIntent(str2);
            }
            saveScheduledNotificationIDs(hashSet2);
        }
        return arrayList;
    }

    void notify(int i, Notification.Builder builder) {
        Class<?> openAppActivity = this.mOpenActivity;
        if (openAppActivity == null && (openAppActivity = UnityNotificationUtilities.getOpenAppActivity(this.mContext)) == null) {
            Log.e(TAG_UNITY, "Activity not found, cannot show notification");
            return;
        }
        Notification notificationBuildNotificationForSending = buildNotificationForSending(openAppActivity, builder);
        if (notificationBuildNotificationForSending != null) {
            notify(i, notificationBuildNotificationForSending);
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        getNotificationManagerImpl(context).onReceive(intent);
    }

    public void onReceive(Intent intent) {
        showNotification(intent);
    }

    void performNotificationHousekeeping(Set<String> set) {
        Log.d(TAG_UNITY, "Checking for invalid notification IDs still hanging around");
        Set<String> setFindInvalidNotificationIds = findInvalidNotificationIds(set);
        HashSet hashSet = new HashSet(set);
        for (String str : setFindInvalidNotificationIds) {
            hashSet.remove(str);
            this.mScheduledNotifications.remove(str);
        }
        Iterator<String> it = setFindInvalidNotificationIds.iterator();
        while (it.hasNext()) {
            deleteExpiredNotificationIntent(it.next());
        }
    }

    void performNotificationScheduling(int i, Notification.Builder builder, boolean z) {
        Bundle extras = builder.getExtras();
        long j = extras.getLong(KEY_REPEAT_INTERVAL, -1L);
        long j2 = extras.getLong(KEY_FIRE_TIME, -1L);
        boolean z2 = j2 - Calendar.getInstance().getTime().getTime() < 1000;
        if (!z2 || j > 0) {
            if (z2) {
                j2 += j;
            }
            Intent intentBuildNotificationIntent = buildNotificationIntent();
            if (intentBuildNotificationIntent != null) {
                saveNotification(builder.build(), z);
                scheduleAlarmWithNotification(builder, intentBuildNotificationIntent, j2);
            }
        }
        if (z2) {
            notify(i, buildNotificationForSending(this.mOpenActivity, builder));
        }
    }

    public void registerNotificationChannel(String str, String str2, int i, String str3, boolean z, boolean z2, boolean z3, boolean z4, long[] jArr, int i2, String str4) {
        NotificationChannel notificationChannel = new NotificationChannel(str, str2, i);
        notificationChannel.setDescription(str3);
        notificationChannel.enableLights(z);
        notificationChannel.enableVibration(z2);
        notificationChannel.setBypassDnd(z3);
        notificationChannel.setShowBadge(z4);
        notificationChannel.setVibrationPattern(jArr);
        notificationChannel.setLockscreenVisibility(i2);
        notificationChannel.setGroup(str4);
        getNotificationManager().createNotificationChannel(notificationChannel);
    }

    public void registerNotificationChannelGroup(String str, String str2, String str3) {
        NotificationChannelGroup notificationChannelGroup = new NotificationChannelGroup(str, str2);
        if (Build.VERSION.SDK_INT >= 28) {
            notificationChannelGroup.setDescription(str3);
        }
        getNotificationManager().createNotificationChannelGroup(notificationChannelGroup);
    }

    synchronized void saveNotification(Notification notification, boolean z) {
        UnityNotificationUtilities.serializeNotification(this.mContext.getSharedPreferences(getSharedPrefsNameByNotificationId(Integer.toString(notification.extras.getInt("id", -1))), 0), notification, z);
    }

    synchronized void saveScheduledNotificationIDs(Set<String> set) {
        SharedPreferences.Editor editorClear = this.mContext.getSharedPreferences(NOTIFICATION_IDS_SHARED_PREFS, 0).edit().clear();
        editorClear.putStringSet(NOTIFICATION_IDS_SHARED_PREFS_KEY, set);
        editorClear.apply();
    }

    void scheduleAlarmWithNotification(Notification.Builder builder) {
        scheduleAlarmWithNotification(builder, buildNotificationIntent(), builder.getExtras().getLong(KEY_FIRE_TIME, 0L));
    }

    void scheduleAlarmWithNotification(Notification.Builder builder, Intent intent, long j) {
        Bundle extras = builder.getExtras();
        int i = extras.getInt("id", -1);
        long j2 = extras.getLong(KEY_REPEAT_INTERVAL, -1L);
        this.mScheduledNotifications.put(Integer.valueOf(i), builder);
        intent.putExtra(KEY_NOTIFICATION_ID, i);
        scheduleNotificationIntentAlarm(j2, j, getBroadcastPendingIntent(i, intent, 134217728));
    }

    public int scheduleNotification(Notification.Builder builder, boolean z) {
        int i;
        Bundle extras = builder.getExtras();
        if (extras.containsKey("id")) {
            i = builder.getExtras().getInt("id", -1);
        } else {
            int iGenerateUniqueId = generateUniqueId();
            extras.putInt("id", iGenerateUniqueId);
            i = iGenerateUniqueId;
        }
        this.mBackgroundThread.enqueueNotification(i, builder, z, this.mScheduledNotifications.putIfAbsent(Integer.valueOf(i), builder) == null);
        return i;
    }

    public void setupBigPictureStyle(Notification.Builder builder, String str, String str2, String str3, String str4, String str5, boolean z) {
        Bundle extras = builder.getExtras();
        if (str2 == null || str2.length() == 0) {
            return;
        }
        extras.putString(KEY_BIG_LARGE_ICON, str);
        extras.putString(KEY_BIG_PICTURE, str2);
        extras.putString(KEY_BIG_CONTENT_TITLE, str3);
        extras.putString(KEY_BIG_SUMMARY_TEXT, str5);
        extras.putString(KEY_BIG_CONTENT_DESCRIPTION, str4);
        extras.putBoolean(KEY_BIG_SHOW_WHEN_COLLAPSED, z);
    }

    public void showNotificationSettings(String str) {
        Intent intent;
        if (str == null || str.length() <= 0) {
            intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        } else {
            intent = new Intent("android.settings.CHANNEL_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.CHANNEL_ID", str);
        }
        intent.putExtra("android.provider.extra.APP_PACKAGE", this.mContext.getPackageName());
        intent.addFlags(268435456);
        this.mActivity.startActivity(intent);
    }
}
