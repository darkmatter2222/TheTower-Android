.class public Landroidx/webkit/ProcessGlobalConfig;
.super Ljava/lang/Object;
.source "ProcessGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/ProcessGlobalConfig$UiThreadStartupMode;
    }
.end annotation


# static fields
.field public static final UI_THREAD_STARTUP_MODE_ASYNC:I = 0x3

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_LONG_TASKS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_SHORT_TASKS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_VERY_SHORT_TASKS:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UI_THREAD_STARTUP_MODE_ASYNC_WITHOUT_MULTI_PROCESS_STARTUP:I = 0x4

.field public static final UI_THREAD_STARTUP_MODE_DEFAULT:I = -0x1

.field public static final UI_THREAD_STARTUP_MODE_SYNC:I

.field private static sApplyCalled:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sProcessGlobalConfig:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mCacheDirectoryBasePath:Ljava/lang/String;

.field mDataDirectoryBasePath:Ljava/lang/String;

.field mDataDirectorySuffix:Ljava/lang/String;

.field mPartitionedCookiesEnabled:Ljava/lang/Boolean;

.field mUiThreadStartupMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroidx/webkit/ProcessGlobalConfig;->sProcessGlobalConfig:Ljava/util/concurrent/atomic/AtomicReference;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/webkit/ProcessGlobalConfig;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    sput-boolean v0, Landroidx/webkit/ProcessGlobalConfig;->sApplyCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Landroidx/webkit/ProcessGlobalConfig;->mUiThreadStartupMode:I

    return-void
.end method

.method public static apply(Landroidx/webkit/ProcessGlobalConfig;)V
    .locals 3

    .line 390
    sget-object v0, Landroidx/webkit/ProcessGlobalConfig;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    sget-boolean v1, Landroidx/webkit/ProcessGlobalConfig;->sApplyCalled:Z

    if-nez v1, :cond_8

    const/4 v1, 0x1

    .line 401
    sput-boolean v1, Landroidx/webkit/ProcessGlobalConfig;->sApplyCalled:Z

    .line 402
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 404
    invoke-static {}, Landroidx/webkit/ProcessGlobalConfig;->webViewCurrentlyLoaded()Z

    move-result v1

    if-nez v1, :cond_7

    .line 410
    iget-object v1, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectorySuffix:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 411
    sget-object v1, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

    .line 413
    invoke-virtual {v1}, Landroidx/webkit/internal/StartupApiFeature$P;->isSupportedByFramework()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectorySuffix:Ljava/lang/String;

    invoke-static {v1}, Landroidx/webkit/internal/ApiHelperForP;->setDataDirectorySuffix(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_0
    const-string v1, "DATA_DIRECTORY_SUFFIX"

    iget-object v2, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectorySuffix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectoryBasePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 421
    const-string v2, "DATA_DIRECTORY_BASE_PATH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_2
    iget-object v1, p0, Landroidx/webkit/ProcessGlobalConfig;->mCacheDirectoryBasePath:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 425
    const-string v2, "CACHE_DIRECTORY_BASE_PATH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    :cond_3
    iget-object v1, p0, Landroidx/webkit/ProcessGlobalConfig;->mPartitionedCookiesEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 429
    const-string v2, "CONFIGURE_PARTITIONED_COOKIES"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_4
    iget p0, p0, Landroidx/webkit/ProcessGlobalConfig;->mUiThreadStartupMode:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_5

    .line 433
    const-string v1, "UI_THREAD_STARTUP_MODE"

    .line 434
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 433
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    :cond_5
    sget-object p0, Landroidx/webkit/ProcessGlobalConfig;->sProcessGlobalConfig:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lads_mobile_sdk/tu2$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-void

    .line 437
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Attempting to set ProcessGlobalConfig#sProcessGlobalConfig when it was already set"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 405
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "WebView has already been loaded in the current process, so any attempt to apply the settings in ProcessGlobalConfig will have no effect. ProcessGlobalConfig#apply needs to be called before any calls to android.webkit APIs, such as during early app startup."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 392
    :cond_8
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "ProcessGlobalConfig#apply was called more than once, which is an illegal operation. The configuration settings provided by ProcessGlobalConfig take effect only once, when WebView is first loaded into the current process. Every process should only ever create a single instance of ProcessGlobalConfig and apply it once, before any calls to android.webkit APIs, such as during early app startup."

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 402
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static webViewCurrentlyLoaded()Z
    .locals 4

    const/4 v0, 0x0

    .line 447
    :try_start_0
    const-string v1, "android.webkit.WebViewFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 448
    const-string v2, "sProviderInstance"

    .line 449
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 450
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v3, 0x0

    .line 451
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v2

    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public setDataDirectorySuffix(Landroid/content/Context;Ljava/lang/String;)Landroidx/webkit/ProcessGlobalConfig;
    .locals 2

    .line 126
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX:Landroidx/webkit/internal/StartupApiFeature$P;

    .line 128
    invoke-virtual {v0, p1}, Landroidx/webkit/internal/StartupApiFeature$P;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 131
    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 134
    sget-char p1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 138
    iput-object p2, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectorySuffix:Ljava/lang/String;

    return-object p0

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Suffix "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " contains a path separator"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Suffix cannot be an empty string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setDirectoryBasePaths(Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Landroidx/webkit/ProcessGlobalConfig;
    .locals 1

    .line 183
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 185
    invoke-virtual {v0, p1}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    invoke-virtual {p2}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {p3}, Ljava/io/File;->isAbsolute()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/webkit/ProcessGlobalConfig;->mDataDirectoryBasePath:Ljava/lang/String;

    .line 197
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/webkit/ProcessGlobalConfig;->mCacheDirectoryBasePath:Ljava/lang/String;

    return-object p0

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "cacheDirectoryBasePath must be a non-empty absolute path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dataDirectoryBasePath must be a non-empty absolute path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 186
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setPartitionedCookiesEnabled(Landroid/content/Context;Z)Landroidx/webkit/ProcessGlobalConfig;
    .locals 1

    .line 214
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 216
    invoke-virtual {v0, p1}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 219
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/webkit/ProcessGlobalConfig;->mPartitionedCookiesEnabled:Ljava/lang/Boolean;

    return-object p0

    .line 217
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setUiThreadStartupMode(Landroid/content/Context;I)Landroidx/webkit/ProcessGlobalConfig;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    const/4 v1, 0x4

    if-eq p2, v1, :cond_0

    .line 336
    invoke-virtual {v0, p1}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    iput p2, p0, Landroidx/webkit/ProcessGlobalConfig;->mUiThreadStartupMode:I

    return-object p0

    .line 337
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method

.method public setUiThreadStartupModeV2(Landroid/content/Context;I)Landroidx/webkit/ProcessGlobalConfig;
    .locals 1

    .line 360
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2:Landroidx/webkit/internal/StartupApiFeature$NoFramework;

    .line 362
    invoke-virtual {v0, p1}, Landroidx/webkit/internal/StartupApiFeature$NoFramework;->isSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 365
    iput p2, p0, Landroidx/webkit/ProcessGlobalConfig;->mUiThreadStartupMode:I

    return-object p0

    .line 363
    :cond_0
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    move-result-object p1

    throw p1
.end method
