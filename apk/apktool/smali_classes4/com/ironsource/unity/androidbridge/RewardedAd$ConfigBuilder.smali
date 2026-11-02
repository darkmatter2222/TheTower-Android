.class public Lcom/ironsource/unity/androidbridge/RewardedAd$ConfigBuilder;
.super Ljava/lang/Object;
.source "RewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/unity/androidbridge/RewardedAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigBuilder"
.end annotation


# instance fields
.field private final builder:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;

    invoke-direct {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;-><init>()V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$ConfigBuilder;->builder:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;

    return-void
.end method


# virtual methods
.method public build()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$ConfigBuilder;->builder:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;

    invoke-virtual {v0}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;->build()Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config;

    move-result-object v0

    return-object v0
.end method

.method public setBidFloor(D)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/RewardedAd$ConfigBuilder;->builder:Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;->setBidFloor(D)Lcom/unity3d/mediation/rewarded/LevelPlayRewardedAd$Config$Builder;

    return-void
.end method
