.class public final Lads_mobile_sdk/t03;
.super Lads_mobile_sdk/px2;
.source "SourceFile"


# instance fields
.field public final n:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

.field public final o:Lads_mobile_sdk/cw2;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lads_mobile_sdk/ja1;ZLads_mobile_sdk/md1;Lads_mobile_sdk/dw2;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V
    .locals 15

    move-object/from16 v8, p3

    move-object/from16 v14, p12

    .line 1
    const-string v0, "loadScope"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundScope"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceMetaSet"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flags"

    move-object/from16 v4, p5

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootTraceCreator"

    move-object/from16 v5, p6

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publisherRequestId"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestType"

    move-object/from16 v7, p8

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initializationConfigWrapper"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inspectorAdLifecycleMonitor"

    move-object/from16 v11, p11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentProvider"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancellationChannel"

    move-object/from16 v12, p13

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appState"

    move-object/from16 v13, p14

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move/from16 v9, p10

    .line 2
    invoke-direct/range {v0 .. v13}, Lads_mobile_sdk/px2;-><init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/ks3;Lads_mobile_sdk/ex0;Lads_mobile_sdk/g83;Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;ZLads_mobile_sdk/ja1;Lads_mobile_sdk/md1;Lkotlinx/coroutines/flow/SharedFlow;Lads_mobile_sdk/qn;)V

    .line 3
    iput-object v8, p0, Lads_mobile_sdk/t03;->n:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    .line 12
    iput-object v14, p0, Lads_mobile_sdk/t03;->o:Lads_mobile_sdk/cw2;

    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lads_mobile_sdk/t03;->o:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lads_mobile_sdk/bn1;

    iget-object v2, v0, Lads_mobile_sdk/t03;->n:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/bn1;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Lads_mobile_sdk/bn1;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/eo1;

    .line 3
    iget-object v2, v0, Lads_mobile_sdk/t03;->n:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    check-cast v1, Lads_mobile_sdk/ch0;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object v2, v1, Lads_mobile_sdk/ch0;->l:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    .line 6
    iget-object v2, v1, Lads_mobile_sdk/ch0;->b:Lads_mobile_sdk/j53;

    const-class v3, Lads_mobile_sdk/j53;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7
    iget-object v2, v1, Lads_mobile_sdk/ch0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    const-class v3, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v2, v1, Lads_mobile_sdk/ch0;->d:Lads_mobile_sdk/n03;

    const-class v3, Lads_mobile_sdk/n03;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v2, v1, Lads_mobile_sdk/ch0;->e:Lads_mobile_sdk/tn1;

    const-class v3, Lads_mobile_sdk/tn1;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 10
    iget-object v2, v1, Lads_mobile_sdk/ch0;->f:Lads_mobile_sdk/md1;

    const-class v3, Lads_mobile_sdk/md1;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    iget-object v2, v1, Lads_mobile_sdk/ch0;->g:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 12
    iget-object v2, v1, Lads_mobile_sdk/ch0;->h:Lads_mobile_sdk/m13;

    const-class v3, Lads_mobile_sdk/m13;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    iget-object v2, v1, Lads_mobile_sdk/ch0;->i:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    iget-object v2, v1, Lads_mobile_sdk/ch0;->j:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 15
    iget-object v2, v1, Lads_mobile_sdk/ch0;->k:Lads_mobile_sdk/pb;

    const-class v3, Lads_mobile_sdk/pb;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    iget-object v2, v1, Lads_mobile_sdk/ch0;->l:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    const-class v3, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    invoke-static {v2, v3}, Lads_mobile_sdk/kq2;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    new-instance v4, Lads_mobile_sdk/dh0;

    iget-object v5, v1, Lads_mobile_sdk/ch0;->a:Lads_mobile_sdk/vf0;

    iget-object v6, v1, Lads_mobile_sdk/ch0;->b:Lads_mobile_sdk/j53;

    iget-object v7, v1, Lads_mobile_sdk/ch0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    iget-object v8, v1, Lads_mobile_sdk/ch0;->d:Lads_mobile_sdk/n03;

    iget-object v9, v1, Lads_mobile_sdk/ch0;->e:Lads_mobile_sdk/tn1;

    iget-object v10, v1, Lads_mobile_sdk/ch0;->f:Lads_mobile_sdk/md1;

    iget-object v11, v1, Lads_mobile_sdk/ch0;->g:Ljava/lang/Boolean;

    iget-object v12, v1, Lads_mobile_sdk/ch0;->h:Lads_mobile_sdk/m13;

    iget-object v13, v1, Lads_mobile_sdk/ch0;->i:Ljava/lang/Boolean;

    iget-object v14, v1, Lads_mobile_sdk/ch0;->j:Ljava/lang/Boolean;

    iget-object v15, v1, Lads_mobile_sdk/ch0;->k:Lads_mobile_sdk/pb;

    iget-object v1, v1, Lads_mobile_sdk/ch0;->l:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;

    move-object/from16 v16, v1

    invoke-direct/range {v4 .. v16}, Lads_mobile_sdk/dh0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/md1;Ljava/lang/Boolean;Lads_mobile_sdk/m13;Ljava/lang/Boolean;Ljava/lang/Boolean;Lads_mobile_sdk/pb;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialRequest;)V

    .line 18
    iget-object v1, v4, Lads_mobile_sdk/dh0;->G0:Lads_mobile_sdk/dw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/mi1;

    .line 19
    check-cast v1, Lads_mobile_sdk/si1;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lads_mobile_sdk/si1;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
