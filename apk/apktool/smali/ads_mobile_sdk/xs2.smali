.class public final Lads_mobile_sdk/xs2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Lads_mobile_sdk/j53;

.field public f:I

.field public g:I

.field public final synthetic h:Lads_mobile_sdk/pt2;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Lads_mobile_sdk/j53;

.field public final synthetic k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

.field public final synthetic l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iput-object p2, p0, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iput-object p3, p0, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    iput-object p4, p0, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iput-object p5, p0, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lads_mobile_sdk/xs2;

    iget-object v1, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v2, p0, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    iget-object v4, p0, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v5, p0, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/xs2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lads_mobile_sdk/j53;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/xs2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/xs2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/xs2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 199
    iget v1, p0, Lads_mobile_sdk/xs2;->g:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    move-object v6, p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_6

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_7

    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_8

    :pswitch_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_9

    :pswitch_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_a

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_b

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, p0

    goto/16 :goto_d

    :pswitch_7
    iget v1, p0, Lads_mobile_sdk/xs2;->f:I

    iget-object v4, p0, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v5, p0, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/j53;

    iget-object v6, p0, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/k6;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v8, v7

    move-object v7, v4

    move-object v4, v8

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    move v8, v1

    goto/16 :goto_4

    :pswitch_8
    iget-object v1, p0, Lads_mobile_sdk/xs2;->e:Lads_mobile_sdk/j53;

    iget-object v4, p0, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    check-cast v5, Lads_mobile_sdk/pt2;

    iget-object v6, p0, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, p0, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v7

    goto :goto_1

    :pswitch_9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lads_mobile_sdk/pt2;->c(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/ex0;

    move-result-object p1

    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->u0()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/k6;

    move-result-object p1

    iget-object v1, p0, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    invoke-virtual {p1, v4, v1}, Lads_mobile_sdk/k6;->c(Lads_mobile_sdk/j53;Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;->getBufferSize()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v1, :cond_1

    .line 205
    const-string p1, "PreloadConfiguration.bufferSize must be > 0 or null"

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 206
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 208
    :cond_1
    iget-object v4, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    invoke-static {v4}, Lads_mobile_sdk/pt2;->c(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/ex0;

    move-result-object v4

    invoke-virtual {v4}, Lads_mobile_sdk/ex0;->r0()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 209
    iget-object v4, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    invoke-static {v4}, Lads_mobile_sdk/pt2;->d(Lads_mobile_sdk/pt2;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v6

    iget-object v5, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v4, p0, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v7, p0, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    .line 1036
    iput-object p1, p0, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object v6, p0, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object v5, p0, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object v4, p0, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    iput-object v7, p0, Lads_mobile_sdk/xs2;->e:Lads_mobile_sdk/j53;

    iput v1, p0, Lads_mobile_sdk/xs2;->g:I

    invoke-interface {v6, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    :goto_0
    move-object v6, p0

    goto/16 :goto_c

    :cond_2
    move-object v1, v7

    .line 1037
    :goto_1
    :try_start_0
    invoke-static {v5}, Lads_mobile_sdk/pt2;->b(Lads_mobile_sdk/pt2;)Ljava/util/List;

    move-result-object v5

    .line 1866
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1867
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lads_mobile_sdk/h6;

    .line 1868
    invoke-virtual {v9}, Lads_mobile_sdk/h6;->g()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Lads_mobile_sdk/h6;->i()Lads_mobile_sdk/j53;

    move-result-object v9

    if-ne v9, v1, :cond_3

    goto :goto_2

    .line 2697
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2698
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/h6;

    invoke-virtual {v5}, Lads_mobile_sdk/h6;->f()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v4, v5

    goto :goto_3

    .line 3529
    :cond_5
    invoke-interface {v6, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3530
    iget-object v1, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    invoke-static {v1}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/k6;

    move-result-object v7

    .line 3531
    iget-object v6, p0, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    .line 3532
    iget-object v5, p0, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    .line 3535
    iget-object v1, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iput-object v7, p0, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object v6, p0, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object v5, p0, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    iput-object v3, p0, Lads_mobile_sdk/xs2;->e:Lads_mobile_sdk/j53;

    iput v4, p0, Lads_mobile_sdk/xs2;->f:I

    const/4 v8, 0x2

    iput v8, p0, Lads_mobile_sdk/xs2;->g:I

    invoke-virtual {v1, p0}, Lads_mobile_sdk/pt2;->v(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    goto :goto_0

    :cond_6
    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    move v8, v4

    move-object v4, v7

    move-object v7, p1

    move-object p1, v1

    .line 3536
    :goto_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 3537
    invoke-virtual/range {v4 .. v9}, Lads_mobile_sdk/k6;->a(Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/Integer;II)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 4366
    invoke-interface {v6, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    .line 4367
    :cond_7
    :goto_5
    iget-object p1, p0, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_1

    :pswitch_a
    move-object v6, p0

    .line 4416
    iget-object p1, v6, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lads_mobile_sdk/pt2;->e(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/ur3;

    move-result-object p1

    .line 4417
    new-instance v0, Ljava/lang/Exception;

    iget-object v1, v6, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported or mismatched preload request "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4418
    iget-object v1, v6, Lads_mobile_sdk/xs2;->j:Lads_mobile_sdk/j53;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4419
    check-cast p1, Lads_mobile_sdk/as3;

    invoke-virtual {p1, v1, v0}, Lads_mobile_sdk/as3;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 4420
    :pswitch_b
    iget-object p1, p0, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;->getRequest()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p1

    .line 4421
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    if-eqz v1, :cond_9

    .line 4422
    iget-object v6, p0, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    .line 4423
    iget-object v8, p0, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    .line 4424
    iget-object v5, p0, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    .line 4425
    move-object v7, p1

    check-cast v7, Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;

    .line 4426
    iget-object v4, p0, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    .line 4427
    iput-object v3, p0, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object v3, p0, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object v3, p0, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object v3, p0, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    const/16 p1, 0x9

    iput p1, p0, Lads_mobile_sdk/xs2;->g:I

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lads_mobile_sdk/pt2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/swipeableinterstitial/SwipeableInterstitialAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, v9

    if-ne p1, v0, :cond_8

    goto/16 :goto_c

    .line 4428
    :cond_8
    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_e

    :cond_9
    move-object v6, p0

    .line 4435
    const-string p1, "Swipeable interstitial preloading was requested without a SwipeableInterstitialAdRequest"

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_c
    move-object v6, p0

    .line 4436
    iget-object p1, v6, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v1, v6, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v2, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v4, v6, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    const/16 v3, 0x8

    iput v3, v6, Lads_mobile_sdk/xs2;->g:I

    invoke-static {p1, v1, v2, v4, p0}, Lads_mobile_sdk/pt2;->c(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    goto/16 :goto_c

    .line 4437
    :cond_a
    :goto_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_e

    :pswitch_d
    move-object v6, p0

    .line 4438
    iget-object p1, v6, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v1, v6, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v2, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v4, v6, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object v3, v6, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    const/4 v3, 0x7

    iput v3, v6, Lads_mobile_sdk/xs2;->g:I

    invoke-static {p1, v1, v2, v4, p0}, Lads_mobile_sdk/pt2;->d(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b

    goto/16 :goto_c

    .line 4439
    :cond_b
    :goto_8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_e

    :pswitch_e
    move-object v6, p0

    .line 4440
    iget-object p1, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;->getRequest()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object p1

    .line 4441
    instance-of v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    if-eqz v1, :cond_d

    move-object v1, v3

    .line 4442
    iget-object v3, v6, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v5, v6, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v2, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    move-object v4, p1

    check-cast v4, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-object p1, v1

    iget-object v1, v6, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v6, Lads_mobile_sdk/xs2;->g:I

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/pt2;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    goto/16 :goto_c

    .line 4443
    :cond_c
    :goto_9
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto/16 :goto_e

    .line 4445
    :cond_d
    const-string p1, "Native preloading was requested without a NativeAdRequest"

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    goto/16 :goto_e

    :pswitch_f
    move-object v6, p0

    move-object p1, v3

    .line 4446
    iget-object v1, v6, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v2, v6, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v3, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v4, v6, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, v6, Lads_mobile_sdk/xs2;->g:I

    invoke-static {v1, v2, v3, v4, p0}, Lads_mobile_sdk/pt2;->b(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_e

    goto :goto_c

    .line 4447
    :cond_e
    :goto_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_e

    :pswitch_10
    move-object v6, p0

    move-object p1, v3

    .line 4448
    iget-object v1, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;->getRequest()Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    move-result-object v1

    .line 4449
    instance-of v3, v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    if-eqz v3, :cond_10

    .line 4450
    iget-object v4, v6, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v5, v6, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v3, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    check-cast v1, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;

    iget-object v2, v6, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v6, Lads_mobile_sdk/xs2;->g:I

    invoke-static/range {v1 .. v6}, Lads_mobile_sdk/pt2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_f

    goto :goto_c

    .line 4451
    :cond_f
    :goto_b
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_e

    .line 4453
    :cond_10
    const-string p1, "Banner preloading was requested without a BannerAdRequest"

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    goto :goto_e

    :pswitch_11
    move-object v6, p0

    move-object p1, v3

    .line 4454
    iget-object v1, v6, Lads_mobile_sdk/xs2;->h:Lads_mobile_sdk/pt2;

    iget-object v2, v6, Lads_mobile_sdk/xs2;->i:Ljava/lang/String;

    iget-object v3, v6, Lads_mobile_sdk/xs2;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;

    iget-object v4, v6, Lads_mobile_sdk/xs2;->l:Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->a:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->b:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->c:Ljava/lang/Object;

    iput-object p1, v6, Lads_mobile_sdk/xs2;->d:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v6, Lads_mobile_sdk/xs2;->g:I

    invoke-static {v1, v2, v3, v4, p0}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadConfiguration;Lcom/google/android/libraries/ads/mobile/sdk/common/PreloadCallback;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_11

    :goto_c
    return-object v0

    .line 4455
    :cond_11
    :goto_d
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 4506
    :goto_e
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method
