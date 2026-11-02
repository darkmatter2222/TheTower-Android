.class public final Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;
.super Ljava/lang/Object;
.source "BannerBridge.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/model/Listeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/bridge/BannerBridge;->onBannerLoaded(Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0005H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "com/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2",
        "Lcom/unity3d/ads/core/data/model/Listeners;",
        "onLeftApplication",
        "",
        "placementId",
        "",
        "onComplete",
        "state",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;",
        "onClick",
        "onStart",
        "onError",
        "error",
        "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;",
        "message",
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


# instance fields
.field final synthetic $bannerAdView:Lcom/unity3d/services/banners/BannerView;

.field final synthetic $bannerListener:Lcom/unity3d/services/banners/BannerView$IListener;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/BannerView$IListener;Lcom/unity3d/services/banners/BannerView;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerListener:Lcom/unity3d/services/banners/BannerView$IListener;

    iput-object p2, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerAdView:Lcom/unity3d/services/banners/BannerView;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerListener:Lcom/unity3d/services/banners/BannerView$IListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerAdView:Lcom/unity3d/services/banners/BannerView;

    invoke-interface {p1, v0}, Lcom/unity3d/services/banners/BannerView$IListener;->onBannerClick(Lcom/unity3d/services/banners/BannerView;)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowCompletionState;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerListener:Lcom/unity3d/services/banners/BannerView$IListener;

    instance-of p1, p1, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;

    if-eqz p1, :cond_0

    .line 126
    invoke-static {p2, p3}, Lcom/unity3d/services/banners/BannerErrorInfo;->fromShowError(Lcom/unity3d/ads/UnityAds$UnityAdsShowError;Ljava/lang/String;)Lcom/unity3d/services/banners/BannerErrorInfo;

    move-result-object p1

    .line 127
    iget-object p2, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerListener:Lcom/unity3d/services/banners/BannerView$IListener;

    const-string p3, "null cannot be cast to non-null type com.unity3d.ads.BannerShowListenerWithOnFailedToShow"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;

    .line 128
    iget-object p3, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerAdView:Lcom/unity3d/services/banners/BannerView;

    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    invoke-interface {p2, p3, p1}, Lcom/unity3d/ads/BannerShowListenerWithOnFailedToShow;->onBannerFailedToShow(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V

    :cond_0
    return-void
.end method

.method public onLeftApplication(Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerListener:Lcom/unity3d/services/banners/BannerView$IListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerAdView:Lcom/unity3d/services/banners/BannerView;

    invoke-interface {p1, v0}, Lcom/unity3d/services/banners/BannerView$IListener;->onBannerLeftApplication(Lcom/unity3d/services/banners/BannerView;)V

    :cond_0
    return-void
.end method

.method public onRewarded(Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-static {p0, p1}, Lcom/unity3d/ads/core/data/model/Listeners$DefaultImpls;->onRewarded(Lcom/unity3d/ads/core/data/model/Listeners;Ljava/lang/String;)V

    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 1

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerListener:Lcom/unity3d/services/banners/BannerView$IListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$onBannerLoaded$1$2;->$bannerAdView:Lcom/unity3d/services/banners/BannerView;

    invoke-interface {p1, v0}, Lcom/unity3d/services/banners/BannerView$IListener;->onBannerShown(Lcom/unity3d/services/banners/BannerView;)V

    :cond_0
    return-void
.end method
