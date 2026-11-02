.class public final Lads_mobile_sdk/qn3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/rh3;


# instance fields
.field public final a:Ljava/util/Optional;


# direct methods
.method public constructor <init>(Ljava/util/Optional;)V
    .locals 1

    .line 1
    const-string v0, "requestOptional"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lads_mobile_sdk/qn3;->a:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final f()Lads_mobile_sdk/y11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/y11;->f:Lads_mobile_sdk/y11;

    return-object v0
.end method

.method public final s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 19
    iget-object p1, p0, Lads_mobile_sdk/qn3;->a:Ljava/util/Optional;

    invoke-static {p1}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 20
    new-instance v0, Lads_mobile_sdk/q01;

    .line 21
    new-instance v1, Lads_mobile_sdk/pn3;

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;->getMaxScreenHoldDurationSeconds()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_2

    .line 24
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;->getCustomClickGestureEnabled()Z

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v3

    :goto_2
    if-eqz p1, :cond_3

    .line 25
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;->getCustomClickSwipeGestureDirection()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;->getValue()I

    move-result v6

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3

    :cond_3
    move-object v6, v3

    :goto_3
    if-eqz p1, :cond_4

    .line 26
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;->getCustomClickSwipeGestureTapsAllowed()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_4
    move-object v7, v6

    move-object v6, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    .line 27
    invoke-direct/range {v1 .. v6}, Lads_mobile_sdk/pn3;-><init>(ZLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 28
    invoke-direct {v0, v1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
