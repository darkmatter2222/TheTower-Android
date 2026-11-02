.class public final Lads_mobile_sdk/zm3;
.super Lads_mobile_sdk/eq;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAd;


# static fields
.field public static final d:Lads_mobile_sdk/xm3;

.field public static final synthetic e:[Lkotlin/reflect/KProperty;

.field public static final f:Ljava/lang/String;


# instance fields
.field public final b:Lads_mobile_sdk/zn1;

.field public final c:Lads_mobile_sdk/tn3;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lads_mobile_sdk/zm3;

    const-string v1, "adEventCallback"

    const-string v2, "getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lads_mobile_sdk/kk;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v1, 0x1

    .line 41
    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v3

    sput-object v1, Lads_mobile_sdk/zm3;->e:[Lkotlin/reflect/KProperty;

    new-instance v0, Lads_mobile_sdk/xm3;

    .line 42
    invoke-direct {v0}, Lads_mobile_sdk/xm3;-><init>()V

    .line 43
    sput-object v0, Lads_mobile_sdk/zm3;->d:Lads_mobile_sdk/xm3;

    .line 100
    sget-object v0, Lads_mobile_sdk/ir0;->b:Lads_mobile_sdk/ir0;

    .line 101
    const-string v0, "Both SDK and publisher determined Custom Click Gesture are enabled on this request. Pick one to enable and make sure your ad unit is eligible."

    .line 102
    sput-object v0, Lads_mobile_sdk/zm3;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lads_mobile_sdk/zn1;)V
    .locals 2

    .line 1
    const-string v0, "internalSwipeableInterstitialAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lads_mobile_sdk/eq;-><init>(Lads_mobile_sdk/zh1;)V

    .line 32
    iput-object p1, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    .line 44
    new-instance p1, Lads_mobile_sdk/tn3;

    .line 46
    new-instance v0, Lads_mobile_sdk/ym3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/ym3;-><init>(Lads_mobile_sdk/zm3;)V

    const/4 v1, 0x0

    .line 47
    invoke-direct {p1, v0, v1}, Lads_mobile_sdk/tn3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/zm3;->c:Lads_mobile_sdk/tn3;

    return-void
.end method


# virtual methods
.method public final getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;
    .locals 3

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/zm3;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/zm3;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 42
    invoke-virtual {v0, p0, v1}, Lads_mobile_sdk/tn3;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;

    return-object v0
.end method

.method public final getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;
    .locals 1

    .line 71
    iget-object v0, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    .line 72
    iget-object v0, v0, Lads_mobile_sdk/zn1;->o:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    return-object v0
.end method

.method public final getScreenHoldDuration()I
    .locals 1

    .line 66
    iget-object v0, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/i2;->v0:Lads_mobile_sdk/qm3;

    if-eqz v0, :cond_0

    .line 67
    iget v0, v0, Lads_mobile_sdk/qm3;->a:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;
    .locals 1

    .line 54
    iget-object v0, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->k()Ljava/util/Optional;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/r31;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lads_mobile_sdk/q41;->getVideoLifecycleCallbacks()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getView(Landroid/app/Activity;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 76
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 77
    iget-object v0, v0, Lads_mobile_sdk/vf0;->E:Lads_mobile_sdk/dw2;

    .line 78
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/f0;

    .line 79
    sget-object v1, Lads_mobile_sdk/r;->e:Lads_mobile_sdk/r;

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/f0;->a(Landroid/app/Activity;Lads_mobile_sdk/r;)V

    .line 80
    iget-object p1, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    .line 81
    iget-object p1, p1, Lads_mobile_sdk/zn1;->n:Landroid/view/View;

    return-object p1
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    .line 39
    iget-object v0, v0, Lads_mobile_sdk/zn1;->p:Lads_mobile_sdk/rm3;

    .line 40
    check-cast v0, Lads_mobile_sdk/rv0;

    .line 41
    iget-object v0, v0, Lads_mobile_sdk/rv0;->e:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 42
    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;->getCustomClickGestureEnabled()Z

    move-result v0

    return v0
.end method

.method public final recordCustomClickGesture()V
    .locals 9

    .line 86
    invoke-virtual {p0}, Lads_mobile_sdk/zm3;->isCustomClickGestureEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 89
    const-string v0, "Custom click reporting failed. enableCustomClickGesture is not set through the SwipeableInterstitialAdRequest."

    .line 90
    invoke-static {v0, v1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    .line 92
    iget-object v0, v0, Lads_mobile_sdk/zn1;->p:Lads_mobile_sdk/rm3;

    .line 93
    check-cast v0, Lads_mobile_sdk/rv0;

    .line 94
    iget-object v2, v0, Lads_mobile_sdk/rv0;->m:Lads_mobile_sdk/r31;

    if-nez v2, :cond_1

    return-void

    .line 95
    :cond_1
    iget-object v3, v0, Lads_mobile_sdk/rv0;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v6, Lads_mobile_sdk/iv0;

    invoke-direct {v6, v2, v0, v1}, Lads_mobile_sdk/iv0;-><init>(Lads_mobile_sdk/r31;Lads_mobile_sdk/rv0;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdEventCallback;)V
    .locals 3

    .line 41
    iget-object v0, p0, Lads_mobile_sdk/zm3;->c:Lads_mobile_sdk/tn3;

    sget-object v1, Lads_mobile_sdk/zm3;->e:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 42
    invoke-virtual {v0, p0, v1, p1}, Lads_mobile_sdk/tn3;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method public final setVideoLifecycleCallbacks(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lads_mobile_sdk/zm3;->b:Lads_mobile_sdk/zn1;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->k()Ljava/util/Optional;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lkotlin/jvm/optionals/OptionalsKt;->getOrNull(Ljava/util/Optional;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/r31;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lads_mobile_sdk/r31;->d()Lads_mobile_sdk/q41;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    invoke-virtual {v0, p1}, Lads_mobile_sdk/q41;->setVideoLifecycleCallbacks(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController$VideoLifecycleCallbacks;)V

    return-void
.end method
