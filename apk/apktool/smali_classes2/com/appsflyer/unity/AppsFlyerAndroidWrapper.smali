.class public Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;
.super Ljava/lang/Object;
.source "AppsFlyerAndroidWrapper.java"


# static fields
.field private static final DDL_TIMEOUT_DEFAULT:J = 0xbb8L

.field private static final ERROR_CALLBACK:Ljava/lang/String; = "didReceivePurchaseRevenueError"

.field private static final GCD_CALLBACK:Ljava/lang/String; = "onConversionDataSuccess"

.field private static final GCD_ERROR_CALLBACK:Ljava/lang/String; = "onConversionDataFail"

.field private static final GENERATE_LINK_CALLBACK:Ljava/lang/String; = "onInviteLinkGenerated"

.field private static final GENERATE_LINK_ERROR_CALLBACK:Ljava/lang/String; = "onInviteLinkGeneratedFailure"

.field private static final IN_APP_RESPONSE_CALLBACK:Ljava/lang/String; = "inAppResponseReceived"

.field private static final OAOA_CALLBACK:Ljava/lang/String; = "onAppOpenAttribution"

.field private static final OAOA_ERROR_CALLBACK:Ljava/lang/String; = "onAppOpenAttributionFailure"

.field private static final ON_DEEPLINKING:Ljava/lang/String; = "onDeepLinking"

.field private static final PLUGIN_VERSION:Ljava/lang/String; = "6.17.3"

.field private static final START_REQUEST_CALLBACK:Ljava/lang/String; = "requestResponseReceived"

.field private static final VALIDATE_AND_LOG_V2_CALLBACK:Ljava/lang/String; = "onValidateAndLogComplete"

.field private static final VALIDATE_AND_LOG_V2__ERROR_CALLBACK:Ljava/lang/String; = "onValidateAndLogFailure"

.field private static final VALIDATE_CALLBACK:Ljava/lang/String; = "didFinishValidateReceipt"

.field private static final VALIDATE_ERROR_CALLBACK:Ljava/lang/String; = "didFinishValidateReceiptWithError"

.field private static final VALIDATION_CALLBACK:Ljava/lang/String; = "didReceivePurchaseRevenueValidationInfo"

.field private static builder:Lcom/appsflyer/api/PurchaseClient$Builder; = null

.field private static conversionListener:Lcom/appsflyer/AppsFlyerConversionListener; = null

.field private static ddlTimeout:J = 0xbb8L

.field private static devkey:Ljava/lang/String; = ""

.field private static purchaseClientInstance:Lcom/appsflyer/api/PurchaseClient;

.field private static unityObjectName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->unityObjectName:Ljava/lang/String;

    return-object v0
.end method

.method public static varargs addPushNotificationDeepLinkPath([Ljava/lang/String;)V
    .locals 1

    .line 502
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->addPushNotificationDeepLinkPath([Ljava/lang/String;)V

    return-void
.end method

.method public static attributeAndOpenStore(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 431
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0, p1, p2}, Lcom/appsflyer/share/CrossPromotionHelper;->logAndOpenStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static build()V
    .locals 2

    .line 540
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/appsflyer/api/PurchaseClient$Builder;->build()Lcom/appsflyer/api/PurchaseClient;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->purchaseClientInstance:Lcom/appsflyer/api/PurchaseClient;

    return-void

    .line 543
    :cond_0
    const-string v0, "AppsFlyer_Connector"

    const-string v1, "[PurchaseConnector]: Initialization is required prior to building."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static createOneLinkInviteListener(Ljava/util/Map;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/appsflyer/share/ShareInviteHelper;->generateInviteUrl(Landroid/content/Context;)Lcom/appsflyer/share/LinkGenerator;

    move-result-object v0

    .line 442
    const-string v1, "channel"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/appsflyer/share/LinkGenerator;->setChannel(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 443
    const-string v2, "campaign"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/appsflyer/share/LinkGenerator;->setCampaign(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 444
    const-string v3, "referrerName"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/appsflyer/share/LinkGenerator;->setReferrerName(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 445
    const-string v4, "referrerImageUrl"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/appsflyer/share/LinkGenerator;->setReferrerImageURL(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 446
    const-string v5, "customerID"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/appsflyer/share/LinkGenerator;->setReferrerCustomerId(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 447
    const-string v6, "baseDeepLink"

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/appsflyer/share/LinkGenerator;->setBaseDeeplink(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 448
    const-string v7, "brandDomain"

    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/appsflyer/share/LinkGenerator;->setBrandDomain(Ljava/lang/String;)Lcom/appsflyer/share/LinkGenerator;

    .line 450
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    invoke-interface {p0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-interface {p0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-interface {p0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-interface {p0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    invoke-virtual {v0, p0}, Lcom/appsflyer/share/LinkGenerator;->addParameters(Ljava/util/Map;)Lcom/appsflyer/share/LinkGenerator;

    .line 460
    sget-object p0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$6;

    invoke-direct {v1, p1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/appsflyer/share/LinkGenerator;->generateLink(Landroid/content/Context;Lcom/appsflyer/share/LinkGenerator$ResponseListener;)V

    return-void
.end method

.method public static enableFacebookDeferredApplinks(Z)V
    .locals 1

    .line 258
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->enableFacebookDeferredApplinks(Z)V

    return-void
.end method

.method public static enableTCFDataCollection(Z)V
    .locals 1

    .line 154
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->enableTCFDataCollection(Z)V

    return-void
.end method

.method public static getAppsFlyerId()Ljava/lang/String;
    .locals 2

    .line 278
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getAppsFlyerUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAttributionId()Ljava/lang/String;
    .locals 2

    .line 274
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getAttributionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConversionData(Ljava/lang/String;)V
    .locals 2

    .line 335
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->conversionListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-nez v0, :cond_0

    .line 336
    invoke-static {p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->getConversionListener(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object p0

    sput-object p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->conversionListener:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 339
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v1, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->conversionListener:Lcom/appsflyer/AppsFlyerConversionListener;

    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->registerConversionListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerConversionListener;)V

    return-void
.end method

.method private static getConversionListener(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerConversionListener;
    .locals 1

    .line 344
    new-instance v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;

    invoke-direct {v0, p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHostName()Ljava/lang/String;
    .locals 1

    .line 315
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->getHostName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHostPrefix()Ljava/lang/String;
    .locals 1

    .line 319
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->getHostPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOutOfStore()Ljava/lang/String;
    .locals 2

    .line 173
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->getOutOfStore(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 121
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static handlePushNotifications()V
    .locals 2

    .line 423
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->sendPushNotificationData(Landroid/app/Activity;)V

    return-void
.end method

.method public static initInAppPurchaseValidatorListener(Ljava/lang/String;)V
    .locals 3

    .line 385
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$4;

    invoke-direct {v2, p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/appsflyer/AppsFlyerLib;->registerValidatorListener(Landroid/content/Context;Lcom/appsflyer/AppsFlyerInAppPurchaseValidatorListener;)V

    return-void
.end method

.method public static initInAppPurchaseValidatorV2Listener(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;
    .locals 1

    .line 403
    new-instance v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;

    invoke-direct {v0, p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static initPurchaseConnector(Ljava/lang/String;I)V
    .locals 1

    .line 529
    sput-object p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->unityObjectName:Ljava/lang/String;

    .line 530
    invoke-static {p1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->mappingEnum(I)Lcom/appsflyer/api/Store;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 532
    new-instance p1, Lcom/appsflyer/api/PurchaseClient$Builder;

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p0}, Lcom/appsflyer/api/PurchaseClient$Builder;-><init>(Landroid/content/Context;Lcom/appsflyer/api/Store;)V

    sput-object p1, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 533
    invoke-static {p1}, Lcom/appsflyer/unity/PurchaseRevenueBridge;->configurePurchaseClient(Lcom/appsflyer/api/PurchaseClient$Builder;)Lcom/appsflyer/api/PurchaseClient$Builder;

    move-result-object p0

    sput-object p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    return-void

    .line 535
    :cond_0
    const-string p0, "AppsFlyer_Connector"

    const-string p1, "[PurchaseConnector]: Please choose a valid store."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static initSDK(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 78
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->conversionListener:Lcom/appsflyer/AppsFlyerConversionListener;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 79
    invoke-static {p1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->getConversionListener(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerConversionListener;

    move-result-object p1

    sput-object p1, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->conversionListener:Lcom/appsflyer/AppsFlyerConversionListener;

    .line 82
    :cond_0
    sput-object p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->devkey:Ljava/lang/String;

    .line 83
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->setPluginInfo()V

    .line 84
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->conversionListener:Lcom/appsflyer/AppsFlyerConversionListener;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    return-void
.end method

.method public static isPreInstalledApp()Z
    .locals 2

    .line 270
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->isPreInstalledApp(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isTrackingStopped()Z
    .locals 1

    .line 299
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->isStopped()Z

    move-result v0

    return v0
.end method

.method public static logAdRevenue(Ljava/lang/String;Lcom/appsflyer/MediationNetwork;Ljava/lang/String;DLjava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/appsflyer/MediationNetwork;",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 168
    new-instance v0, Lcom/appsflyer/AFAdRevenueData;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/AFAdRevenueData;-><init>(Ljava/lang/String;Lcom/appsflyer/MediationNetwork;Ljava/lang/String;D)V

    .line 169
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    invoke-virtual {p0, v0, p5}, Lcom/appsflyer/AppsFlyerLib;->logAdRevenue(Lcom/appsflyer/AFAdRevenueData;Ljava/util/Map;)V

    return-void
.end method

.method private static mappingEnum(I)Lcom/appsflyer/api/Store;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 864
    :cond_0
    sget-object p0, Lcom/appsflyer/api/Store;->GOOGLE:Lcom/appsflyer/api/Store;

    return-object p0
.end method

.method private static parseNullableBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 379
    :cond_0
    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 380
    :cond_1
    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static recordCrossPromoteImpression(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v0, p0, p1, p2}, Lcom/appsflyer/share/CrossPromotionHelper;->logCrossPromoteImpression(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static setAdditionalData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 185
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setAdditionalData(Ljava/util/Map;)V

    return-void
.end method

.method public static setAndroidIdData(Ljava/lang/String;)V
    .locals 1

    .line 138
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setAndroidIdData(Ljava/lang/String;)V

    return-void
.end method

.method public static setAppInviteOneLinkID(Ljava/lang/String;)V
    .locals 1

    .line 181
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setAppInviteOneLink(Ljava/lang/String;)V

    return-void
.end method

.method public static setAutoLogInApps(Z)V
    .locals 1

    .line 561
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0, p0}, Lcom/appsflyer/api/PurchaseClient$Builder;->autoLogInApps(Z)Lcom/appsflyer/api/PurchaseClient$Builder;

    :cond_0
    return-void
.end method

.method public static setAutoLogSubscriptions(Z)V
    .locals 1

    .line 555
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0, p0}, Lcom/appsflyer/api/PurchaseClient$Builder;->logSubscriptions(Z)Lcom/appsflyer/api/PurchaseClient$Builder;

    :cond_0
    return-void
.end method

.method public static setCollectAndroidID(Z)V
    .locals 1

    .line 197
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCollectAndroidID(Z)V

    return-void
.end method

.method public static setCollectIMEI(Z)V
    .locals 1

    .line 201
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    return-void
.end method

.method public static setCollectOaid(Z)V
    .locals 1

    .line 323
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCollectOaid(Z)V

    return-void
.end method

.method public static setConsentData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 159
    invoke-static {p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->parseNullableBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 160
    invoke-static {p1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->parseNullableBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 161
    invoke-static {p2}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->parseNullableBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    .line 162
    invoke-static {p3}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->parseNullableBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    .line 164
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/AppsFlyerConsent;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerConsent;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->setConsentData(Lcom/appsflyer/AppsFlyerConsent;)V

    return-void
.end method

.method public static setConsumeAFDeepLinks(Z)V
    .locals 0

    return-void
.end method

.method public static setCurrencyCode(Ljava/lang/String;)V
    .locals 1

    .line 217
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCurrencyCode(Ljava/lang/String;)V

    return-void
.end method

.method public static setCustomerIdAndTrack(Ljava/lang/String;)V
    .locals 2

    .line 150
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->setCustomerIdAndLogSession(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static setCustomerUserId(Ljava/lang/String;)V
    .locals 1

    .line 142
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setCustomerUserId(Ljava/lang/String;)V

    return-void
.end method

.method public static setDeepLinkTimeout(J)V
    .locals 0

    .line 523
    sput-wide p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->ddlTimeout:J

    return-void
.end method

.method public static setDeviceTrackingDisabled(Z)V
    .locals 1

    .line 254
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->anonymizeUser(Z)V

    return-void
.end method

.method public static setDisableAdvertisingIdentifiers(Z)V
    .locals 1

    .line 506
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setDisableAdvertisingIdentifiers(Z)V

    return-void
.end method

.method public static setDisableNetworkData(Z)V
    .locals 1

    .line 514
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setDisableNetworkData(Z)V

    return-void
.end method

.method public static setHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 311
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setHost(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setImeiData(Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setImeiData(Ljava/lang/String;)V

    return-void
.end method

.method public static setIsDebug(Z)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setDebugLog(Z)V

    return-void
.end method

.method public static setIsSandbox(Z)V
    .locals 1

    .line 549
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {v0, p0}, Lcom/appsflyer/api/PurchaseClient$Builder;->setSandbox(Z)Lcom/appsflyer/api/PurchaseClient$Builder;

    :cond_0
    return-void
.end method

.method public static setIsUpdate(Z)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setIsUpdate(Z)V

    return-void
.end method

.method public static setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V
    .locals 1

    .line 307
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setLogLevel(Lcom/appsflyer/AFLogger$LogLevel;)V

    return-void
.end method

.method public static setMinTimeBetweenSessions(I)V
    .locals 1

    .line 303
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setMinTimeBetweenSessions(I)V

    return-void
.end method

.method public static varargs setOneLinkCustomDomain([Ljava/lang/String;)V
    .locals 1

    .line 209
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setOneLinkCustomDomain([Ljava/lang/String;)V

    return-void
.end method

.method public static setOutOfStore(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setOutOfStore(Ljava/lang/String;)V

    return-void
.end method

.method public static setPhoneNumber(Ljava/lang/String;)V
    .locals 1

    .line 427
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setPhoneNumber(Ljava/lang/String;)V

    return-void
.end method

.method public static setPluginInfo()V
    .locals 3

    .line 518
    new-instance v0, Lcom/appsflyer/internal/platform_extension/PluginInfo;

    sget-object v1, Lcom/appsflyer/internal/platform_extension/Plugin;->UNITY:Lcom/appsflyer/internal/platform_extension/Plugin;

    const-string v2, "6.17.3"

    invoke-direct {v0, v1, v2}, Lcom/appsflyer/internal/platform_extension/PluginInfo;-><init>(Lcom/appsflyer/internal/platform_extension/Plugin;Ljava/lang/String;)V

    .line 519
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->setPluginInfo(Lcom/appsflyer/internal/platform_extension/PluginInfo;)V

    return-void
.end method

.method public static setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 266
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/appsflyer/AppsFlyerLib;->setPreinstallAttribution(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setPurchaseRevenueValidationListeners(Z)V
    .locals 1

    .line 567
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 568
    new-instance p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$9;

    invoke-direct {p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$9;-><init>()V

    invoke-virtual {v0, p0}, Lcom/appsflyer/api/PurchaseClient$Builder;->setSubscriptionValidationResultListener(Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;)Lcom/appsflyer/api/PurchaseClient$Builder;

    .line 785
    sget-object p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->builder:Lcom/appsflyer/api/PurchaseClient$Builder;

    new-instance v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10;

    invoke-direct {v0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$10;-><init>()V

    invoke-virtual {p0, v0}, Lcom/appsflyer/api/PurchaseClient$Builder;->setInAppValidationResultListener(Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;)Lcom/appsflyer/api/PurchaseClient$Builder;

    :cond_0
    return-void
.end method

.method public static varargs setResolveDeepLinkURLs([Ljava/lang/String;)V
    .locals 1

    .line 205
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setResolveDeepLinkURLs([Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setSharingFilter([Ljava/lang/String;)V
    .locals 1

    .line 331
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilter([Ljava/lang/String;)V

    return-void
.end method

.method public static setSharingFilterForAllPartners()V
    .locals 1

    .line 327
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForAllPartners()V

    return-void
.end method

.method public static varargs setSharingFilterForPartners([Ljava/lang/String;)V
    .locals 1

    .line 510
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setSharingFilterForPartners([Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails(Lcom/appsflyer/AppsFlyerProperties$EmailsCryptType;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs setUserEmails([Ljava/lang/String;)V
    .locals 1

    .line 189
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appsflyer/AppsFlyerLib;->setUserEmails([Ljava/lang/String;)V

    return-void
.end method

.method public static startObservingTransactions()V
    .locals 2

    .line 846
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->purchaseClientInstance:Lcom/appsflyer/api/PurchaseClient;

    if-eqz v0, :cond_0

    .line 847
    invoke-interface {v0}, Lcom/appsflyer/api/PurchaseClient;->startObservingTransactions()V

    return-void

    .line 849
    :cond_0
    const-string v0, "AppsFlyer_Connector"

    const-string v1, "[PurchaseConnector]: startObservingTransactions was not called because the purchase client instance is null, please call build() prior to this function."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static startTracking()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 113
    invoke-static {v0, v1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->startTracking(ZLjava/lang/String;)V

    return-void
.end method

.method public static startTracking(ZLjava/lang/String;)V
    .locals 4

    .line 88
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->devkey:Ljava/lang/String;

    new-instance v3, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$1;

    invoke-direct {v3, p0, p1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$1;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;Ljava/lang/String;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    return-void
.end method

.method public static stopObservingTransactions()V
    .locals 2

    .line 854
    sget-object v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->purchaseClientInstance:Lcom/appsflyer/api/PurchaseClient;

    if-eqz v0, :cond_0

    .line 855
    invoke-interface {v0}, Lcom/appsflyer/api/PurchaseClient;->stopObservingTransactions()V

    return-void

    .line 857
    :cond_0
    const-string v0, "AppsFlyer_Connector"

    const-string v1, "[PurchaseConnector]: stopObservingTransactions was not called because the purchase client instance is null, please call build() prior to this function."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static stopTracking(Z)V
    .locals 2

    .line 117
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, v1}, Lcom/appsflyer/AppsFlyerLib;->stop(ZLandroid/content/Context;)V

    return-void
.end method

.method public static subscribeForDeepLink(Ljava/lang/String;)V
    .locals 4

    .line 479
    sget-wide v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->ddlTimeout:J

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 480
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$7;

    invoke-direct {v1, p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$7;-><init>(Ljava/lang/String;)V

    sget-wide v2, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->ddlTimeout:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;J)V

    return-void

    .line 490
    :cond_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    new-instance v1, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$8;

    invoke-direct {v1, p0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->subscribeForDeepLink(Lcom/appsflyer/deeplink/DeepLinkListener;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 250
    invoke-static {p0, p1, v0, v1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->trackEvent(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;)V

    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/HashMap;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 225
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$2;

    invoke-direct {v2, p2, p3}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$2;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/appsflyer/attribution/AppsFlyerRequestListener;)V

    return-void
.end method

.method public static trackLocation(DD)V
    .locals 6

    .line 221
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    move-wide v2, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/appsflyer/AppsFlyerLib;->logLocation(Landroid/content/Context;DD)V

    return-void
.end method

.method public static updateServerUninstallToken(Ljava/lang/String;)V
    .locals 2

    .line 125
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/AppsFlyerLib;->updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static validateAndTrackInAppPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/appsflyer/AppsFlyerLib;->validateAndLogInAppPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p6, :cond_0

    .line 284
    invoke-static {p6}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->initInAppPurchaseValidatorListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static validateAndTrackInAppPurchaseV2(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 289
    sget-object p0, Lcom/appsflyer/AFPurchaseType;->SUBSCRIPTION:Lcom/appsflyer/AFPurchaseType;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/appsflyer/AFPurchaseType;->ONE_TIME_PURCHASE:Lcom/appsflyer/AFPurchaseType;

    .line 290
    :goto_0
    new-instance v0, Lcom/appsflyer/AFPurchaseDetails;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsflyer/AFPurchaseDetails;-><init>(Lcom/appsflyer/AFPurchaseType;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 293
    invoke-static {p4}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->initInAppPurchaseValidatorV2Listener(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;

    move-result-object p0

    .line 294
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p1, v0, p3, p0}, Lcom/appsflyer/AppsFlyerLib;->validateAndLogInAppPurchase(Lcom/appsflyer/AFPurchaseDetails;Ljava/util/Map;Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;)V

    :cond_1
    return-void
.end method

.method public static waitForCustomerUserId(Z)V
    .locals 1

    .line 146
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appsflyer/AppsFlyerLib;->waitForCustomerUserId(Z)V

    return-void
.end method
