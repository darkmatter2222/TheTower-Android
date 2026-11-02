.class public final Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;
.super Ljava/lang/Object;
.source "AdMobAdapter.kt"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/admob/AdMobAdapter;->collectBiddingData$admobadapter_release(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;",
        "onSuccess",
        "",
        "signal",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;",
        "onFailure",
        "error",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;",
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
.field final synthetic $biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

.field final synthetic this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;->$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;->$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "failed to receive token - %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;)V
    .locals 4

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->getSignalString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;->this$0:Lcom/ironsource/adapters/admob/AdMobAdapter;

    invoke-virtual {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 461
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v2, 0x2

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "token = %s, sdkVersion = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 462
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 463
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string p1, "sdkVersion"

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    iget-object p1, p0, Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;->$biddingDataCallback:Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;

    invoke-interface {p1, v1}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onSuccess(Ljava/util/Map;)V

    return-void
.end method
