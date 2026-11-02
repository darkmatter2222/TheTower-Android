.class public final Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;
.source "AdMobBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner<",
        "Lcom/ironsource/adapters/admob/AdMobAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\"\u0010\u0016\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016JB\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u001a\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\"\u001a\u00020\u0012H\u0002J\u0018\u0010#\u001a\u00020!2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010$\u001a\u00020%H\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;",
        "Lcom/ironsource/adapters/admob/AdMobAdapter;",
        "networkSettings",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V",
        "bannerAdView",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;",
        "mainHandler",
        "Landroid/os/Handler;",
        "loadAd",
        "",
        "adData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "activity",
        "Landroid/app/Activity;",
        "bannerSize",
        "Lcom/ironsource/mediationsdk/ISBannerSize;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;",
        "destroyAd",
        "collectBiddingData",
        "context",
        "Landroid/content/Context;",
        "biddingDataCallback",
        "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;",
        "loadBanner",
        "networkAdapter",
        "adUnitId",
        "",
        "serverData",
        "getAdSize",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "selectedBannerSize",
        "getAdaptiveBannerSize",
        "width",
        "",
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
.field private bannerAdView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$NwbxPx0A_zxLm7TR0D2wzdyWlto(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->loadAd$lambda$0(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wMpkhpeN5pTJThCJAfNeqeMdXHw(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->destroyAd$lambda$1(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 30
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final destroyAd$lambda$1(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;)V
    .locals 2

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->bannerAdView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->bannerAdView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 84
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

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

.method private final getAdSize(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .locals 3

    .line 150
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CUSTOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;-><init>(II)V

    goto :goto_1

    .line 150
    :sswitch_1
    const-string v1, "BANNER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    goto :goto_1

    .line 150
    :sswitch_2
    const-string v1, "SMART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->LEADERBOARD:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    goto :goto_1

    .line 150
    :sswitch_3
    const-string v1, "LARGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 152
    :cond_4
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->LARGE_BANNER:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    goto :goto_1

    .line 150
    :sswitch_4
    const-string v1, "RECTANGLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 153
    :cond_5
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x0

    .line 159
    :goto_1
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 160
    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->toLevelPlayAdSize(Landroid/content/Context;)Lcom/unity3d/mediation/LevelPlayAdSize;

    move-result-object p2

    .line 161
    invoke-virtual {p2}, Lcom/unity3d/mediation/LevelPlayAdSize;->getWidth()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->getAdaptiveBannerSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_4
        0x44dc31b -> :sswitch_3
        0x4b59da9 -> :sswitch_2
        0x7458732c -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch
.end method

.method private final getAdaptiveBannerSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .locals 1

    .line 171
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLargeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    return-object p1
.end method

.method private static final loadAd$lambda$0(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .locals 1

    .line 65
    :try_start_0
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p7}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->loadBanner(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 67
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

    .line 69
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    .line 71
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

    .line 68
    invoke-interface {p7, p1, p2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method private final loadBanner(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .locals 1

    .line 123
    invoke-direct {p0, p3, p4}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->getAdSize(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p4}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "size not supported, size = %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 128
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p3, 0x3e8

    .line 127
    invoke-interface {p7, p2, p3, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 135
    :cond_0
    new-instance p4, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    invoke-direct {p4, p3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;-><init>(Landroid/content/Context;)V

    const/high16 p3, 0x60000

    .line 136
    invoke-virtual {p4, p3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->setDescendantFocusability(I)V

    .line 137
    iput-object p4, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->bannerAdView:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    .line 139
    new-instance p3, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;

    invoke-direct {p3, p7, p4}, Lcom/ironsource/adapters/admob/banner/AdMobBannerListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V

    .line 140
    move-object p7, p6

    check-cast p7, Ljava/lang/CharSequence;

    if-eqz p7, :cond_2

    invoke-interface {p7}, Ljava/lang/CharSequence;->length()I

    move-result p7

    if-nez p7, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "loading with serverData"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 145
    check-cast p3, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-virtual {p4, p6, p3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void

    .line 141
    :cond_2
    :goto_0
    sget-object p6, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p7, "loadAd"

    invoke-virtual {p6, p7}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, p5, v0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createBannerAdRequest$admobadapter_release(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    move-result-object p1

    check-cast p3, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->loadAd(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V

    return-void
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biddingDataCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adapters/admob/AdMobAdapter;

    if-nez v0, :cond_0

    .line 92
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 93
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v3, "bannerSize"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    instance-of v3, p1, Lcom/ironsource/mediationsdk/ISBannerSize;

    if-eqz v3, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/ironsource/mediationsdk/ISBannerSize;

    :cond_2
    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/ISBannerSize;->isAdaptive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    invoke-direct {p0, p2, v2}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->getAdSize(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 101
    const-string p2, "adaptive_banner_w"

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string p2, "adaptive_banner_h"

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "adaptive banner width = %s, height = %s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 107
    :cond_3
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;

    invoke-virtual {v0, p3, p1, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->collectBiddingData$admobadapter_release(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)V

    return-void
.end method

.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 79
    iget-object p1, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 26
    check-cast p4, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .locals 10

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string v0, "adUnitId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "adUnitId = %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "format(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 38
    move-object v1, v7

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/ironsource/adapters/admob/AdMobAdapter;

    if-nez v3, :cond_1

    .line 51
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 53
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p3, 0x3e8

    .line 52
    invoke-interface {p4, p1, p3, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 60
    :cond_1
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 63
    iget-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v4, p1

    move-object v6, p3

    move-object v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/adapters/admob/banner/AdMobBannerAdapter;Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    :goto_0
    move-object v9, p4

    .line 39
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing param - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 42
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p3, 0x3ea

    .line 41
    invoke-interface {v9, p2, p3, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method
