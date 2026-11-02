.class public final Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;
.super Ljava/lang/Object;
.source "BannerBridge.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/InternalLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/banners/bridge/BannerBridge;->load(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/services/banners/UnityBannerSize;Lcom/unity3d/ads/UnityAdsLoadOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/unity3d/services/banners/bridge/BannerBridge$load$listener$1",
        "Lcom/unity3d/ads/core/domain/InternalLoadListener;",
        "onAdLoadFail",
        "",
        "error",
        "Lcom/unity3d/ads/UnityAdsError;",
        "onAdLoaded",
        "adObject",
        "Lcom/unity3d/ads/core/data/model/AdObject;",
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
.field final synthetic $bannerAdId:Ljava/lang/String;

.field final synthetic $bannerAdView:Lcom/unity3d/services/banners/BannerView;

.field final synthetic $loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

.field final synthetic $placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$bannerAdId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$bannerAdView:Lcom/unity3d/services/banners/BannerView;

    iput-object p3, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$placementId:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadFail(Lcom/unity3d/ads/UnityAdsError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$bannerAdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/services/banners/BannerViewCache;->getBannerView(Ljava/lang/String;)Lcom/unity3d/services/banners/BannerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/unity3d/services/banners/BannerErrorInfo;->fromLoadError(Lcom/unity3d/ads/UnityAdsError;)Lcom/unity3d/services/banners/BannerErrorInfo;

    move-result-object p1

    .line 45
    invoke-virtual {v0}, Lcom/unity3d/services/banners/BannerView;->getListener()Lcom/unity3d/services/banners/BannerView$IListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/unity3d/services/banners/BannerView$IListener;->onBannerFailedToLoad(Lcom/unity3d/services/banners/BannerView;Lcom/unity3d/services/banners/BannerErrorInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/ads/core/data/model/AdObject;)V
    .locals 4

    const-string v0, "adObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/unity3d/services/banners/bridge/BannerBridge;->INSTANCE:Lcom/unity3d/services/banners/bridge/BannerBridge;

    iget-object v0, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$bannerAdView:Lcom/unity3d/services/banners/BannerView;

    iget-object v1, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$bannerAdId:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$placementId:Ljava/lang/String;

    iget-object v3, p0, Lcom/unity3d/services/banners/bridge/BannerBridge$load$listener$1;->$loadOptions:Lcom/unity3d/ads/UnityAdsLoadOptions;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/unity3d/services/banners/bridge/BannerBridge;->access$onBannerLoaded(Lcom/unity3d/services/banners/bridge/BannerBridge;Lcom/unity3d/services/banners/BannerView;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;)V

    return-void
.end method
