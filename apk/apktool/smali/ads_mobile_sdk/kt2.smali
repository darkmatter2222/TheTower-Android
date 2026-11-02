.class public final Lads_mobile_sdk/kt2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public synthetic a:Z

.field public synthetic b:Z

.field public final synthetic c:Lads_mobile_sdk/pt2;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

.field public final synthetic f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

.field public final synthetic g:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/kt2;->c:Lads_mobile_sdk/pt2;

    iput-object p5, p0, Lads_mobile_sdk/kt2;->d:Ljava/lang/String;

    iput-object p2, p0, Lads_mobile_sdk/kt2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object p1, p0, Lads_mobile_sdk/kt2;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object p4, p0, Lads_mobile_sdk/kt2;->g:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    move-object v6, p3

    check-cast v6, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/kt2;

    iget-object v3, p0, Lads_mobile_sdk/kt2;->c:Lads_mobile_sdk/pt2;

    iget-object v5, p0, Lads_mobile_sdk/kt2;->d:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/kt2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v1, p0, Lads_mobile_sdk/kt2;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v4, p0, Lads_mobile_sdk/kt2;->g:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/kt2;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-boolean p1, v0, Lads_mobile_sdk/kt2;->a:Z

    iput-boolean p2, v0, Lads_mobile_sdk/kt2;->b:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/kt2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 733
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean v6, v0, Lads_mobile_sdk/kt2;->a:Z

    iget-boolean v7, v0, Lads_mobile_sdk/kt2;->b:Z

    .line 738
    iget-object v1, v0, Lads_mobile_sdk/kt2;->c:Lads_mobile_sdk/pt2;

    .line 739
    iget-object v9, v1, Lads_mobile_sdk/pt2;->c:Lkotlinx/coroutines/CoroutineScope;

    .line 740
    iget-object v10, v1, Lads_mobile_sdk/pt2;->e:Lads_mobile_sdk/g83;

    .line 741
    iget-object v11, v1, Lads_mobile_sdk/pt2;->f:Lads_mobile_sdk/tx;

    .line 742
    iget-object v12, v1, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    .line 743
    iget-object v13, v1, Lads_mobile_sdk/pt2;->h:Lads_mobile_sdk/f13;

    .line 744
    iget-boolean v14, v1, Lads_mobile_sdk/pt2;->H:Z

    .line 745
    sget-object v2, Lads_mobile_sdk/j53;->b:Lads_mobile_sdk/h53;

    .line 746
    iget-object v15, v1, Lads_mobile_sdk/pt2;->p:Lads_mobile_sdk/k6;

    .line 747
    new-instance v1, Lads_mobile_sdk/jt2;

    iget-object v2, v0, Lads_mobile_sdk/kt2;->d:Ljava/lang/String;

    iget-object v3, v0, Lads_mobile_sdk/kt2;->e:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v4, v0, Lads_mobile_sdk/kt2;->f:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iget-object v5, v0, Lads_mobile_sdk/kt2;->c:Lads_mobile_sdk/pt2;

    iget-object v8, v0, Lads_mobile_sdk/kt2;->g:Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    invoke-direct/range {v1 .. v15}, Lads_mobile_sdk/jt2;-><init>(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lads_mobile_sdk/pt2;ZZLcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/tx;Lads_mobile_sdk/ex0;Lads_mobile_sdk/f13;ZLads_mobile_sdk/k6;)V

    return-object v1
.end method
