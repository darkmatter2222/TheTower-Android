.class public final Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;
.source "AdMobRewardedAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo<",
        "Lcom/ironsource/adapters/admob/AdMobAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\"\u0010\u001c\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0017\u0010\u001f\u001a\u00020\u00102\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008 J\u0015\u0010!\u001a\u00020\u00102\u0006\u0010\"\u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008#R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;",
        "Lcom/ironsource/adapters/admob/AdMobAdapter;",
        "networkSettings",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V",
        "rewardedAd",
        "Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;",
        "rewardedAdListener",
        "Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;",
        "isAdAvailableFlag",
        "",
        "mainHandler",
        "Landroid/os/Handler;",
        "loadAd",
        "",
        "adData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;",
        "showAd",
        "activity",
        "Landroid/app/Activity;",
        "isAdAvailable",
        "destroyAd",
        "collectBiddingData",
        "biddingDataCallback",
        "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;",
        "setRewardedAd",
        "setRewardedAd$admobadapter_release",
        "setRewardedAdAvailability",
        "isAvailable",
        "setRewardedAdAvailability$admobadapter_release",
        "admobadapter_release"
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
.field private isAdAvailableFlag:Z

.field private final mainHandler:Landroid/os/Handler;

.field private rewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

.field private rewardedAdListener:Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;


# direct methods
.method public static synthetic $r8$lambda$UEtSywWcwW1TJOG6EIAtMhkMnQA(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->loadAd$lambda$0(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tDr6ed-Vd0n-Jjg3kqA2_j7kDME(Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->showAd$lambda$2(Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseRewardedVideo;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final loadAd$lambda$0(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;)V
    .locals 1

    .line 63
    move-object v0, p0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "loading with serverData"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 68
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;

    check-cast p4, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-virtual {p1, p0, p4}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;->loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void

    .line 64
    :cond_1
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createAdRequest$admobadapter_release(Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p0

    .line 65
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;

    check-cast p4, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-virtual {p1, p0, p4}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method

.method private static final showAd$lambda$2(Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;Landroid/app/Activity;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->rewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    if-eqz v0, :cond_1

    .line 84
    iget-object p0, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->rewardedAdListener:Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;

    if-nez p0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    move-object v1, p0

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAdEventCallback;)V

    .line 86
    check-cast p0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;

    invoke-interface {v0, p1, p0}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/libraries/ads/mobile/sdk/rewarded/OnUserEarnedRewardListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .locals 1

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "biddingDataCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adapters/admob/AdMobAdapter;

    if-nez p1, :cond_0

    .line 103
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 104
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    sget-object p2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->REWARDED:Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->collectBiddingData$admobadapter_release(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)V

    return-void
.end method

.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const/4 p1, 0x0

    .line 95
    iput-object p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->rewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    .line 96
    iput-object p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->rewardedAdListener:Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->isAdAvailableFlag:Z

    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->rewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->isAdAvailableFlag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 21
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V
    .locals 6

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "listener"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string p2, "adUnitId"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "adUnitId = %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "format(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 35
    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/ironsource/adapters/admob/AdMobAdapter;

    if-nez v2, :cond_1

    .line 48
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 50
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v0, 0x3e8

    .line 49
    invoke-interface {p3, p1, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object v1

    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->setRewardedAdAvailability$admobadapter_release(Z)V

    .line 59
    new-instance v5, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v5, p3, p2}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;Ljava/lang/ref/WeakReference;)V

    .line 60
    iput-object v5, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->rewardedAdListener:Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;

    .line 62
    iget-object p2, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter$$ExternalSyntheticLambda1;

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 36
    :cond_2
    :goto_0
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing param - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 39
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v0, 0x3ea

    .line 38
    invoke-interface {p3, p2, v0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public final setRewardedAd$admobadapter_release(Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->rewardedAd:Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedAd;

    return-void
.end method

.method public final setRewardedAdAvailability$admobadapter_release(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->isAdAvailableFlag:Z

    return-void
.end method

.method public bridge synthetic showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 21
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 76
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Ad not ready to display"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 78
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;->mainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p2}, Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/admob/rewarded/AdMobRewardedAdapter;Landroid/app/Activity;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
