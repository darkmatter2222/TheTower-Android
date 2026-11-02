.class public final Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/E9;


# instance fields
.field private final a:Lcom/ironsource/D9;

.field private b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/D9;)V
    .locals 1

    const-string v0, "interstitialAdInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->a:Lcom/ironsource/D9;

    .line 10
    invoke-virtual {p1, p0}, Lcom/ironsource/D9;->a(Lcom/ironsource/E9;)V

    return-void
.end method


# virtual methods
.method public final getAdInfo()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->a:Lcom/ironsource/D9;

    invoke-virtual {v0}, Lcom/ironsource/D9;->b()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getListener()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;

    return-object v0
.end method

.method public final isReadyToShow()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->a:Lcom/ironsource/D9;

    invoke-virtual {v0}, Lcom/ironsource/D9;->d()Z

    move-result v0

    return v0
.end method

.method public onAdInstanceDidBecomeVisible()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->getAdInfo()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterstitialAdListener onInterstitialAdShown adInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;->onInterstitialAdShown(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;)V

    :cond_0
    return-void
.end method

.method public onAdInstanceDidClick()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->getAdInfo()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterstitialAdListener onInterstitialAdClicked adInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;->onInterstitialAdClicked(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;)V

    :cond_0
    return-void
.end method

.method public onAdInstanceDidDismiss()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->getAdInfo()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterstitialAdListener onInterstitialAdDismissed adInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;->onInterstitialAdDismissed(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;)V

    :cond_0
    return-void
.end method

.method public onAdInstanceDidFailedToShow(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 2
    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->getAdInfo()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterstitialAdListener onInterstitialAdFailedToShow error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;->onInterstitialAdFailedToShow(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    :cond_0
    return-void
.end method

.method public onAdInstanceDidReward(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onAdInstanceDidShow()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->getAdInfo()Lcom/unity3d/ironsourceads/interstitial/InterstitialAdInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "InterstitialAdListener onInterstitialAdShown adInfo: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->info(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;->onInterstitialAdShown(Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;)V

    :cond_0
    return-void
.end method

.method public final setListener(Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->b:Lcom/unity3d/ironsourceads/interstitial/InterstitialAdListener;

    return-void
.end method

.method public final show(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->info()V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ironsourceads/interstitial/InterstitialAd;->a:Lcom/ironsource/D9;

    invoke-virtual {v0, p1}, Lcom/ironsource/D9;->a(Landroid/app/Activity;)V

    return-void
.end method
