.class public final Lcom/unity3d/services/banners/bridge/BannerBridge;
.super Ljava/lang/Object;
.source "BannerBridge.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBannerBridge.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BannerBridge.kt\ncom/unity3d/services/banners/bridge/BannerBridge\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,179:1\n96#2,13:180\n*S KotlinDebug\n*F\n+ 1 BannerBridge.kt\ncom/unity3d/services/banners/bridge/BannerBridge\n*L\n76#1:180,13\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cJ,\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J:\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J\u001a\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001e\u001a\u00020\u0017H\u0007J\u0012\u0010\u001f\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010 \u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010!\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\"\u001a\u00020\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0007\u00a8\u0006#"
    }
    d2 = {
        "Lcom/unity3d/services/banners/bridge/BannerBridge;",
        "",
        "<init>",
        "()V",
        "load",
        "",
        "placementId",
        "",
        "bannerAdId",
        "bannerSize",
        "Lcom/unity3d/services/banners/UnityBannerSize;",
        "loadOptions",
        "Lcom/unity3d/ads/UnityAdsLoadOptions;",
        "onBannerLoaded",
        "bannerAdView",
        "Lcom/unity3d/services/banners/BannerView;",
        "isHeaderBidding",
        "",
        "data",
        "Lorg/json/JSONObject;",
        "destroy",
        "resize",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "alpha",
        "",
        "visibilityChanged",
        "visibility",
        "didLoad",
        "didDestroy",
        "didAttach",
        "didDetach",
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
.field public static final INSTANCE:Lcom/unity3d/services/banners/bridge/BannerBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge;

    invoke-direct {v0}, Lcom/unity3d/services/banners/bridge/BannerBridge;-><init>()V

    sput-object v0, Lcom/unity3d/services/banners/bridge/BannerBridge;->INSTANCE:Lcom/unity3d/services/banners/bridge/BannerBridge;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$onBannerLoaded(Lcom/unity3d/services/banners/bridge/BannerBridge;Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/banners/bridge/BannerBridge;->onBannerLoaded(Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V

    return-void
.end method

.method public static final destroy(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final didAttach(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final didDestroy(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final didDetach(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final didLoad(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final isHeaderBidding(Lorg/json/JSONObject;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    const-string v0, "adMarkup"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private final onBannerLoaded(Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V
    .locals 7

    .line 61
    invoke-virtual {p1}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v5

    .line 63
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    .line 64
    const-string v1, "Banner view not found in cache during show"

    if-nez v0, :cond_0

    if-eqz v5, :cond_5

    .line 67
    new-instance p2, Lcom/unity3d/services/banners/BannerErrorInfo;

    .line 69
    sget-object p3, Lcom/unity3d/services/banners/BannerErrorCode;->NATIVE_ERROR:Lcom/unity3d/services/banners/BannerErrorCode;

    .line 70
    sget-object p4, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {p4}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result p4

    .line 67
    invoke-direct {p2, v1, p3, p4}, Lcom/unity3d/services/banners/BannerErrorInfo;-><init>(Ljava/lang/String;Lcom/unity3d/services/banners/BannerErrorCode;I)V

    .line 65
    invoke-interface {v5, p1, p2}, Lcom/unity3d/services/banners/BannerView$IListener;->onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V

    return-void

    .line 76
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 180
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object p2

    if-nez p2, :cond_1

    .line 79
    instance-of p2, v5, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;

    if-eqz p2, :cond_3

    .line 80
    move-object p2, v5

    check-cast p2, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;

    .line 82
    new-instance p3, Lcom/unity3d/services/banners/BannerErrorInfo;

    .line 84
    sget-object p4, Lcom/unity3d/services/banners/BannerErrorCode;->NATIVE_ERROR:Lcom/unity3d/services/banners/BannerErrorCode;

    .line 85
    sget-object v0, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v0

    .line 82
    invoke-direct {p3, v1, p4, v0}, Lcom/unity3d/services/banners/BannerErrorInfo;-><init>(Ljava/lang/String;Lcom/unity3d/services/banners/BannerErrorCode;I)V

    .line 80
    invoke-interface {p2, p1, p3}, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;->onBannerFailedToShow(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance p2, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {p2}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    .line 94
    invoke-virtual {p4}, Lcom/unity3d/ads/UnityAdsLoadOptions;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/UnityAdsShowOptions;->setObjectId(Ljava/lang/String;)V

    .line 96
    iget-object p4, p4, Lcom/unity3d/ads/UnityAdsLoadOptions;->loadConfiguration:Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 97
    new-instance p4, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    const/4 v1, 0x3

    invoke-direct {p4, v0, v0, v1, v0}, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p2, Lcom/unity3d/ads/UnityAdsShowOptions;->showConfiguration:Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    .line 100
    :cond_2
    new-instance p4, Lcom/unity3d/services/UnityAdsSDK;

    const/4 v1, 0x1

    invoke-direct {p4, v0, v1, v0}, Lcom/unity3d/services/UnityAdsSDK;-><init>(Lcom/unity3d/services/core/di/IServiceProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;

    invoke-direct {v0, v5, p1}, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;-><init>(Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V

    check-cast v0, Lcom/unity3d/ads/core/data/model/Listeners;

    invoke-virtual {p4, p3, p2, v0}, Lcom/unity3d/services/UnityAdsSDK;->show(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;)Lkotlinx/coroutines/Job;

    :cond_3
    :goto_0
    move-object v6, p1

    goto :goto_1

    :cond_4
    move-object v1, v0

    .line 183
    new-instance v0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;

    move-object v6, p1

    move-object v2, p2

    move-object v4, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;-><init>(Landroid/view/View;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Ljava/lang/String;Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_1
    if-eqz v5, :cond_5

    .line 136
    invoke-interface {v5, v6}, Lcom/unity3d/services/banners/BannerView$IListener;->onBannerLoaded(Lcom/unity3d/services/banners/BannerView;)V

    :cond_5
    return-void
.end method

.method public static final resize(Ljava/lang/String;IIIIF)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final visibilityChanged(Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;)V
    .locals 3

    const-string v0, "loadOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {p4}, Lcom/unity3d/ads/UnityAdsLoadOptions;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p4, p2}, Lcom/unity3d/ads/UnityAdsLoadOptions;->setObjectId(Ljava/lang/String;)V

    .line 38
    :goto_0
    new-instance v1, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;

    invoke-direct {v1, p2, v0, p1, p4}, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;-><init>(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V

    check-cast v1, Lcom/unity3d/ads/core/domain/InternalLoadListener;

    .line 52
    new-instance p2, Lcom/unity3d/services/UnityAdsSDK;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v2, v0, v2}, Lcom/unity3d/services/UnityAdsSDK;-><init>(Lcom/unity3d/services/core/di/IServiceProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, p1, p4, v1, p3}, Lcom/unity3d/services/UnityAdsSDK;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/core/domain/InternalLoadListener;Lcom/unity3d/services/banners/UnityBannerSize;)Lkotlinx/coroutines/Job;

    return-void
.end method
