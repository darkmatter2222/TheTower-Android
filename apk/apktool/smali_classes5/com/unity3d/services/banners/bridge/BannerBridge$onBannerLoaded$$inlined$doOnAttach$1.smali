.class public final Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/bridge/BannerBridge;->onBannerLoaded(Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$doOnAttach$1\n+ 2 BannerBridge.kt\ncom/unity3d/services/banners/bridge/BannerBridge\n*L\n1#1,432:1\n77#2,24:433\n134#2:457\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnAttach$1",
        "Landroid/view/View$OnAttachStateChangeListener;",
        "onViewAttachedToWindow",
        "",
        "view",
        "Landroid/view/View;",
        "onViewDetachedFromWindow",
        "core-ktx_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $bannerAdId$inlined:Ljava/lang/String;

.field final synthetic $bannerAdView$inlined:Lcom/unity3d/services/banners/BannerView;

.field final synthetic $bannerListener$inlined:Lcom/unity3d/services/banners/BannerView$IListener;

.field final synthetic $loadOptions$inlined:Lcom/unity3d/ads/UnityAdsLoadOptions;

.field final synthetic $placementId$inlined:Ljava/lang/String;

.field final synthetic $this_doOnAttach:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Ljava/lang/String;Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$this_doOnAttach:Landroid/view/View;

    iput-object p2, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerAdId$inlined:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$loadOptions$inlined:Lcom/unity3d/ads/UnityAdsLoadOptions;

    iput-object p4, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$placementId$inlined:Ljava/lang/String;

    iput-object p5, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerListener$inlined:Lcom/unity3d/services/banners/BannerView$IListener;

    iput-object p6, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerAdView$inlined:Lcom/unity3d/services/banners/BannerView;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$this_doOnAttach:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 433
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object p1

    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerAdId$inlined:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object p1

    if-nez p1, :cond_1

    .line 435
    iget-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerListener$inlined:Lcom/unity3d/services/banners/BannerView$IListener;

    instance-of v0, p1, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "null cannot be cast to non-null type com.unity3d.ads.BannerShowListenerWithOnFailedToShow"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerListener$inlined:Lcom/unity3d/services/banners/BannerView$IListener;

    check-cast p1, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;

    .line 437
    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerAdView$inlined:Lcom/unity3d/services/banners/BannerView;

    .line 438
    new-instance v1, Lcom/unity3d/services/banners/BannerErrorInfo;

    .line 440
    sget-object v2, Lcom/unity3d/services/banners/BannerErrorCode;->NATIVE_ERROR:Lcom/unity3d/services/banners/BannerErrorCode;

    .line 441
    sget-object v3, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->PUBLIC_ERROR_CODE_SHOW_INTERNAL:Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    invoke-virtual {v3}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->getNumber()I

    move-result v3

    .line 438
    const-string v4, "Banner view not found in cache during show"

    invoke-direct {v1, v4, v2, v3}, Lcom/unity3d/services/banners/BannerErrorInfo;-><init>(Ljava/lang/String;Lcom/unity3d/services/banners/BannerErrorCode;I)V

    .line 436
    invoke-interface {p1, v0, v1}, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;->onBannerFailedToShow(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V

    :cond_0
    return-void

    .line 449
    :cond_1
    new-instance p1, Lcom/unity3d/ads/UnityAdsShowOptions;

    invoke-direct {p1}, Lcom/unity3d/ads/UnityAdsShowOptions;-><init>()V

    .line 450
    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$loadOptions$inlined:Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-virtual {v0}, Lcom/unity3d/ads/UnityAdsLoadOptions;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/UnityAdsShowOptions;->setObjectId(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$loadOptions$inlined:Lcom/unity3d/ads/UnityAdsLoadOptions;

    iget-object v0, v0, Lcom/unity3d/ads/UnityAdsLoadOptions;->loadConfiguration:Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 453
    new-instance v0, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;-><init>(Ljava/lang/String;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p1, Lcom/unity3d/ads/UnityAdsShowOptions;->showConfiguration:Lcom/unity3d/ads/core/data/model/ShowConfigurationInternal;

    .line 456
    :cond_2
    new-instance v0, Lcom/unity3d/services/UnityAdsSDK;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/unity3d/services/UnityAdsSDK;-><init>(Lcom/unity3d/services/core/di/IServiceProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$placementId$inlined:Ljava/lang/String;

    new-instance v2, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;

    iget-object v3, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerListener$inlined:Lcom/unity3d/services/banners/BannerView$IListener;

    iget-object v4, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$$inlined$doOnAttach$1;->$bannerAdView$inlined:Lcom/unity3d/services/banners/BannerView;

    invoke-direct {v2, v3, v4}, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;-><init>(Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V

    check-cast v2, Lcom/unity3d/ads/core/data/model/Listeners;

    invoke-virtual {v0, v1, p1, v2}, Lcom/unity3d/services/UnityAdsSDK;->show(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
