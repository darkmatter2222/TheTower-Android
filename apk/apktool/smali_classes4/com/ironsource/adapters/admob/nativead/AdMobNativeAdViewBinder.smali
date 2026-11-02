.class public final Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;
.super Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;
.source "AdMobNativeAdViewBinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;",
        "nativeAd",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;",
        "<init>",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V",
        "adMobNativeAdView",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;",
        "setNativeAdView",
        "",
        "nativeAdView",
        "Landroid/view/View;",
        "networkNativeAdView",
        "Landroid/view/ViewGroup;",
        "getNetworkNativeAdView",
        "()Landroid/view/ViewGroup;",
        "admobadapter_release"
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
.field private adMobNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

.field private final nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .locals 1

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    return-void
.end method


# virtual methods
.method public getNetworkNativeAdView()Landroid/view/ViewGroup;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->adMobNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setNativeAdView(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "adView is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getTitleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getAdvertiserView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    .line 28
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getBodyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    .line 31
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getMediaView()Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 32
    new-instance v3, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;-><init>(Landroid/content/Context;)V

    .line 33
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getCallToActionView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->addView(Landroid/view/View;)V

    .line 38
    iget-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;->registerNativeAd(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaView;)V

    .line 40
    iput-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdViewBinder;->adMobNativeAdView:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdView;

    return-void
.end method
