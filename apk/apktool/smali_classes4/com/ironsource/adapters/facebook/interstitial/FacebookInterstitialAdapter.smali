.class public final Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;
.source "FacebookInterstitialAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial<",
        "Lcom/ironsource/adapters/facebook/FacebookAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\"\u0010\u001c\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0015\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u000eH\u0000\u00a2\u0006\u0002\u0008!R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;",
        "Lcom/ironsource/adapters/facebook/FacebookAdapter;",
        "networkSettings",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V",
        "mainHandler",
        "Landroid/os/Handler;",
        "interstitialAd",
        "Lcom/facebook/ads/InterstitialAd;",
        "interstitialAdListener",
        "Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;",
        "isAdAvailableFlag",
        "",
        "loadAd",
        "",
        "adData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
        "showAd",
        "activity",
        "Landroid/app/Activity;",
        "isAdAvailable",
        "destroyAd",
        "collectBiddingData",
        "biddingDataCallback",
        "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;",
        "setInterstitialAdAvailability",
        "isAvailable",
        "setInterstitialAdAvailability$facebookadapter_release",
        "facebookadapter_release"
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
.field private interstitialAd:Lcom/facebook/ads/InterstitialAd;

.field private interstitialAdListener:Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;

.field private isAdAvailableFlag:Z

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$S2LQVW4q56qFFkNiI3lgjy5i37w(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->loadAd$lambda$0(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSO9nif1RS67xGX2c1Gu4e8hAb4(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->showAd$lambda$1(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p39SSEiviSLYbRMS29qQiEISY80(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->destroyAd$lambda$2(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 23
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final destroyAd$lambda$2(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 114
    iput-object v0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;

    return-void
.end method

.method private static final loadAd$lambda$0(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/String;)V
    .locals 4

    .line 51
    const-string v0, "format(...)"

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    .line 53
    :cond_0
    new-instance v1, Lcom/facebook/ads/InterstitialAd;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    sget-object p1, Lcom/ironsource/adapters/facebook/FacebookAdapter;->Companion:Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;

    invoke-virtual {p1}, Lcom/ironsource/adapters/facebook/FacebookAdapter$Companion;->getInterstitialFacebookCacheFlags$facebookadapter_release()Ljava/util/EnumSet;

    move-result-object p1

    .line 55
    new-instance v2, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, p3, v3}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V

    .line 56
    iput-object v2, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;

    .line 57
    invoke-virtual {v1}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v3

    .line 58
    invoke-interface {v3, p1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withCacheFlags(Ljava/util/EnumSet;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v3

    .line 59
    check-cast v2, Lcom/facebook/ads/InterstitialAdListener;

    invoke-interface {v3, v2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v2

    .line 60
    move-object v3, p4

    check-cast v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-interface {v2, p4}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withBid(Ljava/lang/String;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    .line 64
    :cond_2
    :goto_0
    sget-object p4, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v3, "loading placementId = %s with facebook cache flags = %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 65
    iput-object v1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    .line 66
    invoke-interface {v2}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "load failed with an exception = %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 71
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p2, 0x3e8

    .line 70
    invoke-interface {p3, p1, p2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method private static final showAd$lambda$1(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .locals 4

    .line 88
    const-string v0, "ad is not available"

    const/4 v1, 0x1

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAd:Lcom/facebook/ads/InterstitialAd;

    if-eqz v2, :cond_2

    .line 90
    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAd;->isAdInvalidated()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->setInterstitialAdAvailability$facebookadapter_release(Z)V

    .line 96
    iget-object p0, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialListener;->setShowAttempted$facebookadapter_release(Z)V

    .line 97
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/ads/InterstitialAd;->show()Z

    return-void

    .line 91
    :cond_2
    :goto_0
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/16 p0, 0x3e9

    .line 92
    invoke-interface {p1, p0, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdShowFailed(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "show failed with an exception = %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 101
    invoke-interface {p1, v0, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .locals 0

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "biddingDataCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 120
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adapters/facebook/FacebookAdapter;

    if-nez p1, :cond_0

    .line 122
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 123
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/ironsource/adapters/facebook/FacebookAdapter;->collectBiddingData$facebookadapter_release(Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    return-void
.end method

.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->setInterstitialAdAvailability$facebookadapter_release(Z)V

    .line 111
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-boolean p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->isAdAvailableFlag:Z

    return p1
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 20
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .locals 7

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    const-string v0, "placementId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez v4, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "placementId = %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "format(...)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 34
    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object v6

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->setInterstitialAdAvailability$facebookadapter_release(Z)V

    .line 50
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Landroid/content/Context;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_1
    move-object p1, p3

    .line 35
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Missing params - %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 38
    sget-object p3, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v0, 0x3ea

    .line 37
    invoke-interface {p1, p3, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public final setInterstitialAdAvailability$facebookadapter_release(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->isAdAvailableFlag:Z

    return-void
.end method

.method public bridge synthetic showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 20
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "listener"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 81
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "ad is not available"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/16 p1, 0x3e9

    .line 83
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;->mainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/facebook/interstitial/FacebookInterstitialAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
