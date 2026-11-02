.class public final Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;
.super Ljava/lang/Object;
.source "FacebookInterstitialListener.kt"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdExtendedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0018\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u0008\u0010\u001d\u001a\u00020\u0011H\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\nX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;",
        "Lcom/facebook/ads/InterstitialAdExtendedListener;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
        "adapter",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V",
        "showAttempted",
        "",
        "getShowAttempted$facebookadapter_release",
        "()Z",
        "setShowAttempted$facebookadapter_release",
        "(Z)V",
        "didCallClosed",
        "onAdLoaded",
        "",
        "ad",
        "Lcom/facebook/ads/Ad;",
        "onError",
        "adError",
        "Lcom/facebook/ads/AdError;",
        "onInterstitialDisplayed",
        "onLoggingImpression",
        "onAdClicked",
        "onInterstitialDismissed",
        "onInterstitialActivityDestroyed",
        "onRewardedAdCompleted",
        "onRewardedAdServerSucceeded",
        "onRewardedAdServerFailed",
        "facebookadapter_release"
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
.field private final adapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private didCallClosed:Z

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

.field private showAttempted:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    .line 14
    iput-object p2, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->adapter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final getShowAttempted$facebookadapter_release()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->showAttempted:Z

    return v0
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 65
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdClicked()V

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 25
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->setInterstitialAdAvailability$facebookadapter_release(Z)V

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadSuccess()V

    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "adError"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 36
    iget-boolean p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->showAttempted:Z

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->setInterstitialAdAvailability$facebookadapter_release(Z)V

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    sget-object v0, Lcom/ironsource/adapters/facebook/FacebookAdapter;->Companion:Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;

    invoke-virtual {v0, p2}, Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;->getLoadErrorType(Lcom/facebook/ads/AdError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onInterstitialActivityDestroyed()V
    .locals 1

    .line 82
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 83
    iget-boolean v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->didCallClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->didCallClosed:Z

    .line 85
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->didCallClosed:Z

    .line 74
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdClosed()V

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const/4 p1, 0x0

    .line 56
    iput-boolean p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->didCallClosed:Z

    .line 57
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdOpened()V

    return-void
.end method

.method public onRewardedAdCompleted()V
    .locals 1

    .line 90
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public onRewardedAdServerFailed()V
    .locals 1

    .line 98
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public onRewardedAdServerSucceeded()V
    .locals 1

    .line 94
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public final setShowAttempted$facebookadapter_release(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->showAttempted:Z

    return-void
.end method
