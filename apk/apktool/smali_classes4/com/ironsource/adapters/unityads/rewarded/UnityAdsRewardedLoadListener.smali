.class public final Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;
.super Ljava/lang/Object;
.source "UnityAdsRewardedLoadListener.kt"

# interfaces
.implements Lcom/unity3d/ads/LoadListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unity3d/ads/LoadListener<",
        "Lcom/unity3d/ads/RewardedAd;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;",
        "Lcom/unity3d/ads/LoadListener;",
        "Lcom/unity3d/ads/RewardedAd;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;",
        "adapter",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedAdapter;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;Ljava/lang/ref/WeakReference;)V",
        "onAdLoaded",
        "",
        "unityAd",
        "error",
        "Lcom/unity3d/ads/UnityAdsError;",
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
.field private final adapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedAdapter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    .line 15
    iput-object p2, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;->adapter:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAdLoaded(Lcom/unity3d/ads/RewardedAd;Lcom/unity3d/ads/UnityAdsError;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 20
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 21
    iget-object p2, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;->adapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedAdapter;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedAdapter;->setRewardedAd$unityadsadapter_release(Lcom/unity3d/ads/RewardedAd;)V

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdLoadSuccess()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 24
    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result p1

    goto :goto_0

    :cond_2
    const/16 p1, 0x3e8

    :goto_0
    if-eqz p2, :cond_3

    .line 25
    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    const-string v0, ""

    .line 26
    :cond_4
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    sget-object v2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    invoke-virtual {v2, p2}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;->getLoadErrorType(Lcom/unity3d/ads/UnityAdsError;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object p2

    invoke-interface {v1, p2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V
    .locals 0

    .line 13
    check-cast p1, Lcom/unity3d/ads/RewardedAd;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/unityads/rewarded/UnityAdsRewardedLoadListener;->onAdLoaded(Lcom/unity3d/ads/RewardedAd;Lcom/unity3d/ads/UnityAdsError;)V

    return-void
.end method
