.class public Lcom/ironsource/b4$h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/b4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "pageFinished"

.field public static final B:Ljava/lang/String; = "initInterstitial"

.field public static final C:Ljava/lang/String; = "onInitInterstitialSuccess"

.field public static final D:Ljava/lang/String; = "onInitInterstitialFail"

.field public static final E:Ljava/lang/String; = "loadInterstitial"

.field public static final F:Ljava/lang/String; = "onLoadInterstitialSuccess"

.field public static final G:Ljava/lang/String; = "onLoadInterstitialFail"

.field public static final H:Ljava/lang/String; = "showInterstitial"

.field public static final I:Ljava/lang/String; = "onShowInterstitialSuccess"

.field public static final J:Ljava/lang/String; = "onShowInterstitialFail"

.field public static final K:Ljava/lang/String; = "initBanner"

.field public static final L:Ljava/lang/String; = "onInitBannerSuccess"

.field public static final M:Ljava/lang/String; = "onInitBannerFail"

.field public static final N:Ljava/lang/String; = "loadBanner"

.field public static final O:Ljava/lang/String; = "onLoadBannerSuccess"

.field public static final P:Ljava/lang/String; = "onDestroyBannersSuccess"

.field public static final Q:Ljava/lang/String; = "onDestroyBannersFail"

.field public static final R:Ljava/lang/String; = "onLoadBannerFail"

.field public static final S:Ljava/lang/String; = "destroyBanner"

.field public static final T:Ljava/lang/String; = "destroyInterstitial"

.field public static final U:Ljava/lang/String; = "onReceivedMessage"

.field public static final V:Ljava/lang/String; = "viewableChange"

.field public static final W:Ljava/lang/String; = "onNativeLifeCycleEvent"

.field public static final X:Ljava/lang/String; = "onGetOrientationSuccess"

.field public static final Y:Ljava/lang/String; = "onGetOrientationFail"

.field public static final Z:Ljava/lang/String; = "interceptedUrlToStore"

.field public static final a0:Ljava/lang/String; = "failedToStartStoreActivity"

.field public static final b0:Ljava/lang/String; = "onGetUserCreditsFail"

.field public static final c0:Ljava/lang/String; = "postAdEventNotificationSuccess"

.field public static final d:Ljava/lang/String; = "unauthorizedMessage"

.field public static final d0:Ljava/lang/String; = "postAdEventNotificationFail"

.field public static final e:Ljava/lang/String; = "unhandledNativeException"

.field public static final e0:Ljava/lang/String; = "updateConsentInfo"

.field public static final f:Ljava/lang/String; = "initRewardedVideo"

.field public static final g:Ljava/lang/String; = "onInitRewardedVideoSuccess"

.field public static final h:Ljava/lang/String; = "onInitRewardedVideoFail"

.field public static final i:Ljava/lang/String; = "showRewardedVideo"

.field public static final j:Ljava/lang/String; = "onShowRewardedVideoSuccess"

.field public static final k:Ljava/lang/String; = "onShowRewardedVideoFail"

.field public static final l:Ljava/lang/String; = "onGetDeviceStatusSuccess"

.field public static final m:Ljava/lang/String; = "onGetDeviceStatusFail"

.field public static final n:Ljava/lang/String; = "onGetApplicationInfoSuccess"

.field public static final o:Ljava/lang/String; = "onGetApplicationInfoFail"

.field public static final p:Ljava/lang/String; = "assetCached"

.field public static final q:Ljava/lang/String; = "assetCachedFailed"

.field public static final r:Ljava/lang/String; = "onGetCachedFilesMapFail"

.field public static final s:Ljava/lang/String; = "onGetCachedFilesMapSuccess"

.field public static final t:Ljava/lang/String; = "enterBackground"

.field public static final u:Ljava/lang/String; = "enterForeground"

.field public static final v:Ljava/lang/String; = "onGenericFunctionFail"

.field public static final w:Ljava/lang/String; = "nativeNavigationPressed"

.field public static final x:Ljava/lang/String; = "deviceStatusChanged"

.field public static final y:Ljava/lang/String; = "connectionInfoChanged"

.field public static final z:Ljava/lang/String; = "engageEnd"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/ironsource/t8$e;)Lcom/ironsource/b4$h;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/b4$h;

    invoke-direct {v0}, Lcom/ironsource/b4$h;-><init>()V

    .line 3
    sget-object v1, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    if-ne p0, v1, :cond_0

    .line 4
    const-string p0, "initRewardedVideo"

    iput-object p0, v0, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    .line 5
    const-string p0, "onInitRewardedVideoSuccess"

    iput-object p0, v0, Lcom/ironsource/b4$h;->b:Ljava/lang/String;

    .line 6
    const-string p0, "onInitRewardedVideoFail"

    iput-object p0, v0, Lcom/ironsource/b4$h;->c:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    if-ne p0, v1, :cond_1

    .line 8
    const-string p0, "initInterstitial"

    iput-object p0, v0, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    .line 9
    const-string p0, "onInitInterstitialSuccess"

    iput-object p0, v0, Lcom/ironsource/b4$h;->b:Ljava/lang/String;

    .line 10
    const-string p0, "onInitInterstitialFail"

    iput-object p0, v0, Lcom/ironsource/b4$h;->c:Ljava/lang/String;

    return-object v0

    .line 11
    :cond_1
    sget-object v1, Lcom/ironsource/t8$e;->a:Lcom/ironsource/t8$e;

    if-ne p0, v1, :cond_2

    .line 12
    const-string p0, "initBanner"

    iput-object p0, v0, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    .line 13
    const-string p0, "onInitBannerSuccess"

    iput-object p0, v0, Lcom/ironsource/b4$h;->b:Ljava/lang/String;

    .line 14
    const-string p0, "onInitBannerFail"

    iput-object p0, v0, Lcom/ironsource/b4$h;->c:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public static b(Lcom/ironsource/t8$e;)Lcom/ironsource/b4$h;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/b4$h;

    invoke-direct {v0}, Lcom/ironsource/b4$h;-><init>()V

    .line 3
    sget-object v1, Lcom/ironsource/t8$e;->c:Lcom/ironsource/t8$e;

    if-ne p0, v1, :cond_0

    .line 4
    const-string p0, "showRewardedVideo"

    iput-object p0, v0, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    .line 5
    const-string p0, "onShowRewardedVideoSuccess"

    iput-object p0, v0, Lcom/ironsource/b4$h;->b:Ljava/lang/String;

    .line 6
    const-string p0, "onShowRewardedVideoFail"

    iput-object p0, v0, Lcom/ironsource/b4$h;->c:Ljava/lang/String;

    return-object v0

    .line 7
    :cond_0
    sget-object v1, Lcom/ironsource/t8$e;->b:Lcom/ironsource/t8$e;

    if-ne p0, v1, :cond_1

    .line 8
    const-string p0, "showInterstitial"

    iput-object p0, v0, Lcom/ironsource/b4$h;->a:Ljava/lang/String;

    .line 9
    const-string p0, "onShowInterstitialSuccess"

    iput-object p0, v0, Lcom/ironsource/b4$h;->b:Ljava/lang/String;

    .line 10
    const-string p0, "onShowInterstitialFail"

    iput-object p0, v0, Lcom/ironsource/b4$h;->c:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
