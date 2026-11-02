.class public final Lads_mobile_sdk/ww2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/px2;

.field public final synthetic e:Lads_mobile_sdk/ei1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    iput-object p2, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/ww2;

    iget-object v0, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ww2;-><init>(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ww2;

    iget-object v0, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ww2;-><init>(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ww2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 81
    iget v1, p0, Lads_mobile_sdk/ww2;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    .line 83
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 84
    iget-object p1, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    .line 85
    iget-object v1, p1, Lads_mobile_sdk/px2;->e:Lads_mobile_sdk/g83;

    .line 86
    sget-object v6, Lads_mobile_sdk/s11;->E:Lads_mobile_sdk/s11;

    .line 87
    iget-object p1, p1, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 89
    iget-object v7, p0, Lads_mobile_sdk/ww2;->d:Lads_mobile_sdk/px2;

    .line 90
    iget-object v8, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 91
    iget-object v9, p0, Lads_mobile_sdk/ww2;->e:Lads_mobile_sdk/ei1;

    .line 92
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 93
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v11, ""

    if-nez v10, :cond_f

    .line 94
    invoke-static {v1, v6, p1, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 95
    :try_start_2
    iget-object v1, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 96
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 97
    iget-object v2, v7, Lads_mobile_sdk/px2;->f:Ljava/lang/String;

    .line 98
    iput-object v2, v1, Lads_mobile_sdk/n03;->a:Ljava/lang/String;

    .line 99
    iget-object v2, v7, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 100
    iput-object v2, v1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 101
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_3

    .line 102
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v5

    :goto_0
    if-nez v2, :cond_4

    move-object v2, v11

    .line 104
    :cond_4
    iput-object v2, v1, Lads_mobile_sdk/n03;->b:Ljava/lang/String;

    .line 105
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_5

    .line 106
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v4

    .line 107
    :goto_1
    iput-boolean v2, v1, Lads_mobile_sdk/n03;->f:Z

    .line 108
    iget-object v2, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v2, :cond_6

    .line 109
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    move-object v2, v5

    :goto_2
    if-nez v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v11, v2

    .line 111
    :goto_3
    iput-object v11, v1, Lads_mobile_sdk/n03;->g:Ljava/lang/String;

    .line 114
    iput-object p1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/ww2;->c:I

    invoke-static {v7, v9, p0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v1, v0, :cond_8

    goto/16 :goto_a

    :cond_8
    move-object v0, p1

    move-object v1, v0

    .line 115
    :goto_4
    :try_start_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 367
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_9

    .line 368
    check-cast p1, Lads_mobile_sdk/i01;

    .line 369
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 370
    :cond_9
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 378
    :goto_5
    :try_start_4
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 382
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_e

    .line 384
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_a

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_a

    .line 390
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 396
    :cond_a
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d

    .line 397
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 398
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b

    throw p1

    .line 399
    :cond_b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 400
    :cond_c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 401
    :cond_d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 402
    :cond_e
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 403
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 437
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v6, p1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 438
    :try_start_6
    iget-object v1, v7, Lads_mobile_sdk/px2;->c:Lads_mobile_sdk/ks3;

    .line 439
    iget-object v1, v1, Lads_mobile_sdk/ks3;->a:Lads_mobile_sdk/n03;

    .line 440
    iget-object v3, v7, Lads_mobile_sdk/px2;->f:Ljava/lang/String;

    .line 441
    iput-object v3, v1, Lads_mobile_sdk/n03;->a:Ljava/lang/String;

    .line 442
    iget-object v3, v7, Lads_mobile_sdk/px2;->g:Lads_mobile_sdk/j53;

    .line 443
    iput-object v3, v1, Lads_mobile_sdk/n03;->c:Lads_mobile_sdk/j53;

    .line 444
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_10

    .line 445
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_10
    move-object v3, v5

    :goto_6
    if-nez v3, :cond_11

    move-object v3, v11

    .line 447
    :cond_11
    iput-object v3, v1, Lads_mobile_sdk/n03;->b:Ljava/lang/String;

    .line 448
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_12

    .line 449
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getSkipUninitializedAdapters()Z

    move-result v3

    goto :goto_7

    :cond_12
    move v3, v4

    .line 450
    :goto_7
    iput-boolean v3, v1, Lads_mobile_sdk/n03;->f:Z

    .line 451
    iget-object v3, v7, Lads_mobile_sdk/px2;->h:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    if-eqz v3, :cond_13

    .line 452
    invoke-virtual {v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;->getRequestAgent()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_13
    move-object v3, v5

    :goto_8
    if-nez v3, :cond_14

    goto :goto_9

    :cond_14
    move-object v11, v3

    .line 454
    :goto_9
    iput-object v11, v1, Lads_mobile_sdk/n03;->g:Ljava/lang/String;

    .line 457
    iput-object p1, p0, Lads_mobile_sdk/ww2;->a:Lads_mobile_sdk/rr3;

    iput-object p1, p0, Lads_mobile_sdk/ww2;->b:Lads_mobile_sdk/rr3;

    iput v2, p0, Lads_mobile_sdk/ww2;->c:I

    invoke-static {v7, v9, p0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;Lads_mobile_sdk/ei1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v1, v0, :cond_15

    :goto_a
    return-object v0

    :cond_15
    move-object v0, p1

    move-object v1, v0

    .line 458
    :goto_b
    :try_start_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 747
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_16

    .line 748
    check-cast p1, Lads_mobile_sdk/i01;

    .line 749
    invoke-static {p1, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 750
    :cond_16
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 751
    :goto_c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_5
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    move-object v0, v1

    .line 1044
    :goto_d
    :try_start_8
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1048
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1b

    .line 1050
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_17

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17

    .line 1056
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1062
    :cond_17
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_1a

    .line 1063
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_19

    .line 1064
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_18

    throw p1

    .line 1065
    :cond_18
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1066
    :cond_19
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1067
    :cond_1a
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1068
    :cond_1b
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p1

    .line 1069
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
