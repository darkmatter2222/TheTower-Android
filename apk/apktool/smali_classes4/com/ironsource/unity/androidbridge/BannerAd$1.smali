.class Lcom/ironsource/unity/androidbridge/BannerAd$1;
.super Ljava/lang/Object;
.source "BannerAd.java"

# interfaces
.implements Lcom/unity3d/mediation/banner/LevelPlayBannerAdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/BannerAd;->setup(Ljava/lang/String;FFZZLcom/ironsource/unity/androidbridge/IUnityBannerAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

.field final synthetic val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/BannerAd;Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->this$0:Lcom/ironsource/unity/androidbridge/BannerAd;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAdClicked$4(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V
    .locals 0

    .line 105
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdCollapsed$6(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdCollapsed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdDisplayFailed$3(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-interface {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdDisplayFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdDisplayed$2(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdDisplayed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdExpanded$5(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdExpanded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdLeftApplication$7(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V
    .locals 0

    .line 129
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdLeftApplication(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdLoadFailed$1(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdLoaded$0(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;->onAdLoaded(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdCollapsed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda6;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayFailed(Lcom/unity3d/mediation/LevelPlayAdInfo;Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p2}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1, p2}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 86
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdExpanded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdLeftApplication(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 78
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda7;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd$1;->val$bannerListener:Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$1$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
