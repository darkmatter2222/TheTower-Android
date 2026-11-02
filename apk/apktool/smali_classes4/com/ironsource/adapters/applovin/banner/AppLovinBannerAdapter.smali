.class public final Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;
.source "AppLovinBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner<",
        "Lcom/ironsource/adapters/applovin/AppLovinAdapter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;",
        "Lcom/ironsource/adapters/applovin/AppLovinAdapter;",
        "networkSettings",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V",
        "mainHandler",
        "Landroid/os/Handler;",
        "bannerAdView",
        "Lcom/applovin/adview/AppLovinAdView;",
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
        "getBannerSize",
        "Lcom/applovin/sdk/AppLovinAdSize;",
        "context",
        "Landroid/content/Context;",
        "getBannerLayoutParams",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "applovinadapter_release"
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
.field private bannerAdView:Lcom/applovin/adview/AppLovinAdView;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$GNqU15mw6erXvoW3hRn9fYh1Aiw(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->destroyAd$lambda$1(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SXv7L30Ueo90R7Wnt0QeQexHo9k(Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->loadAd$lambda$0(Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    .line 26
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final destroyAd$lambda$1(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->bannerAdView:Lcom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/adview/AppLovinAdView;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->bannerAdView:Lcom/applovin/adview/AppLovinAdView;

    return-void
.end method

.method private final getBannerLayoutParams(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    .line 121
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x32

    const/16 v4, 0x140

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 147
    :cond_0
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p2

    const/16 v0, 0x28

    if-gt v0, p2, :cond_1

    const/16 v0, 0x3d

    if-ge p2, v0, :cond_1

    .line 148
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 149
    invoke-static {p1, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 150
    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    .line 148
    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    .line 153
    :cond_1
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/16 :goto_1

    .line 121
    :sswitch_1
    const-string p2, "BANNER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :sswitch_2
    const-string p2, "SMART"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 134
    :cond_2
    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 135
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x2d8

    .line 136
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x5a

    .line 137
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    .line 135
    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 140
    :cond_3
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    invoke-static {p1, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 142
    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    .line 140
    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 121
    :sswitch_3
    const-string p2, "LARGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    .line 123
    :cond_4
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 124
    invoke-static {p1, v4}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 125
    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    .line 123
    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 121
    :sswitch_4
    const-string p2, "RECTANGLE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    .line 128
    :cond_5
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x12c

    .line 129
    invoke-static {p1, v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0xfa

    .line 130
    invoke-static {p1, v1}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result p1

    .line 128
    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    .line 156
    :cond_6
    :goto_0
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_1
    const/16 p1, 0x11

    .line 159
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_4
        0x44dc31b -> :sswitch_3
        0x4b59da9 -> :sswitch_2
        0x7458732c -> :sswitch_1
        0x77297f71 -> :sswitch_0
    .end sparse-switch
.end method

.method private final getBannerSize(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 3

    .line 100
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "CUSTOM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result p1

    const/16 p2, 0x28

    if-gt p2, p1, :cond_1

    const/16 p2, 0x3d

    if-ge p1, p2, :cond_1

    .line 111
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :cond_1
    return-object v1

    .line 100
    :sswitch_1
    const-string p1, "BANNER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :sswitch_2
    const-string p2, "SMART"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 107
    :cond_2
    invoke-static {p1}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->LEADER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :cond_3
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 100
    :sswitch_3
    const-string p1, "LARGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 102
    :cond_4
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    .line 100
    :sswitch_4
    const-string p1, "RECTANGLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    .line 104
    :cond_5
    sget-object p1, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    return-object p1

    :cond_6
    :goto_0
    return-object v1

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

.method private static final loadAd$lambda$0(Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)V
    .locals 1

    .line 76
    new-instance v0, Lcom/applovin/adview/AppLovinAdView;

    invoke-direct {v0, p0}, Lcom/applovin/adview/AppLovinAdView;-><init>(Lcom/applovin/sdk/AppLovinAdSize;)V

    .line 77
    new-instance p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;

    invoke-direct {p0, p1, v0, p2}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/applovin/adview/AppLovinAdView;Landroid/widget/FrameLayout$LayoutParams;)V

    .line 78
    move-object p1, p0

    check-cast p1, Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 79
    move-object p1, p0

    check-cast p1, Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 80
    move-object p1, p0

    check-cast p1, Lcom/applovin/adview/AppLovinAdViewEventListener;

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 82
    iput-object v0, p3, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->bannerAdView:Lcom/applovin/adview/AppLovinAdView;

    .line 83
    invoke-virtual {p4}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    check-cast p0, Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {p1, p5, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method


# virtual methods
.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 89
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 23
    check-cast p4, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .locals 8

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez v7, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v3, "zoneId = %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "format(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 40
    move-object p1, v7

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    sget-object p1, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getAppLovinSdk$applovinadapter_release()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v6

    const/16 p1, 0x3e8

    if-nez v6, :cond_2

    .line 53
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "AppLovin SDK instance is null"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 55
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    .line 54
    invoke-interface {p4, p2, p1, p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 62
    :cond_2
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 63
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p2, p3}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->getBannerSize(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    if-nez v2, :cond_3

    .line 65
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "Unsupported banner size"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 67
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    .line 66
    invoke-interface {p4, p2, p1, p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 73
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->getBannerLayoutParams(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 75
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter$$ExternalSyntheticLambda1;

    move-object v5, p0

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/sdk/AppLovinAdSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;Lcom/ironsource/adapters/applovin/banner/AppLovinBannerAdapter;Lcom/applovin/sdk/AppLovinSdk;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    :goto_1
    move-object p1, p4

    .line 41
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Missing params - %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 44
    sget-object p3, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p4, 0x3ea

    .line 43
    invoke-interface {p1, p3, p4, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method
