.class public Lcom/ironsource/unity/androidbridge/RewardedAd;
.super Ljava/lang/Object;
.source "RewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/unity/androidbridge/RewardedAd$ConfigBuilder;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mActivity:Landroid/app/Activity;

    .line 21
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;-><init>(Ljava/lang/String;Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;)V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    .line 22
    invoke-direct {p0, p3}, Lcom/ironsource/unity/androidbridge/RewardedAd;->setupRewardedListener(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V

    return-void
.end method

.method public static isPlacementCapped(Ljava/lang/String;)Z
    .locals 0

    .line 115
    invoke-static {p0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->isPlacementCapped(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$setImpressionDataListener$0(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 0

    .line 129
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->getImpressionDataString(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;->onImpressionSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setImpressionDataListener$1(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 1

    .line 128
    new-instance v0, Lcom/ironsource/unity/androidbridge/RewardedAd$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setupRewardedListener(Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    new-instance v1, Lcom/ironsource/unity/androidbridge/RewardedAd$1;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$1;-><init>(Lcom/ironsource/unity/androidbridge/RewardedAd;Lcom/ironsource/unity/androidbridge/IUnityRewardedAdListener;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->setListener(Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAdListener;)V

    return-void
.end method


# virtual methods
.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->getAdId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReward(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->getReward(Ljava/lang/String;)Lcom/unity3d/mediation/rewarded/LevelPlayReward;

    move-result-object p1

    return-object p1
.end method

.method public isAdReady()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->isAdReady()Z

    move-result v0

    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->loadAd()V

    return-void
.end method

.method public setImpressionDataListener(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 128
    :cond_0
    new-instance v0, Lcom/ironsource/unity/androidbridge/RewardedAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/ironsource/unity/androidbridge/RewardedAd$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V

    move-object p1, v0

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    invoke-virtual {v0, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->setImpressionDataListener(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public showAd(Ljava/lang/String;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mRewardedAd:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/RewardedAd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd;->showAd(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
