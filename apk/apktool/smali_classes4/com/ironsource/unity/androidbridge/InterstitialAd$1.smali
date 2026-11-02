.class Lcom/ironsource/unity/androidbridge/InterstitialAd$1;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Lcom/unity3d/mediation/interstitial/LevelPlayInterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/InterstitialAd;->setupInterstitialListener(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/InterstitialAd;

.field final synthetic val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/InterstitialAd;Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->this$0:Lcom/ironsource/unity/androidbridge/InterstitialAd;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAdClicked$4(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;->onAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdClosed$3(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;->onAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdDisplayFailed$5(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-interface {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;->onAdDisplayFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdDisplayed$2(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;->onAdDisplayed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdInfoChanged$6(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;->onAdInfoChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdLoadFailed$1(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;->onAdLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdLoaded$0(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;->onAdLoaded(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 64
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdClosed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayFailed(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p2}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p2

    .line 73
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1, p2}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda6;-><init>(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/InterstitialAd$1;->val$interstitialAdListener:Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/InterstitialAd$1$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/unity/androidbridge/IUnityInterstitialAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
