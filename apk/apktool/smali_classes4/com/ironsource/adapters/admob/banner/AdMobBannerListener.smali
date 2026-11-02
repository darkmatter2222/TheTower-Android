.class public final Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;
.super Ljava/lang/Object;
.source "AdMobBannerListener.kt"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;
.implements Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
        ">;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdMobBannerListener.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdMobBannerListener.kt\ncom/ironsource/adapters/admob/banner/AdMobBannerListener\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,83:1\n1#2:84\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000bH\u0016J\u0008\u0010\u0011\u001a\u00020\u000bH\u0016J\u0008\u0010\u0012\u001a\u00020\u000bH\u0016J\u0008\u0010\u0013\u001a\u00020\u000bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;",
        "adView",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V",
        "onAdLoaded",
        "",
        "ad",
        "onAdFailedToLoad",
        "adError",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;",
        "onAdImpression",
        "onAdClicked",
        "onAdShowedFullScreenContent",
        "onAdDismissedFullScreenContent",
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
.field private final adView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    .line 17
    iput-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->adView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 63
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 64
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdClicked()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 1

    .line 79
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 80
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdScreenDismissed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .locals 5

    const-string v0, "adError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "failed to load, error code = %s, message = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->Companion:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;->getLoadErrorType$admobadapter_release(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;->getCode()Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 55
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 56
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdOpened()V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V
    .locals 4

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 26
    move-object v0, p0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;

    invoke-interface {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdEventCallback;)V

    .line 28
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 31
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getResponseId()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 37
    :cond_1
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v2, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "creativeId = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    iget-object v2, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->adView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    check-cast v2, Landroid/view/View;

    const-string v3, "creativeId"

    invoke-static {v3, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, v2, v0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/Map;)V

    return-void

    .line 35
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->adView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    check-cast v1, Landroid/view/View;

    invoke-interface {p1, v1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->onAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 1

    .line 71
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 72
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdScreenPresented()V

    return-void
.end method
