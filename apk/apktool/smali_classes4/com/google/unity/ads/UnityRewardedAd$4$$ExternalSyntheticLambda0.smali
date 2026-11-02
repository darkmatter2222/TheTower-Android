.class public final synthetic Lcom/google/unity/ads/UnityRewardedAd$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/UnityRewardedAd$4;

.field public final synthetic f$1:Lcom/google/android/gms/ads/rewarded/RewardItem;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/UnityRewardedAd$4;Lcom/google/android/gms/ads/rewarded/RewardItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$4$$ExternalSyntheticLambda0;->f$0:Lcom/google/unity/ads/UnityRewardedAd$4;

    iput-object p2, p0, Lcom/google/unity/ads/UnityRewardedAd$4$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/ads/rewarded/RewardItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$4$$ExternalSyntheticLambda0;->f$0:Lcom/google/unity/ads/UnityRewardedAd$4;

    iget-object v1, p0, Lcom/google/unity/ads/UnityRewardedAd$4$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/gms/ads/rewarded/RewardItem;

    invoke-virtual {v0, v1}, Lcom/google/unity/ads/UnityRewardedAd$4;->lambda$onUserEarnedReward$0$com-google-unity-ads-UnityRewardedAd$4(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    return-void
.end method
