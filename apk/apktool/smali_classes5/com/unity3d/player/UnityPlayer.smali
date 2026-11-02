.class public abstract Lcom/unity3d/player/UnityPlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/UnityPlayer$a;,
        Lcom/unity3d/player/UnityPlayer$b;
    }
.end annotation


# static fields
.field private static final ARCORE_ENABLE_METADATA_NAME:Ljava/lang/String; = "unity.arcore-enable"

.field private static final AUTO_REPORT_FULLY_DRAWN_ENABLE_METADATA_NAME:Ljava/lang/String; = "unity.auto-report-fully-drawn"

.field private static final AUTO_SET_GAME_STATE_ENABLE_METADATA_NAME:Ljava/lang/String; = "unity.auto-set-game-state"

.field private static final LAUNCH_FULLSCREEN:Ljava/lang/String; = "unity.launch-fullscreen"

.field private static final SPLASH_ENABLE_METADATA_NAME:Ljava/lang/String; = "unity.splash-enable"

.field private static final SPLASH_MODE_METADATA_NAME:Ljava/lang/String; = "unity.splash-mode"

.field public static currentActivity:Landroid/app/Activity;

.field public static currentContext:Landroid/content/Context;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field private mContextType:Lcom/unity3d/player/a/o;

.field mHandler:Landroid/os/Handler;

.field private mInitialScreenOrientation:I

.field private mIsFullscreen:Z

.field mNaturalOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field mQuitting:Z

.field mState:Lcom/unity3d/player/a/S;

.field private mVideoPlayerProxy:Lcom/unity3d/player/c1;

.field private m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

.field private m_AccessibilityDelegate:Lcom/unity3d/player/UnityAccessibilityDelegate;

.field m_AddPhoneCallListener:Z

.field private m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

.field private m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

.field private m_ClipboardManager:Landroid/content/ClipboardManager;

.field private m_Cursor:Lcom/unity3d/player/a/P;

.field private m_FakeListener:Lcom/unity3d/player/m0;

.field private m_FmodAndroidAudioManager:Lorg/fmod/FmodAndroidAudioManager;

.field private m_FrameLayout:Landroid/widget/FrameLayout;

.field private m_HFPStatus:Lcom/unity3d/player/HFPStatus;

.field private final m_MainThreadJobs:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private m_NetworkConnectivity:Lcom/unity3d/player/a/v;

.field private m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

.field private m_OrientationLockListener:Lcom/unity3d/player/OrientationLockListener;

.field private m_PermissionRequests:Ljava/util/HashMap;

.field m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$a;

.field private m_SplashScreen:Lcom/unity3d/player/a/K;

.field m_TelephonyManager:Landroid/telephony/TelephonyManager;

.field private m_UIThread:Ljava/lang/Thread;

.field protected m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

.field m_Window:Landroid/view/Window;

.field private prevConfig:Landroid/content/res/Configuration;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInitialScreenOrientation(Lcom/unity3d/player/UnityPlayer;)I
    .locals 0

    iget p0, p0, Lcom/unity3d/player/UnityPlayer;->mInitialScreenOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm_SplashScreen(Lcom/unity3d/player/UnityPlayer;)Lcom/unity3d/player/a/K;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/a/K;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmVideoPlayerProxy(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/c1;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/c1;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm_SplashScreen(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/a/K;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/a/K;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchFrameLayoutPadding(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->dispatchFrameLayoutPadding()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minvokeOnMainThread(Lcom/unity3d/player/UnityPlayer;Lcom/unity3d/player/UnityPlayer$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Lcom/unity3d/player/UnityPlayer$b;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnativeIsAutorotationOn(Lcom/unity3d/player/UnityPlayer;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeIsAutorotationOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smnativeSetLaunchURL(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/unity3d/player/UnityPlayer;->nativeSetLaunchURL(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 943
    new-instance v0, Lcom/unity3d/player/a/Q;

    invoke-direct {v0}, Lcom/unity3d/player/a/Q;-><init>()V

    monitor-enter v0

    .line 18
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v0, :cond_0

    .line 19
    monitor-exit v0

    return-void

    .line 22
    :cond_0
    :try_start_1
    iput-object v1, v0, Lcom/unity3d/player/a/Q;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    const-string v1, "Unknown"

    iput-object v1, v0, Lcom/unity3d/player/a/Q;->b:Ljava/lang/String;

    .line 25
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 944
    monitor-exit v0

    throw v1
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/unity3d/player/a/o;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V
    .locals 6

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 91
    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->mInitialScreenOrientation:I

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->mIsFullscreen:Z

    .line 93
    new-instance v2, Lcom/unity3d/player/a/S;

    invoke-direct {v2}, Lcom/unity3d/player/a/S;-><init>()V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    const/4 v2, 0x0

    .line 94
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 95
    iput v0, p0, Lcom/unity3d/player/UnityPlayer;->mNaturalOrientation:I

    const/4 v3, 0x0

    .line 114
    iput-boolean v3, p0, Lcom/unity3d/player/UnityPlayer;->m_AddPhoneCallListener:Z

    .line 115
    new-instance v3, Lcom/unity3d/player/UnityPlayer$a;

    invoke-direct {v3, p0}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$a;

    .line 121
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    .line 122
    new-instance v3, Lcom/unity3d/player/m0;

    invoke-direct {v3}, Lcom/unity3d/player/m0;-><init>()V

    iput-object v3, p0, Lcom/unity3d/player/UnityPlayer;->m_FakeListener:Lcom/unity3d/player/m0;

    .line 124
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    .line 125
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    .line 126
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    .line 127
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_OrientationLockListener:Lcom/unity3d/player/OrientationLockListener;

    .line 128
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_FmodAndroidAudioManager:Lorg/fmod/FmodAndroidAudioManager;

    .line 130
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/a/v;

    .line 131
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    .line 133
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_Cursor:Lcom/unity3d/player/a/P;

    .line 136
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    .line 140
    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_AccessibilityDelegate:Lcom/unity3d/player/UnityAccessibilityDelegate;

    .line 148
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThreadJobs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_UIThread:Ljava/lang/Thread;

    .line 168
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    .line 169
    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer;->mContextType:Lcom/unity3d/player/a/o;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p3, p0

    .line 170
    :goto_0
    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer;->m_UnityPlayerLifecycleEvents:Lcom/unity3d/player/IUnityPlayerLifecycleEvents;

    .line 171
    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->getUnityNativeLibraryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p3

    .line 84
    instance-of v2, p3, Lcom/unity3d/player/a/Q;

    if-eqz v2, :cond_3

    .line 86
    check-cast p3, Lcom/unity3d/player/a/Q;

    move v2, v0

    move v3, v2

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2f

    .line 101
    invoke-virtual {p2, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-ne v4, v0, :cond_2

    if-gez v3, :cond_1

    .line 105
    const-string p2, "Unknown"

    goto :goto_2

    :cond_1
    add-int/2addr v3, v1

    .line 106
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 86
    :goto_2
    iput-object p2, p3, Lcom/unity3d/player/a/Q;->b:Ljava/lang/String;

    goto :goto_3

    :cond_2
    move v3, v2

    move v2, v4

    goto :goto_1

    .line 173
    :cond_3
    :goto_3
    sput-object p1, Lcom/unity3d/player/UnityPlayer;->currentContext:Landroid/content/Context;

    .line 174
    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_4

    .line 176
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    .line 177
    sput-object p1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 178
    invoke-virtual {p1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->mInitialScreenOrientation:I

    :cond_4
    return-void
.end method

.method private EarlyEnableFullScreenIfEnabled()V
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getLaunchFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.VR_LAUNCH"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 368
    invoke-direct {p0, v0}, Lcom/unity3d/player/UnityPlayer;->applyWindowUIChanges(Z)V

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/DisplayCutoutSupport;->setLayoutCutoutMode(Landroid/app/Activity;)V

    return-void
.end method

.method private GetGlViewContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "game_view_content_description"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 21
    sget-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    if-nez v0, :cond_0

    .line 400
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Native libraries not loaded - dropping message for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 406
    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private applyWindowInsets()V
    .locals 1

    .line 1652
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1654
    :cond_0
    new-instance v0, Lcom/unity3d/player/a0;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private applyWindowUIChanges(Z)V
    .locals 1

    .line 1640
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1642
    :cond_0
    new-instance v0, Lcom/unity3d/player/Z;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/Z;-><init>(Lcom/unity3d/player/UnityPlayer;Z)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private developmentPlayerInitialize()V
    .locals 0

    return-void
.end method

.method private dispatchFrameLayoutPadding()V
    .locals 8

    .line 1632
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getViewForPadding()Landroid/view/View;

    move-result-object v0

    .line 21
    sget-boolean v1, Lcom/unity3d/player/a/S;->e:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1635
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    const/4 v3, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/unity3d/player/UnityPlayer;->nativeViewPaddingChanged(IIIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getARCoreEnabled()Z
    .locals 2

    .line 1181
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.arcore-enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 1164
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method private getLaunchFullscreen()Z
    .locals 2

    .line 1191
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.launch-fullscreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private getNaturalOrientation(I)I
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    if-eq p1, v1, :cond_4

    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private getProcessName()Ljava/lang/String;
    .locals 5

    .line 1137
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 1138
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1139
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 1146
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1148
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_1

    .line 1150
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v0

    :cond_2
    return-object v2
.end method

.method private getScreenBrightness()F
    .locals 4

    .line 1589
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_Window:Landroid/view/Window;

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 1591
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 1597
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1596
    const-string v1, "screen_brightness"

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1601
    sget-boolean v1, Lcom/unity3d/player/PlatformSupport;->PIE_SUPPORT:Z

    if-eqz v1, :cond_1

    int-to-double v0, v0

    .line 1605
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x4033cf9db22d0e56L    # 19.811

    mul-double/2addr v0, v2

    const-wide v2, 0x4022d26e978d4fdfL    # 9.411

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1606
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_1
    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    :cond_2
    return v0
.end method

.method private static getUnityNativeLibraryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1034
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object p0
.end method

.method private hideStatusBar()V
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 1273
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method private final native initJni(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method private invokeOnMainThread(Lcom/unity3d/player/UnityPlayer$b;)V
    .locals 1

    .line 1484
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1487
    :cond_0
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isWindowTranslucent()Z
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 377
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v2, 0x1010058

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 378
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 379
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1
.end method

.method private static loadNative(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libmain.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    :try_start_0
    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 988
    :catch_1
    :try_start_1
    const-string v1, "main"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1000
    :goto_0
    invoke-static {p0}, Lcom/unity3d/player/NativeLoader;->load(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 11
    sput-boolean p0, Lcom/unity3d/player/a/S;->e:Z

    .line 1009
    const-string p0, ""

    return-object p0

    :cond_0
    const/4 p0, 0x6

    .line 1006
    const-string v0, "NativeLoader.load failure, Unity libraries were not loaded."

    invoke-static {p0, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-object v0

    .line 997
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/UnityPlayer;->logLoadLibMainError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    .line 993
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/UnityPlayer;->logLoadLibMainError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logLoadLibMainError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 948
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load \'libmain.so\'\n\n"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    .line 950
    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-object p0
.end method

.method private final native nativeApplicationUnload()V
.end method

.method private final native nativeHidePreservedContent()V
.end method

.method private final native nativeInjectEvent(Landroid/view/InputEvent;I)Z
.end method

.method private final native nativeIsAutorotationOn()Z
.end method

.method private static native nativeSetLaunchURL(Ljava/lang/String;)V
.end method

.method private static native nativeUnitySendMessage(Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method private final native nativeViewPaddingChanged(IIIII)V
.end method

.method private pauseJavaAndCallUnloadCallback()V
    .locals 1

    .line 1616
    new-instance v0, Lcom/unity3d/player/Y;

    invoke-direct {v0, p0}, Lcom/unity3d/player/Y;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static native permissionResponseToNative(JZ)V
.end method

.method private static preloadJavaPlugins()V
    .locals 3

    .line 958
    :try_start_0
    const-string v0, "com.unity3d.JavaPluginPreloader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Java class preloading failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :catch_1
    return-void
.end method

.method private releasePointerCapture()V
    .locals 3

    .line 1552
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_Cursor:Lcom/unity3d/player/a/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    sget-boolean v1, Lcom/unity3d/player/PlatformSupport;->OREO_SUPPORT:Z

    if-nez v1, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v1, v0, Lcom/unity3d/player/a/P;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v2, Lcom/unity3d/player/a/O;

    invoke-direct {v2, v0}, Lcom/unity3d/player/a/O;-><init>(Lcom/unity3d/player/a/P;)V

    invoke-virtual {v1, v2}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestPointerCapture()V
    .locals 3

    .line 1546
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_Cursor:Lcom/unity3d/player/a/P;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    sget-boolean v1, Lcom/unity3d/player/PlatformSupport;->OREO_SUPPORT:Z

    if-nez v1, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v1, v0, Lcom/unity3d/player/a/P;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v2, Lcom/unity3d/player/a/N;

    invoke-direct {v2, v0}, Lcom/unity3d/player/a/N;-><init>(Lcom/unity3d/player/a/P;)V

    invoke-virtual {v1, v2}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestUserAuthorization(Ljava/lang/String;J)V
    .locals 3

    if-eqz p1, :cond_1

    .line 700
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 704
    new-instance v1, Lcom/unity3d/player/o0;

    invoke-direct {v1, p2, p3, p0}, Lcom/unity3d/player/o0;-><init>(JLcom/unity3d/player/UnityPlayer;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 p2, 0x1

    .line 705
    new-array p2, p2, [Ljava/lang/String;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    invoke-static {v0, p2, v1}, Lcom/unity3d/player/UnityPermissions;->requestUserPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/unity3d/player/IPermissionRequestCallbacks;)V

    :cond_1
    return-void
.end method

.method private runningOnUIThread()Z
    .locals 2

    .line 1521
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_UIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setBackButtonLeavesApp(Z)V
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->registerOnBackPressedCallback()V

    return-void

    .line 43
    :cond_0
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->unregisterOnBackPressedCallback()V

    :cond_1
    return-void
.end method

.method private setScreenBrightness(F)V
    .locals 1

    const v0, 0x3d23d70a    # 0.04f

    .line 1570
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1573
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_Window:Landroid/view/Window;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getScreenBrightness()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1575
    :cond_0
    new-instance v0, Lcom/unity3d/player/l0;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/l0;-><init>(Lcom/unity3d/player/UnityPlayer;F)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startActivityIndicator(I)V
    .locals 1

    .line 1664
    new-instance v0, Lcom/unity3d/player/b0;

    invoke-direct {v0, p0, p1}, Lcom/unity3d/player/b0;-><init>(Lcom/unity3d/player/UnityPlayer;I)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopActivityIndicator()V
    .locals 1

    .line 1679
    new-instance v0, Lcom/unity3d/player/c0;

    invoke-direct {v0}, Lcom/unity3d/player/c0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->postOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private supportsWindowInsetController()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->RED_VELVET_CAKE_SUPPORT:Z

    return v0
.end method

.method private swapViews(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    .line 1294
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    .line 41
    iget-boolean v0, v0, Lcom/unity3d/player/a/S;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1296
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBePaused()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1300
    :goto_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 1303
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, v2, :cond_2

    .line 1305
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 1306
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1307
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1308
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 1309
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-eqz p2, :cond_3

    .line 1314
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, v2, :cond_3

    const/16 p1, 0x8

    .line 1316
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    if-eqz v0, :cond_4

    .line 1324
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBeResumed()V

    :cond_4
    return-void
.end method

.method private static unloadNative()V
    .locals 2

    .line 21
    sget-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 1015
    :cond_0
    invoke-static {}, Lcom/unity3d/player/NativeLoader;->unload()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    return-void

    .line 1016
    :cond_1
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v1, "Unable to unload libraries from libmain.so"

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized addPermissionRequest(Lcom/unity3d/player/PermissionRequest;)V
    .locals 4

    monitor-enter p0

    .line 759
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 764
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 765
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 767
    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 770
    invoke-virtual {p1}, Lcom/unity3d/player/PermissionRequest;->getPermissionNames()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/unity3d/player/UnityPlayer;->requestPermissionsFromActivity([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected addPhoneCallListener()V
    .locals 3

    const/4 v0, 0x1

    .line 927
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AddPhoneCallListener:Z

    .line 928
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_TelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_PhoneCallListener:Lcom/unity3d/player/UnityPlayer$a;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public addViewToPlayer(Landroid/view/View;Z)Z
    .locals 4

    .line 1332
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1336
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1337
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/unity3d/player/UnityPlayer;->swapViews(Landroid/view/View;Landroid/view/View;)V

    .line 1339
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    if-eqz p2, :cond_3

    .line 1340
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_3

    move p2, v3

    goto :goto_2

    :cond_3
    move p2, v1

    .line 1341
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, v0, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    if-eqz p1, :cond_6

    if-nez p2, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v1, v3

    :cond_6
    if-nez v1, :cond_8

    const/4 v2, 0x6

    if-nez p1, :cond_7

    .line 1347
    const-string p1, "addViewToPlayer: Failure adding view to hierarchy"

    invoke-static {v2, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_7
    if-nez p2, :cond_8

    if-nez v0, :cond_8

    .line 1352
    const-string p1, "addViewToPlayer: Failure removing old view from hierarchy"

    invoke-static {v2, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_8
    return v1
.end method

.method protected applySurfaceViewSettings(Landroid/view/SurfaceView;)V
    .locals 2

    .line 385
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->isWindowTranslucent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    return-void

    .line 392
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method protected canPauseUnity()Z
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    .line 68
    iget-boolean v1, v0, Lcom/unity3d/player/a/S;->b:Z

    if-nez v1, :cond_1

    .line 41
    iget-boolean v0, v0, Lcom/unity3d/player/a/S;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method protected canResumeUnity()Z
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 621
    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 623
    :goto_0
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    .line 63
    sget-boolean v3, Lcom/unity3d/player/a/S;->e:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, v2, Lcom/unity3d/player/a/S;->a:Z

    if-eqz v0, :cond_3

    :goto_1
    iget-boolean v0, v2, Lcom/unity3d/player/a/S;->c:Z

    if-nez v0, :cond_3

    iget-boolean v0, v2, Lcom/unity3d/player/a/S;->b:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    return v0

    .line 623
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return v1
.end method

.method abstract cleanupResourcesForDestroy()V
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->prevConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_0

    and-int/lit16 v1, v0, 0x800

    if-nez v1, :cond_0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeHidePreservedContent()V

    .line 873
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->prevConfig:Landroid/content/res/Configuration;

    .line 876
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/c1;

    if-eqz v0, :cond_3

    .line 171
    iget-object v1, v0, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 172
    iget-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {v1}, Lcom/unity3d/player/VideoPlayer;->updateVideoLayout()V

    .line 174
    :cond_2
    iget-object v0, v0, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 879
    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AccessibilityDelegate:Lcom/unity3d/player/UnityAccessibilityDelegate;

    if-eqz v0, :cond_4

    .line 880
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->a(Landroid/content/res/Configuration;)V

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/unity3d/player/Camera2Wrapper;->closeCamera2()V

    .line 481
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    if-eqz v0, :cond_1

    .line 486
    invoke-virtual {v0}, Lcom/unity3d/player/HFPStatus;->b()V

    .line 487
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_FmodAndroidAudioManager:Lorg/fmod/FmodAndroidAudioManager;

    if-eqz v0, :cond_2

    .line 491
    invoke-virtual {v0, v1}, Lorg/fmod/FmodAndroidAudioManager;->setActivity(Landroid/app/Activity;)V

    .line 493
    :cond_2
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/a/v;

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {v0}, Lcom/unity3d/player/a/v;->a()V

    .line 496
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/a/v;

    .line 499
    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    if-eqz v0, :cond_4

    .line 65
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->unregisterOnBackPressedCallback()V

    .line 502
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    :cond_4
    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    .line 506
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    .line 41
    iget-boolean v0, v0, Lcom/unity3d/player/a/S;->c:Z

    if-nez v0, :cond_5

    .line 507
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBePaused()V

    .line 509
    :cond_5
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->cleanupResourcesForDestroy()V

    .line 511
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->unloadNative()V

    return-void
.end method

.method protected disableLogger()V
    .locals 1

    const/4 v0, 0x1

    .line 1254
    sput-boolean v0, Lcom/unity3d/player/a/t;->a:Z

    return-void
.end method

.method disableStaticSplashScreen()V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 354
    :cond_0
    new-instance v0, Lcom/unity3d/player/f0;

    invoke-direct {v0, p0}, Lcom/unity3d/player/f0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected executeMainThreadJobs()V
    .locals 1

    .line 1493
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThreadJobs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1494
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method finish()V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 1159
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method getAutoReportFullyDrawnEnabled()Z
    .locals 2

    .line 1232
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.auto-report-fully-drawn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method getAutoSetGameStateEnabled()Z
    .locals 2

    .line 1212
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.auto-set-game-state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getClipboardText()Ljava/lang/String;
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1047
    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getContextType()Lcom/unity3d/player/a/o;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContextType:Lcom/unity3d/player/a/o;

    return-object v0
.end method

.method public getFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 1530
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_FrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getKeyboardLayout()Ljava/lang/String;
    .locals 3

    .line 1499
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1500
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1504
    :cond_0
    invoke-static {v0}, Lcom/unity3d/player/a/s;->a(Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1505
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 1509
    :cond_1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v1

    .line 1510
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    .line 1511
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLaunchURL()Ljava/lang/String;
    .locals 2

    .line 1053
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1055
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1056
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected getNetworkConnectivity()I
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/a/v;

    if-eqz v0, :cond_0

    .line 84
    iget v0, v0, Lcom/unity3d/player/a/v;->b:I

    return v0

    .line 855
    :cond_0
    new-instance v0, Lcom/unity3d/player/a/v;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unity3d/player/a/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_NetworkConnectivity:Lcom/unity3d/player/a/v;

    .line 84
    iget v0, v0, Lcom/unity3d/player/a/v;->b:I

    return v0
.end method

.method public getNetworkProxySettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1401
    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1404
    const-string p1, "http.proxyHost"

    const-string v0, "http.proxyPort"

    goto :goto_0

    .line 1407
    :cond_0
    const-string v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1410
    const-string p1, "https.proxyHost"

    const-string v0, "https.proxyPort"

    .line 1415
    :goto_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1416
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1418
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1419
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1420
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1421
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    :cond_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object p1

    const-string v0, "http.nonProxyHosts"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1423
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xa

    .line 1424
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method getSplashEnabled()Z
    .locals 2

    .line 1171
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getSplashMode()I
    .locals 2

    .line 1202
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "unity.splash-mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method getState()Ljava/lang/String;
    .locals 4

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1538
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "m_AudioVolumeHandler = %b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1539
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_OrientationLockListener:Lcom/unity3d/player/OrientationLockListener;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "m_OrientationLockListener = %b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSurfaceView()Landroid/view/SurfaceView;
.end method

.method protected getUaaLLaunchProcessType()I
    .locals 2

    .line 1124
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method abstract getViewForPadding()Landroid/view/View;
.end method

.method abstract handleFocus(Z)Z
.end method

.method abstract hidePreservedContent()V
.end method

.method protected initialize(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 184
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->initialize(Landroid/widget/FrameLayout;Ljava/lang/String;)V

    return-void
.end method

.method protected initialize(Landroid/widget/FrameLayout;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 190
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_FrameLayout:Landroid/widget/FrameLayout;

    .line 191
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->EarlyEnableFullScreenIfEnabled()V

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->prevConfig:Landroid/content/res/Configuration;

    .line 195
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/unity3d/player/UnityPlayer;->getNaturalOrientation(I)I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/UnityPlayer;->mNaturalOrientation:I

    .line 197
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSplashEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    new-instance p1, Lcom/unity3d/player/a/K;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Lcom/unity3d/player/a/k;->b(I)[I

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getSplashMode()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p1, v0, v1}, Lcom/unity3d/player/a/K;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/a/K;

    .line 205
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_FrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 206
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_FrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_SplashScreen:Lcom/unity3d/player/a/K;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 209
    :cond_1
    invoke-static {}, Lcom/unity3d/player/UnityPlayer;->preloadJavaPlugins()V

    .line 210
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->getUnityNativeLibraryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->loadNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    sget-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 p2, 0x6

    .line 217
    const-string v0, "Your hardware does not support this application."

    invoke-static {p2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 219
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    const-string v0, "Failure to initialize!"

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/unity3d/player/d0;

    invoke-direct {v0, p0}, Lcom/unity3d/player/d0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    .line 221
    const-string v2, "OK"

    invoke-virtual {p2, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Your hardware does not support this application.\n\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n\n Press OK to quit."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 230
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 231
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContextType:Lcom/unity3d/player/a/o;

    iget v0, v0, Lcom/unity3d/player/a/o;->a:I

    invoke-direct {p0, p1, v0, p2}, Lcom/unity3d/player/UnityPlayer;->initJni(Landroid/content/Context;ILjava/lang/String;)V

    .line 236
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p1, Lcom/unity3d/player/a/S;->d:Z

    .line 238
    iput-boolean v1, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    .line 239
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->developmentPlayerInitialize()V

    .line 241
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->hideStatusBar()V

    .line 243
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_TelephonyManager:Landroid/telephony/TelephonyManager;

    .line 245
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_ClipboardManager:Landroid/content/ClipboardManager;

    .line 247
    new-instance p1, Lcom/unity3d/player/Camera2Wrapper;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unity3d/player/Camera2Wrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_Camera2Wrapper:Lcom/unity3d/player/Camera2Wrapper;

    .line 249
    new-instance p1, Lcom/unity3d/player/HFPStatus;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/unity3d/player/HFPStatus;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_HFPStatus:Lcom/unity3d/player/HFPStatus;

    .line 251
    new-instance p1, Lcom/unity3d/player/a/P;

    invoke-direct {p1, p0}, Lcom/unity3d/player/a/P;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_Cursor:Lcom/unity3d/player/a/P;

    .line 253
    invoke-static {}, Lorg/fmod/FmodAndroidAudioManager;->getInstance()Lorg/fmod/FmodAndroidAudioManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_FmodAndroidAudioManager:Lorg/fmod/FmodAndroidAudioManager;

    .line 254
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lorg/fmod/FmodAndroidAudioManager;->setActivity(Landroid/app/Activity;)V

    .line 256
    new-instance p1, Lcom/unity3d/player/e0;

    invoke-direct {p1, p0}, Lcom/unity3d/player/e0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    .line 269
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 268
    invoke-static {v0, p2, p1}, Lcom/unity3d/player/q;->a(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/unity3d/player/a/x;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    .line 274
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 275
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_Window:Landroid/view/Window;

    :cond_3
    return-void
.end method

.method protected initializeGoogleAr()Z
    .locals 2

    .line 1074
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->getARCoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    new-instance v0, Lcom/unity3d/player/GoogleARCoreApi;

    invoke-direct {v0}, Lcom/unity3d/player/GoogleARCoreApi;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    .line 1078
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/GoogleARCoreApi;->initializeARCore(Landroid/app/Activity;)V

    .line 1080
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    .line 41
    iget-boolean v0, v0, Lcom/unity3d/player/a/S;->c:Z

    if-nez v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1279
    invoke-virtual {p0, p1, v0}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;I)Z

    move-result p1

    return p1
.end method

.method public injectEvent(Landroid/view/InputEvent;I)Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1286
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer;->nativeInjectEvent(Landroid/view/InputEvent;I)Z

    move-result p1

    return p1
.end method

.method public invokeOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 21
    sget-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    if-nez v0, :cond_0

    return-void

    .line 1474
    :cond_0
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->runningOnUIThread()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->runningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1477
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1475
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_MainThreadJobs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected isFinishing()Z
    .locals 1

    .line 1259
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1262
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1263
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    .line 1265
    :cond_1
    iget-boolean v0, p0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    return v0
.end method

.method isNativeInitialized()Z
    .locals 1

    .line 21
    sget-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    .line 51
    iget-boolean v0, v0, Lcom/unity3d/player/a/S;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isUaaLUseCase()Z
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1116
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected kill()V
    .locals 2

    const/4 v0, 0x4

    .line 517
    const-string v1, "Quitting process"

    invoke-static {v0, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 518
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected loadLibrary(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 911
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public final native nativeCrashNow()V
.end method

.method protected final native nativeGetMainWindowIndex()I
.end method

.method protected final native nativeMuteMasterAudio(Z)V
.end method

.method public newIntent(Landroid/content/Intent;)V
    .locals 0

    .line 471
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->setLaunchURL(Landroid/net/Uri;)V

    return-void
.end method

.method abstract onOrientationChanged(II)V
.end method

.method public onPause()V
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->saveMultiWindowMode(Landroid/app/Activity;)V

    .line 543
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 546
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBePaused()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->isMultiWindowModeChangedToTrue(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 556
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBeResumed()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBeResumed()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/unity3d/player/MultiWindowSupport;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBePaused()V

    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 0

    .line 566
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBePaused()V

    return-void
.end method

.method pauseUnity()V
    .locals 2

    .line 611
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, v0, Lcom/unity3d/player/a/S;->b:Z

    const/4 v1, 0x1

    .line 36
    iput-boolean v1, v0, Lcom/unity3d/player/a/S;->c:Z

    return-void
.end method

.method public declared-synchronized permissionResponse(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 8

    monitor-enter p0

    .line 797
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 799
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 800
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/PermissionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :goto_0
    monitor-exit p0

    return-void

    .line 803
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    invoke-virtual {v0}, Lcom/unity3d/player/PermissionRequest;->getPermissionNames()[Ljava/lang/String;

    move-result-object p2

    .line 807
    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    .line 808
    :goto_1
    array-length v4, p3

    if-ge v3, v4, :cond_8

    .line 810
    aget-object v4, p3, v3

    move v5, v2

    .line 812
    :goto_2
    array-length v6, p2

    if-ge v5, v6, :cond_3

    .line 813
    aget-object v6, p2, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    :goto_3
    if-gez v5, :cond_4

    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Permission not found in request: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    goto :goto_6

    .line 826
    :cond_4
    aget v6, p4, v3

    if-nez v6, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    .line 828
    :cond_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v6, v7, :cond_6

    goto :goto_4

    .line 830
    :cond_6
    invoke-static {p1, v4}, Lcom/unity3d/player/UnityPermissions;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    const/4 v4, 0x2

    goto :goto_5

    :cond_7
    const/4 v4, 0x3

    .line 835
    :goto_5
    aput v4, v1, v5

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 838
    :cond_8
    new-instance p1, Lcom/unity3d/player/g0;

    invoke-direct {p1, v0, p2, v1}, Lcom/unity3d/player/g0;-><init>(Lcom/unity3d/player/PermissionRequest;[Ljava/lang/String;[I)V

    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    .line 846
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->triggerNextPermissionRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method postOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 456
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeViewFromPlayer(Landroid/view/View;)V
    .locals 4

    .line 1361
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1365
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v1

    .line 1366
    invoke-direct {p0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->swapViews(Landroid/view/View;Landroid/view/View;)V

    .line 1367
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v3

    .line 1368
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x6

    if-nez p1, :cond_4

    .line 1374
    const-string p1, "removeViewFromPlayer: Failure removing view from hierarchy"

    invoke-static {v0, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_4
    if-nez v2, :cond_5

    .line 1379
    const-string p1, "removeViewFromPlayer: Failure adding old view to hierarchy"

    invoke-static {v0, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1389
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1391
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method reportFullyDrawn()V
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->reportFullyDrawn()V

    return-void
.end method

.method public requestPermissionsFromActivity([Ljava/lang/String;I)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method public resume()V
    .locals 0

    .line 641
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->setupUnityToBeResumed()V

    return-void
.end method

.method resumeUnity()V
    .locals 2

    .line 631
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    const/4 v1, 0x1

    .line 56
    iput-boolean v1, v0, Lcom/unity3d/player/a/S;->b:Z

    return-void
.end method

.method runOnAnonymousThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 432
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 443
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 449
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public abstract runningOnMainThread()Z
.end method

.method protected saveFocusState(Z)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    .line 31
    iput-boolean p1, v0, Lcom/unity3d/player/a/S;->a:Z

    return-void
.end method

.method protected setAccessibilityDelegate(Lcom/unity3d/player/UnityAccessibilityDelegate;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_AccessibilityDelegate:Lcom/unity3d/player/UnityAccessibilityDelegate;

    return-void
.end method

.method protected setClipboardText(Ljava/lang/String;)V
    .locals 1

    .line 1039
    const-string v0, "Text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 1040
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method setLaunchURL(Landroid/net/Uri;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1061
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1062
    :goto_0
    new-instance v0, Lcom/unity3d/player/h0;

    invoke-direct {v0, p1}, Lcom/unity3d/player/h0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract setMainSurfaceViewAspectRatio(F)V
.end method

.method protected setupUnityToBePaused()V
    .locals 5

    .line 571
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->pauseARCore()V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/c1;

    if-eqz v0, :cond_3

    .line 139
    iget-object v1, v0, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 140
    iget-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    if-eqz v1, :cond_2

    .line 143
    iget v2, v0, Lcom/unity3d/player/c1;->g:I

    if-nez v2, :cond_1

    .line 145
    invoke-virtual {v1}, Lcom/unity3d/player/VideoPlayer;->cancelOnPrepare()V

    goto :goto_0

    .line 148
    :cond_1
    iget-boolean v2, v0, Lcom/unity3d/player/c1;->i:Z

    if-eqz v2, :cond_2

    .line 150
    invoke-virtual {v1}, Lcom/unity3d/player/VideoPlayer;->isPaused()Z

    move-result v1

    iput-boolean v1, v0, Lcom/unity3d/player/c1;->h:Z

    if-nez v1, :cond_2

    .line 152
    iget-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/VideoPlayer;->pause()V

    .line 155
    :cond_2
    :goto_0
    iget-object v0, v0, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 20
    iget-object v2, v0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/a/j;

    .line 73
    iget-object v3, v2, Lcom/unity3d/player/a/j;->c:Lcom/unity3d/player/a/h;

    if-eqz v3, :cond_4

    .line 75
    iget-object v3, v2, Lcom/unity3d/player/a/j;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v2, Lcom/unity3d/player/a/j;->c:Lcom/unity3d/player/a/h;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 76
    iput-object v1, v2, Lcom/unity3d/player/a/j;->c:Lcom/unity3d/player/a/h;

    .line 21
    :cond_4
    iput-object v1, v0, Lcom/unity3d/player/AudioVolumeHandler;->a:Lcom/unity3d/player/a/j;

    .line 582
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    .line 585
    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_OrientationLockListener:Lcom/unity3d/player/OrientationLockListener;

    if-eqz v0, :cond_7

    .line 25
    iget-object v2, v0, Lcom/unity3d/player/OrientationLockListener;->a:Lcom/unity3d/player/a/M;

    .line 56
    iget-object v3, v2, Lcom/unity3d/player/a/M;->b:Lcom/unity3d/player/a/L;

    if-eqz v3, :cond_6

    .line 58
    iget-object v3, v2, Lcom/unity3d/player/a/M;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v2, Lcom/unity3d/player/a/M;->b:Lcom/unity3d/player/a/L;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 59
    iput-object v1, v2, Lcom/unity3d/player/a/M;->b:Lcom/unity3d/player/a/L;

    .line 26
    :cond_6
    iput-object v1, v0, Lcom/unity3d/player/OrientationLockListener;->a:Lcom/unity3d/player/a/M;

    .line 588
    iput-object v1, p0, Lcom/unity3d/player/UnityPlayer;->m_OrientationLockListener:Lcom/unity3d/player/OrientationLockListener;

    .line 591
    :cond_7
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    if-eqz v0, :cond_9

    .line 48
    iget-object v1, v0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    .line 53
    :goto_1
    iput-boolean v1, v0, Lcom/unity3d/player/a/x;->c:Z

    .line 54
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->unregisterOnBackPressedCallback()V

    .line 596
    :cond_9
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->canPauseUnity()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 598
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pauseUnity()V

    :cond_a
    return-void
.end method

.method protected setupUnityToBeResumed()V
    .locals 3

    .line 646
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_ARCoreApi:Lcom/unity3d/player/GoogleARCoreApi;

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Lcom/unity3d/player/GoogleARCoreApi;->resumeARCore()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    const/4 v1, 0x0

    .line 36
    iput-boolean v1, v0, Lcom/unity3d/player/a/S;->c:Z

    .line 653
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/c1;

    if-eqz v0, :cond_2

    .line 160
    iget-object v1, v0, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 161
    iget-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/unity3d/player/c1;->i:Z

    if-eqz v2, :cond_1

    .line 163
    iget-boolean v2, v0, Lcom/unity3d/player/c1;->h:Z

    if-nez v2, :cond_1

    .line 164
    invoke-virtual {v1}, Lcom/unity3d/player/VideoPlayer;->start()V

    .line 166
    :cond_1
    iget-object v0, v0, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 656
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->canResumeUnity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 657
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resumeUnity()V

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    if-nez v0, :cond_4

    .line 661
    new-instance v0, Lcom/unity3d/player/AudioVolumeHandler;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unity3d/player/AudioVolumeHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_AudioVolumeHandler:Lcom/unity3d/player/AudioVolumeHandler;

    .line 664
    :cond_4
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_OrientationLockListener:Lcom/unity3d/player/OrientationLockListener;

    if-nez v0, :cond_5

    .line 21
    sget-boolean v0, Lcom/unity3d/player/a/S;->e:Z

    if-eqz v0, :cond_5

    .line 667
    new-instance v0, Lcom/unity3d/player/OrientationLockListener;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unity3d/player/OrientationLockListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_OrientationLockListener:Lcom/unity3d/player/OrientationLockListener;

    .line 670
    :cond_5
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_OnBackPressedDispatcher:Lcom/unity3d/player/a/x;

    if-eqz v0, :cond_6

    .line 59
    iget-boolean v1, v0, Lcom/unity3d/player/a/x;->c:Z

    if-eqz v1, :cond_6

    .line 60
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->registerOnBackPressedCallback()V

    :cond_6
    return-void
.end method

.method shouldReportFullyDrawn()Z
    .locals 1

    .line 1241
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1243
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getAutoReportFullyDrawnEnabled()Z

    move-result v0

    return v0
.end method

.method shouldSetGameState()Z
    .locals 2

    .line 1221
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1223
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    return v1

    .line 1225
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->isUaaLUseCase()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->getAutoSetGameStateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unity3d/player/UnityGameManager;->getGameManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected showVideoPlayer(Ljava/lang/String;IIIZII)Z
    .locals 12

    .line 1093
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/c1;

    if-nez v0, :cond_0

    .line 1094
    new-instance v0, Lcom/unity3d/player/c1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/c1;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/c1;

    .line 1095
    :cond_0
    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer;->mVideoPlayerProxy:Lcom/unity3d/player/c1;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    move/from16 v1, p6

    int-to-long v8, v1

    move/from16 v1, p7

    int-to-long v10, v1

    new-instance v1, Lcom/unity3d/player/i0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/i0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    .line 38
    iget-object v3, v2, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 39
    iput-object v1, v2, Lcom/unity3d/player/c1;->c:Lcom/unity3d/player/i0;

    .line 40
    iput-object v0, v2, Lcom/unity3d/player/c1;->b:Landroid/content/Context;

    .line 41
    iget-object v0, v2, Lcom/unity3d/player/c1;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    const/4 v0, 0x2

    .line 42
    iput v0, v2, Lcom/unity3d/player/c1;->g:I

    .line 43
    new-instance v1, Lcom/unity3d/player/Y0;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v11}, Lcom/unity3d/player/Y0;-><init>(Lcom/unity3d/player/c1;Ljava/lang/String;IIIZJJ)V

    invoke-virtual {v2, v1}, Lcom/unity3d/player/c1;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 87
    :try_start_0
    iget-object p2, v2, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 88
    iget-object p2, v2, Lcom/unity3d/player/c1;->d:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 89
    iget-object p2, v2, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 90
    iget p2, v2, Lcom/unity3d/player/c1;->g:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p2, v0, :cond_1

    const/4 p1, 0x1

    .line 95
    :catch_0
    :cond_1
    new-instance p2, Lcom/unity3d/player/Z0;

    invoke-direct {p2, v2}, Lcom/unity3d/player/Z0;-><init>(Lcom/unity3d/player/c1;)V

    invoke-virtual {v2, p2}, Lcom/unity3d/player/c1;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_2

    .line 100
    iget p2, v2, Lcom/unity3d/player/c1;->g:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_2

    .line 103
    new-instance p2, Lcom/unity3d/player/a1;

    invoke-direct {p2, v2}, Lcom/unity3d/player/a1;-><init>(Lcom/unity3d/player/c1;)V

    invoke-virtual {v2, p2}, Lcom/unity3d/player/c1;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 114
    :cond_2
    new-instance p2, Lcom/unity3d/player/b1;

    invoke-direct {p2, v2}, Lcom/unity3d/player/b1;-><init>(Lcom/unity3d/player/c1;)V

    invoke-virtual {v2, p2}, Lcom/unity3d/player/c1;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 120
    :goto_0
    iget-object p2, v2, Lcom/unity3d/player/c1;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz p1, :cond_3

    .line 1101
    new-instance p2, Lcom/unity3d/player/j0;

    invoke-direct {p2, p0}, Lcom/unity3d/player/j0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {p0, p2}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return p1
.end method

.method shutdown()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mState:Lcom/unity3d/player/a/S;

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, v0, Lcom/unity3d/player/a/S;->d:Z

    return-void
.end method

.method protected skipPermissionsDialog()Z
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 691
    invoke-static {v0}, Lcom/unity3d/player/UnityPermissions;->skipPermissionsDialog(Landroid/app/Activity;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startOrientationListener(I)Z
    .locals 4

    .line 1430
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    .line 1432
    const-string p1, "Orientation Listener already started."

    invoke-static {v2, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return v1

    .line 1435
    :cond_0
    new-instance v0, Lcom/unity3d/player/k0;

    iget-object v3, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3, p1}, Lcom/unity3d/player/k0;-><init>(Lcom/unity3d/player/UnityPlayer;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 1444
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1446
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->enable()V

    const/4 p1, 0x1

    return p1

    .line 1451
    :cond_1
    const-string p1, "Orientation Listener cannot detect orientation."

    invoke-static {v2, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return v1
.end method

.method public stopOrientationListener()Z
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    .line 1460
    const-string v1, "Orientation Listener was not started."

    invoke-static {v0, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 1464
    :cond_0
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    const/4 v0, 0x0

    .line 1465
    iput-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mOrientationListener:Landroid/view/OrientationEventListener;

    const/4 v0, 0x1

    return v0
.end method

.method protected toggleGyroscopeSensor(Z)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    .line 335
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 337
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_FakeListener:Lcom/unity3d/player/m0;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void

    .line 339
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer;->m_FakeListener:Lcom/unity3d/player/m0;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public declared-synchronized triggerNextPermissionRequest()V
    .locals 2

    monitor-enter p0

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer;->m_PermissionRequests:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 790
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/player/PermissionRequest;

    invoke-virtual {v1}, Lcom/unity3d/player/PermissionRequest;->getPermissionNames()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/unity3d/player/UnityPlayer;->requestPermissionsFromActivity([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unload()V
    .locals 0

    .line 684
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer;->nativeApplicationUnload()V

    return-void
.end method

.method public windowFocusChanged(Z)V
    .locals 0

    .line 888
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->saveFocusState(Z)V

    .line 891
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->handleFocus(Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->canResumeUnity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 895
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resumeUnity()V

    :cond_1
    :goto_0
    return-void
.end method
