.class public final Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;
.super Ljava/lang/Object;
.source "AppLovinInterstitialListener.kt"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0014\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J \u0010\u0017\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;",
        "Lcom/applovin/sdk/AppLovinAdLoadListener;",
        "Lcom/applovin/sdk/AppLovinAdClickListener;",
        "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
        "Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
        "adapter",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V",
        "adReceived",
        "",
        "appLovinAd",
        "Lcom/applovin/sdk/AppLovinAd;",
        "failedToReceiveAd",
        "errorCode",
        "",
        "adDisplayed",
        "adClicked",
        "adHidden",
        "videoPlaybackBegan",
        "videoPlaybackEnded",
        "percentViewed",
        "",
        "fullyWatched",
        "",
        "applovinadapter_release"
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
            "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    .line 16
    iput-object p2, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->adapter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 59
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdClicked()V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 50
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdOpened()V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 68
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdClosed()V

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 28
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->setInterstitialAd$applovinadapter_release(Lcom/applovin/sdk/AppLovinAd;)V

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->setInterstitialAdAvailability$applovinadapter_release(Z)V

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadSuccess()V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    .line 38
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->setInterstitialAdAvailability$applovinadapter_release(Z)V

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    sget-object v2, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v2, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getLoadErrorType(I)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 0

    const-string p2, "appLovinAd"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method
