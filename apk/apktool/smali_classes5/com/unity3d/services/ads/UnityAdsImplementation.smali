.class public final Lcom/unity3d/services/ads/UnityAdsImplementation;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Lcom/unity3d/services/ads/IUnityAds;


# static fields
.field private static instance:Lcom/unity3d/services/ads/IUnityAds;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/unity3d/services/ads/IUnityAds;
    .locals 1

    .line 38
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->instance:Lcom/unity3d/services/ads/IUnityAds;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/unity3d/services/ads/UnityAdsImplementation;

    invoke-direct {v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;-><init>()V

    sput-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->instance:Lcom/unity3d/services/ads/IUnityAds;

    .line 41
    :cond_0
    sget-object v0, Lcom/unity3d/services/ads/UnityAdsImplementation;->instance:Lcom/unity3d/services/ads/IUnityAds;

    return-object v0
.end method

.method private handleShowError(Lcom/unity3d/ads/IUnityAdsShowListener;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-interface {p1, p2, p3, p4}, Lcom/unity3d/ads/IUnityAdsShowListener;->onUnityAdsShowFailure(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    return-void
.end method

.method private hasInvalidContext()Z
    .locals 1

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, v0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private hasInvalidContext(Landroid/content/Context;)Z
    .locals 4

    .line 295
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    return v0

    .line 303
    :cond_1
    instance-of v2, p1, Landroid/app/Application;

    if-eqz v2, :cond_2

    .line 304
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    .line 305
    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 306
    invoke-static {v0}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    return v1

    .line 310
    :cond_2
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 311
    move-object v2, p1

    check-cast v2, Landroid/app/Activity;

    .line 312
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 313
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 314
    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    return v1

    :cond_3
    return v0
.end method

.method static synthetic lambda$initialize$0(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 2

    .line 58
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;

    const-string v1, "Unity Ads SDK failed to initialize due to invalid context"

    invoke-interface {p0, v0, v1}, Lcom/unity3d/ads/IUnityAdsInitializationListener;->onInitializationFailed(Lcom/unity3d/ads/UnityAds$UnityAdsInitializationError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$load$1(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V
    .locals 2

    .line 209
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    const-string v1, "Unity Ads SDK failed to load due to invalid context"

    invoke-interface {p0, p1, v0, v1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$load$2(Lcom/unity3d/ads/core/domain/InternalLoadListener;)V
    .locals 3

    .line 254
    new-instance v0, Lcom/unity3d/ads/UnityAdsError;

    sget-object v1, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_LOAD_NOT_INITIALIZED:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    .line 256
    invoke-virtual {v1}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v1

    const-string v2, "Unity Ads SDK ad load failed: The Unity Ads SDK is not initialized. Initialize the SDK before loading ads."

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAdsError;-><init>(ILjava/lang/String;)V

    .line 254
    invoke-interface {p0, v0}, Lcom/unity3d/ads/core/domain/InternalLoadListener;->onAdLoadFail(Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method


# virtual methods
.method public getDebugMode()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-static {}, Lcom/unity3d/services/UnityServices;->getDebugMode()Z

    move-result v0

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "No valid Context for getting token"

    invoke-static {v0}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_0
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    invoke-virtual {v0}, Lcom/unity3d/services/UnityAdsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken(Lcom/unity3d/ads/IUnityAdsTokenListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)V

    return-void
.end method

.method public getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-string p1, "No valid Context for getting token"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 281
    invoke-interface {p2, p1}, Lcom/unity3d/ads/IUnityAdsTokenListener;->onUnityAdsTokenReady(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 286
    :cond_1
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/services/UnityAdsSDK;->getToken(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/ads/IUnityAdsTokenListener;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 94
    invoke-static {}, Lcom/unity3d/services/UnityServices;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/ads/IUnityAdsInitializationListener;)V
    .locals 1

    .line 54
    invoke-static {}, Lcom/unity3d/services/core/log/DeviceLog;->entered()V

    .line 55
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    const-string p1, "Error while initializing Unity Services: null context, halting Unity Ads init"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 58
    new-instance p1, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda2;

    invoke-direct {p1, p4}, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda2;-><init>(Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    invoke-static {p1}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 62
    invoke-static {p1, p2, p3, v0, p4}, Lcom/unity3d/services/UnityServices;->initialize(Landroid/content/Context;Ljava/lang/String;ZLcom/unity3d/ads/InitializationConfiguration;Lcom/unity3d/ads/IUnityAdsInitializationListener;)V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 72
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-static {}, Lcom/unity3d/services/UnityServices;->isSupported()Z

    move-result v0

    return v0
.end method

.method public load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V
    .locals 2

    .line 206
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    const-string p2, "No valid Context for loading ads"

    invoke-static {p2}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 209
    new-instance p2, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;

    invoke-direct {p2, p3, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda0;-><init>(Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 215
    new-instance v1, Lcom/unity3d/services/ads/UnityAdsImplementation$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation$2;-><init>(Lcom/unity3d/services/ads/UnityAdsImplementation;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 247
    :goto_0
    new-instance p3, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {p3}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    invoke-virtual {p3, p1, p2, v1, v0}, Lcom/unity3d/services/UnityAdsSDK;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/core/domain/InternalLoadListener;Lcom/unity3d/services/banners/UnityBannerSize;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/core/domain/InternalLoadListener;)V
    .locals 2

    .line 252
    invoke-direct {p0}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string p1, "No valid Context for loading ads"

    invoke-static {p1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 254
    new-instance p1, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lcom/unity3d/services/ads/UnityAdsImplementation$$ExternalSyntheticLambda1;-><init>(Lcom/unity3d/ads/core/domain/InternalLoadListener;)V

    invoke-static {p1}, Lcom/unity3d/services/core/misc/Utilities;->wrapCustomerListener(Ljava/lang/Runnable;)V

    return-void

    .line 263
    :cond_0
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/unity3d/services/UnityAdsSDK;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/core/domain/InternalLoadListener;Lcom/unity3d/services/banners/UnityBannerSize;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    invoke-static {p1}, Lcom/unity3d/services/UnityServices;->setDebugMode(Z)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 104
    new-instance v0, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsShowListener;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {v0}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/unity3d/services/ads/UnityAdsImplementation;->show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    return-void
.end method

.method public show(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/IUnityAdsShowListener;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 128
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->hasInvalidContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p1}, Lcom/unity3d/services/core/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    .line 134
    new-instance p1, Lcom/unity3d/services/UnityAdsSDK;

    invoke-direct {p1}, Lcom/unity3d/services/UnityAdsSDK;-><init>()V

    new-instance v0, Lcom/unity3d/services/ads/UnityAdsImplementation$1;

    invoke-direct {v0, p0, p4}, Lcom/unity3d/services/ads/UnityAdsImplementation$1;-><init>(Lcom/unity3d/services/ads/UnityAdsImplementation;Lcom/unity3d/ads/IUnityAdsShowListener;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/unity3d/services/UnityAdsSDK;->show(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;)Lkotlinx/coroutines/Job;

    return-void

    .line 129
    :cond_1
    :goto_0
    const-string p1, "Activity must not be null"

    .line 130
    sget-object p3, Lcom/unity3d/ads/UnityAds$UnityAdsShowError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsShowError;

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/unity3d/services/ads/UnityAdsImplementation;->handleShowError(Lcom/unity3d/ads/IUnityAdsShowListener;Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V

    return-void
.end method
