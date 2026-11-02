.class Lcom/ironsource/unity/androidbridge/RewardedAd$1;
.super Ljava/lang/Object;
.source "RewardedAd.java"

# interfaces
.implements Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/unity/androidbridge/RewardedAd;->setupRewardedListener(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/unity/androidbridge/RewardedAd;

.field final synthetic val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;


# direct methods
.method constructor <init>(Lcom/ironsource/unity/androidbridge/RewardedAd;Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->this$0:Lcom/ironsource/unity/androidbridge/RewardedAd;

    iput-object p2, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAdClicked$7(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdClosed$5(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdDisplayFailed$4(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-interface {p0, p1, p2}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdDisplayFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdDisplayed$2(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdDisplayed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdInfoChanged$6(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdInfoChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdLoadFailed$1(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdLoadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdLoaded$0(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAdRewarded$3(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 63
    invoke-interface {p0, p1, p2, p3}, Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;->onAdRewarded(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdClosed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayFailed(Lcom/unity3d/mediation/LevelPlayAdError;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 70
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p2}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p2

    .line 72
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1, p2}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdDisplayed(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda6;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdInfoChanged(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda7;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/unity3d/mediation/LevelPlayAdError;)V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 42
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adErrorToString(Lcom/unity3d/mediation/LevelPlayAdError;)Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 34
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda5;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onAdRewarded(Lcom/unity3d/mediation/rewarded/LevelPlayReward;Lcom/unity3d/mediation/LevelPlayAdInfo;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p2}, Lcom/ironsource/unity/androidbridge/LevelPlayUtils;->adInfoToString(Lcom/unity3d/mediation/LevelPlayAdInfo;)Ljava/lang/String;

    move-result-object p2

    .line 60
    invoke-virtual {p1}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/unity3d/mediation/rewarded/LevelPlayReward;->getAmount()I

    move-result p1

    .line 62
    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$1;->val$rewardedAdListener:Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;

    new-instance v2, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p2, v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1$$ExternalSyntheticLambda4;-><init>(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
