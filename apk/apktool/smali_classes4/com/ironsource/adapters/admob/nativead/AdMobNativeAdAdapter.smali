.class public final Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseNativeAd;
.source "AdMobNativeAdAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseNativeAd<",
        "Lcom/ironsource/adapters/admob/AdMobAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\"\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0017\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0000\u00a2\u0006\u0002\u0008\u0018J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseNativeAd;",
        "Lcom/ironsource/adapters/admob/AdMobAdapter;",
        "networkSettings",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V",
        "nativeAd",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;",
        "mainHandler",
        "Landroid/os/Handler;",
        "loadAd",
        "",
        "adData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;",
        "destroyAd",
        "collectBiddingData",
        "biddingDataCallback",
        "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;",
        "setNativeAd",
        "setNativeAd$admobadapter_release",
        "getAdChoicesPlacement",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "adOptionsPosition",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;",
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
.field private final mainHandler:Landroid/os/Handler;

.field private nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;


# direct methods
.method public static synthetic $r8$lambda$Fi8Bcd_bZv-nrtdNqYNTeKl1-O0(Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->destroyAd$lambda$1(Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Oy6OHPw15ZVsXKpbaVD3vX_0YS4(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->loadAd$lambda$0(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseNativeAd;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final destroyAd$lambda$1(Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;)V
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 88
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v1, "destroy exception - %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "format(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private final getAdChoicesPlacement(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;
    .locals 1

    .line 113
    sget-object v0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 117
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->BOTTOM_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object p1

    .line 113
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 116
    :cond_1
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->BOTTOM_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object p1

    .line 115
    :cond_2
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_RIGHT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object p1

    .line 114
    :cond_3
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;->TOP_LEFT:Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    return-object p1
.end method

.method private static final loadAd$lambda$0(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V
    .locals 1

    .line 63
    :try_start_0
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
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;

    check-cast p6, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-virtual {p1, p0, p6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;->loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V

    return-void

    .line 64
    :cond_1
    :goto_0
    invoke-direct {p3, p4}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->getAdChoicesPlacement(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object p0

    invoke-virtual {p1, p2, p0, p5}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createNativeAdRequest$admobadapter_release(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-result-object p0

    .line 65
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;

    check-cast p6, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-virtual {p1, p0, p6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoader$Companion;->load(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 71
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p4, "load exception - %s"

    invoke-static {p4, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p5, "format(...)"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    .line 75
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x3e8

    .line 72
    invoke-interface {p7, p1, p2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .locals 1

    const-string p1, "context"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "biddingDataCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    check-cast p1, Lcom/ironsource/adapters/admob/AdMobAdapter;

    if-nez p1, :cond_0

    .line 96
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 97
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    sget-object p2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->collectBiddingData$admobadapter_release(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)V

    return-void
.end method

.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 83
    iget-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 23
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V
    .locals 9

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
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

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
    invoke-interface {p3, p1, v0, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->getNativeAdProperties(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/NativeAdProperties;->getAdOptionsPosition()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    move-result-object v5

    .line 58
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v7, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v7, p2, p3}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;-><init>(Ljava/lang/ref/WeakReference;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V

    .line 61
    iget-object p2, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter$$ExternalSyntheticLambda0;

    move-object v4, p0

    move-object v6, p1

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/ironsource/adapters/admob/AdMobAdapter;Ljava/lang/String;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdListener;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    move-object v8, p3

    .line 36
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

    const/16 p3, 0x3ea

    .line 38
    invoke-interface {v8, p2, p3, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NativeAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public final setNativeAd$admobadapter_release(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/ironsource/adapters/admob/nativead/AdMobNativeAdAdapter;->nativeAd:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    return-void
.end method
