.class public final Lads_mobile_sdk/dg3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/jr0;


# instance fields
.field public final a:Lads_mobile_sdk/dw2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vh1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lads_mobile_sdk/dg3;->a:Lads_mobile_sdk/dw2;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/dg3;->a:Lads_mobile_sdk/dw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;

    .line 3
    const-string v1, "signalRequest"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenSignalRequest;

    if-eqz v1, :cond_0

    sget-object v0, Lads_mobile_sdk/j53;->e:Lads_mobile_sdk/j53;

    return-object v0

    .line 30
    :cond_0
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;

    if-eqz v1, :cond_1

    sget-object v0, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    return-object v0

    .line 31
    :cond_1
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;

    if-eqz v1, :cond_2

    sget-object v0, Lads_mobile_sdk/j53;->g:Lads_mobile_sdk/j53;

    return-object v0

    .line 32
    :cond_2
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/interstitial/InterstitialSignalRequest;

    if-eqz v1, :cond_3

    sget-object v0, Lads_mobile_sdk/j53;->h:Lads_mobile_sdk/j53;

    return-object v0

    .line 33
    :cond_3
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;

    if-eqz v1, :cond_4

    sget-object v0, Lads_mobile_sdk/j53;->i:Lads_mobile_sdk/j53;

    return-object v0

    .line 34
    :cond_4
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/rewarded/RewardedSignalRequest;

    if-eqz v1, :cond_5

    sget-object v0, Lads_mobile_sdk/j53;->j:Lads_mobile_sdk/j53;

    return-object v0

    .line 35
    :cond_5
    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialSignalRequest;

    if-eqz v1, :cond_6

    sget-object v0, Lads_mobile_sdk/j53;->k:Lads_mobile_sdk/j53;

    return-object v0

    .line 36
    :cond_6
    instance-of v0, v0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialSignalRequest;

    if-eqz v0, :cond_7

    sget-object v0, Lads_mobile_sdk/j53;->l:Lads_mobile_sdk/j53;

    return-object v0

    .line 37
    :cond_7
    sget-object v0, Lads_mobile_sdk/j53;->d:Lads_mobile_sdk/j53;

    return-object v0
.end method
