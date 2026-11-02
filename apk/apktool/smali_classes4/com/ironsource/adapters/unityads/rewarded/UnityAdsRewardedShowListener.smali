.class public final Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;
.super Ljava/lang/Object;
.source "UnityAdsRewardedShowListener.kt"

# interfaces
.implements Lcom/unity3d/ads/RewardedShowListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0018\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;",
        "Lcom/unity3d/ads/RewardedShowListener;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V",
        "onStarted",
        "",
        "unityAd",
        "Lcom/unity3d/ads/RewardedAd;",
        "onFailed",
        "error",
        "Lcom/unity3d/ads/UnityAdsError;",
        "onClicked",
        "onRewarded",
        "rewardedAd",
        "onCompleted",
        "state",
        "Lcom/unity3d/ads/ShowFinishState;",
        "unityadsadapter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/unity3d/ads/RewardedAd;)V
    .locals 1

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 27
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdClicked()V

    return-void
.end method

.method public bridge synthetic onClicked(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/unity3d/ads/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->onClicked(Lcom/unity3d/ads/RewardedAd;)V

    return-void
.end method

.method public onCompleted(Lcom/unity3d/ads/RewardedAd;Lcom/unity3d/ads/ShowFinishState;)V
    .locals 1

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "state"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 37
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdClosed()V

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;Lcom/unity3d/ads/ShowFinishState;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/unity3d/ads/RewardedAd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->onCompleted(Lcom/unity3d/ads/RewardedAd;Lcom/unity3d/ads/ShowFinishState;)V

    return-void
.end method

.method public onFailed(Lcom/unity3d/ads/RewardedAd;Lcom/unity3d/ads/UnityAdsError;)V
    .locals 3

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to show, errorCode = %s, errorMessage = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result v0

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, p2

    :goto_0
    invoke-interface {p1, v0, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/unity3d/ads/RewardedAd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->onFailed(Lcom/unity3d/ads/RewardedAd;Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method

.method public onRewarded(Lcom/unity3d/ads/RewardedAd;)V
    .locals 1

    const-string v0, "rewardedAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 32
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdRewarded()V

    return-void
.end method

.method public onStarted(Lcom/unity3d/ads/RewardedAd;)V
    .locals 1

    const-string v0, "unityAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 17
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdOpened()V

    return-void
.end method

.method public bridge synthetic onStarted(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lcom/unity3d/ads/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedShowListener;->onStarted(Lcom/unity3d/ads/RewardedAd;)V

    return-void
.end method
