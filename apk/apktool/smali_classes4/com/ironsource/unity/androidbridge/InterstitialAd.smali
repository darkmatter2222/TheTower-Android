.class public Lcom/ironsource/unity/androidbridge/InterstitialAd;
.super Ljava/lang/Object;
.source "InterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/unity/androidbridge/InterstitialAd$ConfigBuilder;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config;Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mActivity:Landroid/app/Activity;

    .line 18
    new-instance v0, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd$Config;)V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    .line 19
    invoke-direct {p0, p3}, Lcom/ironsource/unity/androidbridge/InterstitialAd;->setupInterstitialListener(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;)V

    return-void
.end method

.method public static isPlacementCapped(Ljava/lang/String;)Z
    .locals 0

    .line 100
    invoke-static {p0}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->isPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setImpressionDataListener$0(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 0

    .line 110
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->getImpressionDataString(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;->onImpressionSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setImpressionDataListener$1(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 1

    .line 109
    new-instance v0, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupInterstitialListener(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;)V
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;-><init>(Lcom/ironsource/unity/androidbridge/InterstitialAd;Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->setListener(Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;)V

    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->getAdId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->isAdReady()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->loadAd()V

    return-void
.end method

.method public setImpressionDataListener(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 109
    :cond_0
    new-instance v0, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V

    move-object p1, v0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    invoke-virtual {v0, p1}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->setImpressionDataListener(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public showAd(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mInterstitialAd:Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAd;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
