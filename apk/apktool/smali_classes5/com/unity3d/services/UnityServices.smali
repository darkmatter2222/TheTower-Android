.class public final Lcom/unity3d/services/UnityServices;
.super Ljava/lang/Object;
.source "UnityServices.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/UnityServices$UnityServicesError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001fB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J8\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007J8\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0010H\u0007R\u001c\u0010\u0011\u001a\u00020\u000b8\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0003\u001a\u0004\u0008\u0011\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u000b8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0015\u0010\u0003\u001a\u0004\u0008\u0014\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\t8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0003\u001a\u0004\u0008\u0018\u0010\u0019R*\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u000b8F@FX\u0087\u000e\u00a2\u0006\u0012\u0012\u0004\u0008\u001b\u0010\u0003\u001a\u0004\u0008\u001c\u0010\u0013\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/unity3d/services/UnityServices;",
        "",
        "<init>",
        "()V",
        "initialize",
        "",
        "context",
        "Landroid/content/Context;",
        "gameId",
        "",
        "testMode",
        "",
        "initializationConfiguration",
        "Lcom/unity3d/ads/InitializationConfiguration;",
        "initializationListener",
        "Lcom/unity3d/ads/IUnityAdsInitializationListener;",
        "Lcom/unity3d/ads/InitializationListener;",
        "isSupported",
        "isSupported$annotations",
        "()Z",
        "isInitialized",
        "isInitialized$annotations",
        "version",
        "getVersion$annotations",
        "getVersion",
        "()Ljava/lang/String;",
        "debugMode",
        "getDebugMode$annotations",
        "getDebugMode",
        "setDebugMode",
        "(Z)V",
        "UnityServicesError",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/unity3d/services/UnityServices;

.field private static final isSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/services/UnityServices;

    invoke-direct {v0}, Lcom/unity3d/services/UnityServices;-><init>()V

    sput-object v0, Lcom/unity3d/services/UnityServices;->INSTANCE:Lcom/unity3d/services/UnityServices;

    const/4 v0, 0x1

    .line 70
    sput-boolean v0, Lcom/unity3d/services/UnityServices;->isSupported:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDebugMode()Z
    .locals 1

    .line 89
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public static synthetic getDebugMode$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Use logLevel in InitializationConfiguration instead."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 2

    .line 78
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getVersionName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/ads/InitializationConfiguration;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class p0, Lcom/unity3d/services/UnityServices;

    monitor-enter p0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 31
    invoke-static {p4}, Lcom/unity3d/services/core/properties/SdkProperties;->addInitializationListener(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    .line 32
    invoke-static {p2}, Lcom/unity3d/services/core/properties/SdkProperties;->setTestMode(Z)V

    .line 33
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result p2

    invoke-static {p2}, Lcom/unity3d/services/core/properties/SdkProperties;->setDebugMode(Z)V

    .line 35
    invoke-static {}, Lcom/unity3d/services/core/lifecycle/CachedLifecycle;->register()V

    .line 37
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    const/4 p2, 0x1

    const/4 p4, 0x0

    invoke-direct {v0, p4, p2, p4}, Lcom/unity3d/services/UnityAdsSDK;-><init>(Lcom/unity3d/services/core/di/IServiceProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/UnityAdsSDK;->initialize$default(Lcom/unity3d/services/UnityAdsSDK;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/InitializationConfiguration;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static final declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/ads/InitializationConfiguration;Lcom/unity3d/ads/InitializationListener;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class p0, Lcom/unity3d/services/UnityServices;

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 58
    invoke-static {p4}, Lcom/unity3d/services/core/properties/SdkProperties;->addInitializationListener(Lcom/unity3d/ads/InitializationListener;)V

    .line 59
    invoke-static {p2}, Lcom/unity3d/services/core/properties/SdkProperties;->setTestMode(Z)V

    .line 60
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->getDebugMode()Z

    move-result p2

    invoke-static {p2}, Lcom/unity3d/services/core/properties/SdkProperties;->setDebugMode(Z)V

    .line 62
    invoke-static {}, Lcom/unity3d/services/core/lifecycle/CachedLifecycle;->register()V

    .line 64
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    const/4 p2, 0x1

    const/4 p4, 0x0

    invoke-direct {v0, p4, p2, p4}, Lcom/unity3d/services/UnityAdsSDK;-><init>(Lcom/unity3d/services/core/di/IServiceProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/unity3d/services/UnityAdsSDK;->initialize$default(Lcom/unity3d/services/UnityAdsSDK;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/InitializationConfiguration;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static final isInitialized()Z
    .locals 1

    .line 74
    invoke-static {}, Lcom/unity3d/services/core/properties/SdkProperties;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static synthetic isInitialized$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isSupported()Z
    .locals 1

    .line 68
    sget-boolean v0, Lcom/unity3d/services/UnityServices;->isSupported:Z

    return v0
.end method

.method public static synthetic isSupported$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "isSupported always returns true and will be removed in a future version."
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final setDebugMode(Z)V
    .locals 0

    .line 97
    invoke-static {p0}, Lcom/unity3d/services/core/properties/SdkProperties;->setDebugMode(Z)V

    return-void
.end method
