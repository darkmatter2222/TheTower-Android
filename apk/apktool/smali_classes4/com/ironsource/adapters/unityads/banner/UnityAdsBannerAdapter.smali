.class public final Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;
.source "UnityAdsBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner<",
        "Lcom/ironsource/adapters/unityads/UnityAdsAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnityAdsBannerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnityAdsBannerAdapter.kt\ncom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,147:1\n1#2:148\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\"\u0010\u0014\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0015\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u0008H\u0000\u00a2\u0006\u0002\u0008\u001bJ\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;",
        "Lcom/ironsource/adapters/unityads/UnityAdsAdapter;",
        "networkSettings",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V",
        "bannerAdView",
        "Lcom/unity3d/ads/BannerAd;",
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
        "setBannerAdView",
        "ad",
        "setBannerAdView$unityadsadapter_release",
        "getBannerSize",
        "Lcom/unity3d/services/banners/UnityBannerSize;",
        "isLargeScreen",
        "",
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
.field private bannerAdView:Lcom/unity3d/ads/BannerAd;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseBanner;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method

.method private final getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/unity3d/services/banners/UnityBannerSize;
    .locals 3

    .line 127
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x32

    const/16 v2, 0x140

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "BANNER"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_1
    const-string v0, "SMART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 136
    new-instance p1, Lcom/unity3d/services/banners/UnityBannerSize;

    const/16 p2, 0x2d8

    const/16 v0, 0x5a

    invoke-direct {p1, p2, v0}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    return-object p1

    .line 138
    :cond_1
    new-instance p1, Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-direct {p1, v2, v1}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    return-object p1

    .line 127
    :sswitch_2
    const-string p2, "LARGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 129
    :cond_2
    new-instance p1, Lcom/unity3d/services/banners/UnityBannerSize;

    invoke-direct {p1, v2, v1}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    return-object p1

    .line 127
    :sswitch_3
    const-string p2, "RECTANGLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 132
    :cond_3
    new-instance p1, Lcom/unity3d/services/banners/UnityBannerSize;

    const/16 p2, 0x12c

    const/16 v0, 0xfa

    invoke-direct {p1, p2, v0}, Lcom/unity3d/services/banners/UnityBannerSize;-><init>(II)V

    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x171242b1 -> :sswitch_3
        0x44dc31b -> :sswitch_2
        0x4b59da9 -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public collectBiddingData(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "biddingDataCallback"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 105
    invoke-virtual {p0}, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p2

    check-cast p2, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;

    if-nez p2, :cond_0

    .line 107
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Network adapter is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 108
    invoke-interface {p3, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "bannerSize"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    instance-of v2, v1, Lcom/ironsource/mediationsdk/ISBannerSize;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/ironsource/mediationsdk/ISBannerSize;

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 113
    new-instance v0, Lcom/unity3d/ads/BannerSize;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ISBannerSize;->getHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/unity3d/ads/BannerSize;-><init>(II)V

    .line 115
    :cond_3
    sget-object v1, Lcom/unity3d/ads/AdFormat;->BANNER:Lcom/unity3d/ads/AdFormat;

    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->collectBiddingData$unityadsadapter_release(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/unity3d/ads/AdFormat;Lcom/unity3d/ads/BannerSize;)V

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
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;->bannerAdView:Lcom/unity3d/ads/BannerAd;

    return-void
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 26
    check-cast p4, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .locals 6

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerSize"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v0, "zoneId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez v1, :cond_0

    const-string v3, ""

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v5, "zoneId = %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "format(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 42
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/AdapterUtils;->isLargeScreen(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;->getBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;Z)Lcom/unity3d/services/banners/UnityBannerSize;

    move-result-object p3

    if-nez p3, :cond_2

    .line 55
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Banner size is not supported"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 57
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p3, 0x3e8

    .line 56
    invoke-interface {p4, p1, p3, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 64
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 65
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p3}, Lcom/unity3d/services/banners/UnityBannerSize;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Lcom/ironsource/mediationsdk/AdapterUtils;->dpToPixels(Landroid/content/Context;I)I

    move-result p2

    const/4 v2, -0x2

    const/16 v3, 0x11

    .line 64
    invoke-direct {v0, p2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 70
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const-string v3, "adUnitId"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 72
    :cond_4
    new-instance p2, Lcom/unity3d/ads/BannerConfiguration$Builder;

    .line 74
    new-instance v3, Lcom/unity3d/ads/BannerSize;

    invoke-virtual {p3}, Lcom/unity3d/services/banners/UnityBannerSize;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/unity3d/services/banners/UnityBannerSize;->getHeight()I

    move-result p3

    invoke-direct {v3, v4, p3}, Lcom/unity3d/ads/BannerSize;-><init>(II)V

    .line 75
    new-instance p3, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerShowListener;

    invoke-direct {p3, p4}, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerShowListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V

    check-cast p3, Lcom/unity3d/ads/BannerShowListener;

    .line 72
    invoke-direct {p2, v1, v3, p3}, Lcom/unity3d/ads/BannerConfiguration$Builder;-><init>(Ljava/lang/String;Lcom/unity3d/ads/BannerSize;Lcom/unity3d/ads/BannerShowListener;)V

    .line 77
    sget-object p3, Lcom/ironsource/adapters/unityads/UnityAdsAdapter;->Companion:Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;

    invoke-virtual {p3}, Lcom/ironsource/adapters/unityads/UnityAdsAdapter$Companion;->getMediationInfo$unityadsadapter_release()Lcom/unity3d/ads/MediationInfo;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/unity3d/ads/BannerConfiguration$Builder;->withMediationInfo(Lcom/unity3d/ads/MediationInfo;)Lcom/unity3d/ads/BannerConfiguration$Builder;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getServerData()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 80
    move-object p3, p1

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-lez p3, :cond_5

    .line 81
    invoke-virtual {p2, p1}, Lcom/unity3d/ads/BannerConfiguration$Builder;->withAdMarkup(Ljava/lang/String;)Lcom/unity3d/ads/BannerConfiguration$Builder;

    .line 84
    :cond_5
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_2

    .line 85
    :cond_6
    invoke-virtual {p2, v2}, Lcom/unity3d/ads/BannerConfiguration$Builder;->withMediationAdUnitId(Ljava/lang/String;)Lcom/unity3d/ads/BannerConfiguration$Builder;

    .line 88
    :cond_7
    :goto_2
    invoke-virtual {p2}, Lcom/unity3d/ads/BannerConfiguration$Builder;->build()Lcom/unity3d/ads/BannerConfiguration;

    move-result-object p1

    .line 90
    sget-object p2, Lcom/unity3d/ads/BannerAd;->Companion:Lcom/unity3d/ads/BannerAd$Companion;

    new-instance p3, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p3, p4, v0, v1}, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerLoadListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Landroid/widget/FrameLayout$LayoutParams;Ljava/lang/ref/WeakReference;)V

    check-cast p3, Lcom/unity3d/ads/LoadListener;

    invoke-virtual {p2, p1, p3}, Lcom/unity3d/ads/BannerAd$Companion;->load(Lcom/unity3d/ads/BannerConfiguration;Lcom/unity3d/ads/LoadListener;)V

    return-void

    .line 43
    :cond_8
    :goto_3
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing params - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 46
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 p3, 0x3ea

    .line 45
    invoke-interface {p4, p2, p3, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public final setBannerAdView$unityadsadapter_release(Lcom/unity3d/ads/BannerAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/ironsource/adapters/unityads/banner/UnityAdsBannerAdapter;->bannerAdView:Lcom/unity3d/ads/BannerAd;

    return-void
.end method
