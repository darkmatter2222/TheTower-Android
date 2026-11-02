.class public final Lcom/ironsource/adapters/admob/AdMobAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;
.source "AdMobAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;,
        Lcom/ironsource/adapters/admob/AdMobAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdMobAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdMobAdapter.kt\ncom/ironsource/adapters/admob/AdMobAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,487:1\n1#2:488\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c2\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 N2\u00020\u0001:\u0001NB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000cH\u0016J\"\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0017J\u0008\u0010\u0016\u001a\u00020\u000fH\u0002J\u0010\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J$\u0010\u001b\u001a\u00020\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0010\u0010\u001d\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u001eH\u0016J\u0010\u0010\u001f\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020!H\u0016J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u0008H\u0002J\u0018\u0010$\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0010\u0010%\u001a\u00020&2\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0010\u0010\'\u001a\u00020(2\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0012\u0010)\u001a\u0004\u0018\u00010*2\u0006\u0010#\u001a\u00020\u0005H\u0002J\u0008\u0010+\u001a\u00020\u000fH\u0002J\u001f\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\u00052\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0002\u0008/J\'\u00100\u001a\u0002012\u0006\u0010.\u001a\u00020\u00052\u0006\u00102\u001a\u0002032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0002\u00084J\'\u00105\u001a\u0002062\u0006\u0010.\u001a\u00020\u00052\u0006\u00107\u001a\u0002082\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0000\u00a2\u0006\u0002\u00089J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020<H\u0002J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020=H\u0002J\u0010\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020>H\u0002J.\u0010?\u001a\u00020\u00082\u0014\u0010@\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020B\u0018\u00010A2\u0006\u0010\u001c\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0008H\u0002J\u0012\u0010D\u001a\u00020E2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0002J\'\u0010F\u001a\u00020\u000f2\u0006\u0010G\u001a\u00020H2\u0006\u0010\t\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010EH\u0000\u00a2\u0006\u0002\u0008KJ\u001c\u0010L\u001a\u0004\u0018\u00010M2\u0006\u0010\t\u001a\u00020I2\u0008\u0010J\u001a\u0004\u0018\u00010EH\u0002\u00a8\u0006O"
    }
    d2 = {
        "Lcom/ironsource/adapters/admob/AdMobAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;",
        "<init>",
        "()V",
        "getAdapterVersion",
        "",
        "getNetworkSDKVersion",
        "isUsingActivityBeforeImpression",
        "",
        "adFormat",
        "Lcom/unity3d/mediation/LevelPlay$AdFormat;",
        "getAdaptiveHeight",
        "",
        "width",
        "init",
        "",
        "adData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "context",
        "Landroid/content/Context;",
        "networkInitializationListener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "onInitializationSuccess",
        "onInitializationFailure",
        "errorMessage",
        "setConsent",
        "consent",
        "setMetaData",
        "key",
        "values",
        "",
        "setNetworkData",
        "networkData",
        "Lcom/ironsource/mediationsdk/AdapterNetworkData;",
        "setCCPAValue",
        "value",
        "setAdMobMetaDataValue",
        "getAdMobCoppaValue",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;",
        "getAdMobEuValue",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;",
        "getAdMobRatingValue",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;",
        "setRequestConfiguration",
        "createAdRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;",
        "adUnitId",
        "createAdRequest$admobadapter_release",
        "createBannerAdRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
        "adSize",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "createBannerAdRequest$admobadapter_release",
        "createNativeAdRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;",
        "adChoicesPlacement",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;",
        "createNativeAdRequest$admobadapter_release",
        "applyContentMapping",
        "builder",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;",
        "readBoolean",
        "source",
        "",
        "",
        "default",
        "createExtrasBundle",
        "Landroid/os/Bundle;",
        "collectBiddingData",
        "biddingDataCallback",
        "Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;",
        "additionalExtras",
        "collectBiddingData$admobadapter_release",
        "createSignalRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;

.field private static final GitHash:Ljava/lang/String; = "f82370e"

.field private static ccpaValue:Ljava/lang/Boolean;

.field private static consent:Ljava/lang/Boolean;

.field private static contentMappingUrl:Ljava/lang/String;

.field private static coppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

.field private static euValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

.field private static final initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
            ">;"
        }
    .end annotation
.end field

.field private static initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

.field private static neighboringContentMappingUrls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static ratingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

.field private static final wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$hEWWA7kiN1vBc1jTAGLJhQ7DUos(ZLandroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/ironsource/adapters/admob/AdMobAdapter;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->init$lambda$2(ZLandroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lQzni9U0maSZeWpJy6uejZM7Bn0(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->init$lambda$2$lambda$1(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->Companion:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    .line 64
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseAdapter;-><init>()V

    return-void
.end method

.method private final applyContentMapping(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;)V
    .locals 6

    .line 383
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->contentMappingUrl:Ljava/lang/String;

    const-string v1, "format(...)"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 384
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "contentMappingUrl = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    .line 387
    :cond_1
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v3, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "neighboringContentMappingUrls = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 389
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->setNeighboringContentUrls(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    :cond_2
    return-void
.end method

.method private final applyContentMapping(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;)V
    .locals 6

    .line 372
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->contentMappingUrl:Ljava/lang/String;

    const-string v1, "format(...)"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 373
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "contentMappingUrl = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    .line 376
    :cond_1
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 377
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v3, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "neighboringContentMappingUrls = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 378
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->setNeighboringContentUrls(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    :cond_2
    return-void
.end method

.method private final applyContentMapping(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;)V
    .locals 6

    .line 394
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->contentMappingUrl:Ljava/lang/String;

    const-string v1, "format(...)"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 395
    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "contentMappingUrl = %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setContentUrl(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 398
    :cond_1
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 399
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v3, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "neighboringContentMappingUrls = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 400
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setNeighboringContentUrls(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    :cond_2
    return-void
.end method

.method private final createExtrasBundle(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Landroid/os/Bundle;
    .locals 4

    .line 416
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 417
    const-string v1, "platform_name"

    const-string v2, "unity"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 419
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "requestId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 420
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getAdUnitData()Ljava/util/Map;

    move-result-object v1

    :cond_1
    const-string p1, "isHybrid"

    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, v3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->readBoolean(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result p1

    .line 422
    move-object v1, v2

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 423
    :cond_2
    const-string v1, "placement_req_id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_3
    :goto_1
    const-string v1, "is_hybrid_setup"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->consent:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "npa"

    const-string v1, "1"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_4
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->ccpaValue:Ljava/lang/Boolean;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "rdp"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-object v0
.end method

.method private final createSignalRequest(Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;
    .locals 2

    .line 475
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "requester_type_2"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 481
    :cond_0
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    return-object p1

    .line 478
    :cond_1
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 479
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_2
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;

    .line 480
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    return-object p1

    .line 477
    :cond_3
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    return-object p1

    .line 476
    :cond_4
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest$Builder;

    invoke-direct {p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    return-object p1
.end method

.method private final getAdMobCoppaValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;
    .locals 0

    .line 297
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_TRUE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    return-object p1

    .line 300
    :cond_0
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;->TAG_FOR_CHILD_DIRECTED_TREATMENT_FALSE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    return-object p1
.end method

.method private final getAdMobEuValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;
    .locals 0

    .line 304
    invoke-static {p1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 305
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->TAG_FOR_UNDER_AGE_OF_CONSENT_TRUE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    return-object p1

    .line 307
    :cond_0
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;->TAG_FOR_UNDER_AGE_OF_CONSENT_FALSE:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    return-object p1
.end method

.method private final getAdMobRatingValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;
    .locals 3

    .line 311
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 312
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "The ratingValue is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v1

    .line 316
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "max_ad_content_rating_t"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 319
    :cond_1
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_T:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    .line 316
    :sswitch_1
    const-string v0, "max_ad_content_rating_g"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 317
    :cond_2
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_G:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    .line 316
    :sswitch_2
    const-string v0, "max_ad_content_rating_pg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 318
    :cond_3
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_PG:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    .line 316
    :sswitch_3
    const-string v0, "max_ad_content_rating_ma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 320
    :cond_4
    sget-object p1, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;->MAX_AD_CONTENT_RATING_MA:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    return-object p1

    .line 322
    :goto_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v2, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The ratingValue = %s is undefined"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x3dec05f1 -> :sswitch_3
        -0x3dec058e -> :sswitch_2
        0x37cf188c -> :sswitch_1
        0x37cf1899 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final init$lambda$2(ZLandroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/ironsource/adapters/admob/AdMobAdapter;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 155
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "init and wait for callback"

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 156
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/google/android/libraries/ads/mobile/sdk/initialization/OnAdapterInitializationCompleteListener;)V

    return-void

    .line 172
    :cond_0
    sget-object p0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "init without callback"

    invoke-virtual {p0, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 173
    sget-object p0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->initialize(Landroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;)V

    .line 174
    invoke-direct {p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->onInitializationSuccess()V

    return-void
.end method

.method private static final init$lambda$2$lambda$1(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;)V
    .locals 3

    const-string v0, "initializationStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationStatus;->getAdapterStatusMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "com.google.android.gms.ads.MobileAds"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;

    if-eqz p1, :cond_0

    .line 159
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 160
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AdMob initialization state = %s, description = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 164
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getInitializationState()Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->COMPLETE:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    if-ne v0, v1, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->onInitializationSuccess()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 167
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "AdMob adapter status not found"

    .line 168
    :cond_3
    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->onInitializationFailure(Ljava/lang/String;)V

    return-void
.end method

.method public static final networkAdapterVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->Companion:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;

    invoke-virtual {v0}, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion;->networkAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final onInitializationFailure(Ljava/lang/String;)V
    .locals 3

    .line 192
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "AdMob init failed - %s"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "format(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 194
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    .line 196
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, "iterator(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    const/16 v1, 0x3e8

    .line 197
    const-string v2, "AdMob sdk init failed"

    invoke-interface {v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_0
    sget-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private final onInitializationSuccess()V
    .locals 2

    .line 181
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 183
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    .line 185
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v1, "iterator(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;

    .line 186
    invoke-interface {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    goto :goto_0

    .line 188
    :cond_0
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method private final readBoolean(Ljava/util/Map;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 405
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 406
    :goto_0
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 407
    :cond_1
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 408
    check-cast p1, Ljava/lang/String;

    const-string p2, "true"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 409
    :cond_2
    const-string p2, "false"

    invoke-static {p1, p2, v0}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return p3
.end method

.method private final setAdMobMetaDataValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 265
    const-string v0, "admob_tfcd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "admob_tfua"

    const-string v3, "format(...)"

    const/4 v4, 0x2

    if-nez v1, :cond_1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p2

    goto :goto_1

    .line 267
    :cond_1
    :goto_0
    sget-object v1, Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;->META_DATA_VALUE_BOOLEAN:Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;

    invoke-static {p2, v1}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->formatValueForType(Ljava/lang/String;Lcom/ironsource/mediationsdk/metadata/MetaData$MetaDataValueTypes;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "formatValueForType(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 269
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "MetaData value for key %s is invalid %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    .line 274
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto/16 :goto_2

    .line 280
    :cond_3
    invoke-direct {p0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobEuValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    move-result-object p2

    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->euValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    .line 281
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->euValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key = %s, euValue = %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 274
    :sswitch_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 276
    :cond_4
    invoke-direct {p0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobCoppaValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    move-result-object p2

    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->coppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    .line 277
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->coppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key = %s, coppaValue = %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :sswitch_2
    const-string p2, "admob_maxcontentrating"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    .line 284
    :cond_5
    invoke-direct {p0, v1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobRatingValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object p2

    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->ratingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    .line 285
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->ratingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key = %s, ratingValue = %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :sswitch_3
    const-string v0, "google_content_mapping"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    .line 288
    :cond_6
    sput-object p2, Lcom/ironsource/adapters/admob/AdMobAdapter;->contentMappingUrl:Ljava/lang/String;

    .line 289
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->contentMappingUrl:Ljava/lang/String;

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "key = %s, contentMappingValue = %s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 293
    :goto_2
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a5d72fe -> :sswitch_3
        -0x84ca38c -> :sswitch_2
        0x51eef155 -> :sswitch_1
        0x51eef380 -> :sswitch_0
    .end sparse-switch
.end method

.method private final setCCPAValue(Z)V
    .locals 3

    .line 258
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "value = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 259
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->ccpaValue:Ljava/lang/Boolean;

    return-void
.end method

.method private final setRequestConfiguration()V
    .locals 3

    .line 329
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;-><init>()V

    .line 332
    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter;->coppaValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setTagForChildDirectedTreatment(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForChildDirectedTreatment;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 333
    :goto_0
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->euValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setTagForUnderAgeOfConsent(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$TagForUnderAgeOfConsent;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v1

    .line 334
    :cond_1
    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter;->ratingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->setMaxAdContentRating(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 336
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->setRequestConfiguration(Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final collectBiddingData$admobadapter_release(Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "biddingDataCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adFormat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v1, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    if-ne v0, v1, :cond_0

    .line 442
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p3, "returning null as token since init hasn\'t started"

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 443
    invoke-interface {p1, p3}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 447
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, p2, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createSignalRequest(Lcom/google/android/libraries/ads/mobile/sdk/common/AdFormat;Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 451
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "unsupported ad format for signal generation - %s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "format(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p3, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 453
    invoke-interface {p1, p2}, Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 457
    :cond_1
    sget-object p2, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    new-instance v0, Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter$collectBiddingData$1;-><init>(Lcom/ironsource/adapters/admob/AdMobAdapter;Lcom/ironsource/mediationsdk/bidding/BiddingDataCallback;)V

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;

    invoke-virtual {p2, p3, v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->generateSignal(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationCallback;)V

    return-void
.end method

.method public final createAdRequest$admobadapter_release(Ljava/lang/String;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;-><init>(Ljava/lang/String;)V

    .line 345
    const-string p1, "unity"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 346
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->applyContentMapping(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;)V

    .line 347
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    .line 348
    invoke-direct {p0, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createExtrasBundle(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 349
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createBannerAdRequest$admobadapter_release(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;
    .locals 1

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adSize"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    .line 354
    const-string p1, "unity"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 355
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->applyContentMapping(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;)V

    .line 356
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    .line 357
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createExtrasBundle(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 358
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    move-result-object p1

    return-object p1
.end method

.method public final createNativeAdRequest$admobadapter_release(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;
    .locals 3

    const-string v0, "adUnitId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adChoicesPlacement"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "singletonList(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 363
    const-string p1, "unity"

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setRequestAgent(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 364
    invoke-virtual {v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 365
    invoke-direct {p0, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->applyContentMapping(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;)V

    .line 366
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    .line 367
    invoke-direct {p0, p3}, Lcom/ironsource/adapters/admob/AdMobAdapter;->createExtrasBundle(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setGoogleExtrasBundle(Landroid/os/Bundle;)Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequestBuilder;

    .line 368
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-result-object p1

    return-object p1
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "5.16.0"

    return-object v0
.end method

.method public getAdaptiveHeight(I)I
    .locals 3

    .line 96
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;

    .line 97
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v1, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize$Companion;->getLargeAnchoredAdaptiveBannerAdSize(Landroid/content/Context;I)Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v0

    .line 99
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "height = %s for width = %s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "format(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds;->Companion:Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/MobileAds$Companion;->getVersion()Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .locals 6

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v3, "format(...)"

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 118
    :cond_0
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_SUCCESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    if-ne v0, v2, :cond_1

    if-eqz p3, :cond_7

    .line 119
    invoke-interface {p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    return-void

    .line 124
    :cond_1
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_FAILED:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    if-ne v0, v2, :cond_2

    .line 125
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "AdMob sdk init failed"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    const/16 p1, 0x3e8

    .line 126
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    return-void

    .line 131
    :cond_2
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_NONE:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    if-eq v0, v2, :cond_3

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sget-object v2, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    if-ne v0, v2, :cond_4

    :cond_3
    if-eqz p3, :cond_4

    .line 132
    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->initListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_4
    sget-object p3, Lcom/ironsource/adapters/admob/AdMobAdapter;->wasInitCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 137
    sget-object p3, Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;->INIT_STATE_IN_PROGRESS:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    sput-object p3, Lcom/ironsource/adapters/admob/AdMobAdapter;->initState:Lcom/ironsource/adapters/admob/AdMobAdapter$Companion$InitState;

    .line 139
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "appId = %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object p3

    const-string v2, "networkOnlyInit"

    invoke-direct {p0, p3, v2, v4}, Lcom/ironsource/adapters/admob/AdMobAdapter;->readBoolean(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result p3

    .line 142
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getConfiguration()Ljava/util/Map;

    move-result-object p1

    const-string v2, "initResponseRequired"

    invoke-direct {p0, p1, v2, v0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->readBoolean(Ljava/util/Map;Ljava/lang/String;Z)Z

    move-result p1

    .line 144
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 146
    sget-object p3, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "disableMediationAdapterInitialization"

    invoke-virtual {p3, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->disableMediationAdapterInitialization()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;

    .line 150
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;

    move-result-object p3

    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 153
    new-instance v0, Ljava/lang/Thread;

    .line 176
    new-instance v1, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, p3, p0}, Lcom/ironsource/adapters/admob/AdMobAdapter$$ExternalSyntheticLambda1;-><init>(ZLandroid/content/Context;Lcom/google/android/libraries/ads/mobile/sdk/initialization/InitializationConfig;Lcom/ironsource/adapters/admob/AdMobAdapter;)V

    .line 153
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 111
    :cond_6
    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing param - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    const/16 p2, 0x3ea

    .line 113
    invoke-interface {p3, p2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    :cond_7
    return-void
.end method

.method public isUsingActivityBeforeImpression(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Z
    .locals 1

    const-string v0, "adFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setConsent(Z)V
    .locals 3

    .line 207
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "consent = %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 208
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->consent:Ljava/lang/Boolean;

    return-void
.end method

.method public setMetaData(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 216
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "format(...)"

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    const-string v0, "google_content_mapping"

    invoke-static {p1, v0, v3}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    new-instance v0, Ljava/util/HashSet;

    move-object v3, p2

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    .line 219
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "key = %s, values = %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 224
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_3

    return-void

    .line 225
    :cond_3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "key = %s, value = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 227
    invoke-static {p1, p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->isValidCCPAMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    invoke-static {p2}, Lcom/ironsource/mediationsdk/metadata/MetaDataUtils;->getMetaDataBooleanValue(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setCCPAValue(Z)V

    return-void

    .line 230
    :cond_4
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setAdMobMetaDataValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public setNetworkData(Lcom/ironsource/mediationsdk/AdapterNetworkData;)V
    .locals 9

    const-string v0, "networkData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    const-class v0, Ljava/lang/String;

    const-string v1, "ContentMapping"

    invoke-interface {p1, v1, v0}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "format(...)"

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    .line 237
    sput-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->contentMappingUrl:Ljava/lang/String;

    .line 238
    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v5, "key = %s, contentMappingValue = %s"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 242
    :cond_0
    const-class v0, Lorg/json/JSONArray;

    invoke-interface {p1, v1, v0}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 243
    sget-object v4, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 244
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 245
    sget-object v6, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "optString(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 247
    :cond_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v4, Lcom/ironsource/adapters/admob/AdMobAdapter;->neighboringContentMappingUrls:Ljava/util/Set;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "key = %s, contentMappingValues = %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 250
    :cond_2
    const-class v0, Ljava/lang/String;

    const-string v1, "MaxAdContentRating"

    invoke-interface {p1, v1, v0}, Lcom/ironsource/mediationsdk/AdapterNetworkData;->dataByKeyIgnoreCase(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 251
    invoke-static {p1}, Lcom/ironsource/environment/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/adapters/admob/AdMobAdapter;->getAdMobRatingValue(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    move-result-object p1

    sput-object p1, Lcom/ironsource/adapters/admob/AdMobAdapter;->ratingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    .line 252
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    sget-object v0, Lcom/ironsource/adapters/admob/AdMobAdapter;->ratingValue:Lcom/google/android/libraries/ads/mobile/sdk/common/RequestConfiguration$MaxAdContentRating;

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "key = %s, ratingValue = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/ironsource/adapters/admob/AdMobAdapter;->setRequestConfiguration()V

    :cond_3
    return-void
.end method
