.class Lcom/google/unity/ads/UnityRewardedAd$3;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "UnityRewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityRewardedAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/UnityRewardedAd;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityRewardedAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdFailedToLoad$0$com-google-unity-ads-UnityRewardedAd$3(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityRewardedAdCallback;->onRewardedAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdLoaded$0$com-google-unity-ads-UnityRewardedAd$3()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityRewardedAdCallback;->onRewardedAdLoaded()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityRewardedAd$3$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/UnityRewardedAd$3;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0, p1}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fputrewardedAd(Lcom/google/unity/ads/UnityRewardedAd;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    .line 138
    iget-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetrewardedAd(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/android/gms/ads/OnPaidEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 139
    iget-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {p1}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetrewardedAd(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd$3;->this$0:Lcom/google/unity/ads/UnityRewardedAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityRewardedAd;->-$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 140
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/google/unity/ads/UnityRewardedAd$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityRewardedAd$3$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/UnityRewardedAd$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ad"
        }
    .end annotation

    .line 134
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/google/unity/ads/UnityRewardedAd$3;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V

    return-void
.end method
