.class public final Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;
.super Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;
.source "AppLovinInterstitialAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial<",
        "Lcom/ironsource/adapters/applovin/AppLovinAdapter;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppLovinInterstitialAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLovinInterstitialAdapter.kt\ncom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J \u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0010\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u001eJ\u0015\u0010\u001f\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u000cH\u0000\u00a2\u0006\u0002\u0008!R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;",
        "Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;",
        "Lcom/ironsource/adapters/applovin/AppLovinAdapter;",
        "networkSettings",
        "Lcom/ironsource/mediationsdk/model/NetworkSettings;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V",
        "interstitialAdListener",
        "Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;",
        "interstitialAd",
        "Lcom/applovin/sdk/AppLovinAd;",
        "isAdAvailableFlag",
        "",
        "reservedZoneId",
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
        "setInterstitialAd",
        "ad",
        "setInterstitialAd$applovinadapter_release",
        "setInterstitialAdAvailability",
        "isAvailable",
        "setInterstitialAdAvailability$applovinadapter_release",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter$Companion;

.field private static final interstitialZoneIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private interstitialAd:Lcom/applovin/sdk/AppLovinAd;

.field private interstitialAdListener:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

.field private isAdAvailableFlag:Z

.field private reservedZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->Companion:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter$Companion;

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "newSetFromMap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialZoneIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .locals 1

    const-string v0, "networkSettings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/unity3d/mediation/adapters/levelplay/LevelPlayBaseInterstitial;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    return-void
.end method


# virtual methods
.method public destroyAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)V
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 105
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->reservedZoneId:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialZoneIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->reservedZoneId:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAd:Lcom/applovin/sdk/AppLovinAd;

    .line 108
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

    return-void
.end method

.method public isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z
    .locals 1

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAd:Lcom/applovin/sdk/AppLovinAd;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->isAdAvailableFlag:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 20
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V
    .locals 4

    const-string v0, "adData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "listener"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const-string p2, "zoneId"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 36
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    if-nez p1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

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

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 38
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 49
    :cond_1
    sget-object p2, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialZoneIds:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_2

    .line 50
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Interstitial load request skipped. An interstitial ad with the same configuration is currently in use"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 52
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    .line 51
    invoke-interface {p3, p1, v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 59
    :cond_2
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v0}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getAppLovinSdk$applovinadapter_release()Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    if-nez v0, :cond_3

    .line 61
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "AppLovin SDK instance is null"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 63
    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    .line 62
    invoke-interface {p3, p1, v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 70
    :cond_3
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->reservedZoneId:Ljava/lang/String;

    const/4 p2, 0x0

    .line 73
    invoke-virtual {p0, p2}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->setInterstitialAdAvailability$applovinadapter_release(Z)V

    .line 75
    new-instance p2, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, v1}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

    .line 77
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    iget-object p3, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

    check-cast p3, Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {p2, p1, p3}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void

    .line 39
    :cond_4
    :goto_1
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Missing params - %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 42
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v0, 0x3ea

    .line 41
    invoke-interface {p3, p2, v0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public final setInterstitialAd$applovinadapter_release(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAd:Lcom/applovin/sdk/AppLovinAd;

    return-void
.end method

.method public final setInterstitialAdAvailability$applovinadapter_release(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->isAdAvailableFlag:Z

    return-void
.end method

.method public bridge synthetic showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .locals 0

    .line 20
    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;)V

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

    .line 81
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 83
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->reservedZoneId:Ljava/lang/String;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialZoneIds:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->reservedZoneId:Ljava/lang/String;

    .line 86
    iget-object p2, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAd:Lcom/applovin/sdk/AppLovinAd;

    .line 87
    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lcom/applovin/adview/AppLovinInterstitialAd;->create()Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    .line 94
    iget-object p3, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

    check-cast p3, Lcom/applovin/sdk/AppLovinAdClickListener;

    invoke-interface {p1, p3}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 95
    iget-object p3, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

    check-cast p3, Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-interface {p1, p3}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 96
    iget-object p3, p0, Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialAdapter;->interstitialAdListener:Lcom/ironsource/adapters/applovin/interstitial/AppLovinInterstitialListener;

    check-cast p3, Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    invoke-interface {p1, p3}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 97
    invoke-interface {p1, p2}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void

    .line 88
    :cond_2
    :goto_0
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string p2, "Ad is not available"

    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    const/16 p1, 0x3e8

    .line 89
    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdShowFailed(ILjava/lang/String;)V

    return-void
.end method
