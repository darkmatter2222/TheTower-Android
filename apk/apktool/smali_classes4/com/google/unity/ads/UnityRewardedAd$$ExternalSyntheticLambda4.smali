.class public final synthetic Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/unity/ads/UnityRewardedAd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/unity/ads/UnityRewardedAd;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda4;->f$0:Lcom/google/unity/ads/UnityRewardedAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda4;->f$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-virtual {v0}, Lcom/google/unity/ads/UnityRewardedAd;->lambda$pollAd$1$com-google-unity-ads-UnityRewardedAd()V

    return-void
.end method
