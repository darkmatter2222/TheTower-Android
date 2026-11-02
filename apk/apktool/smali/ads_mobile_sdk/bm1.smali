.class public final Lads_mobile_sdk/bm1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/cm1;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Ljava/io/Closeable;

.field public d:Lkotlinx/coroutines/sync/Mutex;

.field public e:I

.field public final synthetic f:Lads_mobile_sdk/cm1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/bm1;->f:Lads_mobile_sdk/cm1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lads_mobile_sdk/bm1;

    iget-object v0, p0, Lads_mobile_sdk/bm1;->f:Lads_mobile_sdk/cm1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/bm1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/bm1;

    iget-object v0, p0, Lads_mobile_sdk/bm1;->f:Lads_mobile_sdk/cm1;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/bm1;-><init>(Lads_mobile_sdk/cm1;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/bm1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 332
    iget v1, p0, Lads_mobile_sdk/bm1;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v1, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v3, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_c

    :catchall_0
    move-exception p1

    goto/16 :goto_e

    .line 333
    :pswitch_1
    iget-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_a

    .line 334
    :pswitch_2
    iget-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v5

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_e

    .line 335
    :pswitch_3
    iget-object v1, p0, Lads_mobile_sdk/bm1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v6, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v7, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object p1, v6

    move-object v6, v7

    goto/16 :goto_8

    :catchall_2
    move-exception p1

    goto/16 :goto_f

    .line 336
    :pswitch_4
    iget-object v0, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v1, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v3, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/16 :goto_3

    :catchall_3
    move-exception p1

    goto/16 :goto_4

    .line 337
    :pswitch_5
    iget-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/16 :goto_2

    .line 338
    :pswitch_6
    iget-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object p1, v5

    goto/16 :goto_1

    :catchall_4
    move-exception p1

    move-object v0, v1

    move-object v1, v5

    goto/16 :goto_4

    .line 339
    :pswitch_7
    iget-object v1, p0, Lads_mobile_sdk/bm1;->d:Lkotlinx/coroutines/sync/Mutex;

    iget-object v5, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iget-object v6, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iget-object v7, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    :try_start_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object p1, v6

    move-object v6, v7

    goto :goto_0

    :catchall_5
    move-exception p1

    goto/16 :goto_6

    .line 340
    :pswitch_8
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 341
    iget-object p1, p0, Lads_mobile_sdk/bm1;->f:Lads_mobile_sdk/cm1;

    .line 342
    iget-object v1, p1, Lads_mobile_sdk/cm1;->g:Lads_mobile_sdk/g83;

    .line 343
    sget-object v5, Lads_mobile_sdk/s11;->z:Lads_mobile_sdk/s11;

    .line 438
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 439
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 440
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 441
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 442
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 443
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 444
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 445
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 446
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v8, :cond_a

    .line 447
    invoke-static {v1, v5, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 448
    :try_start_8
    iget-object v1, p1, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 449
    iput-object p1, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iput-object v1, p0, Lads_mobile_sdk/bm1;->d:Lkotlinx/coroutines/sync/Mutex;

    iput v3, p0, Lads_mobile_sdk/bm1;->e:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    if-ne v6, v0, :cond_0

    goto/16 :goto_b

    :cond_0
    move-object v6, p1

    move-object p1, v5

    .line 450
    :goto_0
    :try_start_9
    sget-object v7, Lads_mobile_sdk/kl1;->a:Lads_mobile_sdk/kl1;

    .line 451
    iput-object v7, v6, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    .line 452
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 561
    :try_start_a
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    .line 562
    :try_start_b
    iget-object v1, v6, Lads_mobile_sdk/cm1;->t:Lads_mobile_sdk/ks1;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 563
    :try_start_c
    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/jb3;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_b

    :try_start_d
    iput-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object p1, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iput-object v4, p0, Lads_mobile_sdk/bm1;->d:Lkotlinx/coroutines/sync/Mutex;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    const/4 v7, 0x2

    :try_start_e
    iput v7, p0, Lads_mobile_sdk/bm1;->e:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :try_start_f
    check-cast v1, Lads_mobile_sdk/rp0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 564
    invoke-static {v1, p0}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    if-ne v1, v0, :cond_1

    goto/16 :goto_b

    :cond_1
    move-object v1, v5

    .line 565
    :goto_1
    :try_start_10
    iget-object v5, v6, Lads_mobile_sdk/cm1;->v:Lads_mobile_sdk/cw2;

    .line 566
    invoke-interface {v5}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/mk3;

    iput-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object p1, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    const/4 v7, 0x3

    iput v7, p0, Lads_mobile_sdk/bm1;->e:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 567
    invoke-static {v5, p0}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    if-ne v5, v0, :cond_2

    goto/16 :goto_b

    :cond_2
    move-object v5, p1

    .line 568
    :goto_2
    :try_start_11
    iget-object p1, v6, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    .line 569
    iput-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    const/4 v7, 0x4

    :try_start_12
    iput v7, p0, Lads_mobile_sdk/bm1;->e:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 570
    invoke-static {p1, v3, p0}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    if-ne p1, v0, :cond_3

    goto/16 :goto_b

    :cond_3
    move-object v0, v1

    move-object v1, v5

    move-object v3, v6

    .line 571
    :goto_3
    :try_start_14
    iget-object p1, v3, Lads_mobile_sdk/cm1;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 572
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 573
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 679
    instance-of v3, p1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_4

    .line 680
    check-cast p1, Lads_mobile_sdk/i01;

    .line 681
    invoke-static {p1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 682
    :cond_4
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :catchall_6
    move-exception p1

    move-object v6, v5

    move-object v5, v1

    goto :goto_6

    :catchall_7
    move-exception p1

    goto :goto_5

    :catchall_8
    move-exception v0

    move-object v12, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v12

    :goto_4
    move-object v5, v1

    goto :goto_7

    :catchall_9
    move-exception v0

    move-object v1, v5

    move-object v5, p1

    move-object p1, v0

    :goto_5
    move-object v0, v1

    goto :goto_7

    :catchall_a
    move-exception v0

    .line 694
    :try_start_15
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :catchall_b
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    :goto_6
    move-object v0, v5

    move-object v5, v6

    goto :goto_7

    :catchall_c
    move-exception p1

    move-object v0, v5

    .line 701
    :goto_7
    :try_start_16
    invoke-virtual {v5, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 705
    instance-of v1, p1, Lads_mobile_sdk/v24;

    if-nez v1, :cond_9

    .line 707
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_5

    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_5

    .line 713
    invoke-virtual {v5, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 719
    :cond_5
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_8

    .line 720
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_7

    .line 721
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_6

    throw p1

    .line 722
    :cond_6
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 723
    :cond_7
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 724
    :cond_8
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 725
    :cond_9
    throw p1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    :catchall_d
    move-exception p1

    .line 726
    :try_start_17
    throw p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    :catchall_e
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 771
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v5, v1, v3}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 772
    :try_start_18
    iget-object v1, p1, Lads_mobile_sdk/cm1;->x:Lkotlinx/coroutines/sync/Mutex;

    .line 773
    iput-object p1, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iput-object v1, p0, Lads_mobile_sdk/bm1;->d:Lkotlinx/coroutines/sync/Mutex;

    const/4 v6, 0x5

    iput v6, p0, Lads_mobile_sdk/bm1;->e:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    if-ne v6, v0, :cond_b

    goto :goto_b

    :cond_b
    move-object v6, p1

    move-object p1, v5

    .line 774
    :goto_8
    :try_start_19
    sget-object v7, Lads_mobile_sdk/kl1;->a:Lads_mobile_sdk/kl1;

    .line 775
    iput-object v7, v6, Lads_mobile_sdk/cm1;->y:Lads_mobile_sdk/kl1;

    .line 776
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_12

    .line 885
    :try_start_1a
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_13

    .line 886
    :try_start_1b
    iget-object v1, v6, Lads_mobile_sdk/cm1;->t:Lads_mobile_sdk/ks1;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    .line 887
    :try_start_1c
    invoke-interface {v1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/jb3;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    :try_start_1d
    iput-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object p1, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    iput-object v4, p0, Lads_mobile_sdk/bm1;->d:Lkotlinx/coroutines/sync/Mutex;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_11

    const/4 v7, 0x6

    :try_start_1e
    iput v7, p0, Lads_mobile_sdk/bm1;->e:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_13

    :try_start_1f
    check-cast v1, Lads_mobile_sdk/rp0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 888
    invoke-static {v1, p0}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_11

    if-ne v1, v0, :cond_c

    goto :goto_b

    :cond_c
    move-object v1, v5

    .line 889
    :goto_9
    :try_start_20
    iget-object v5, v6, Lads_mobile_sdk/cm1;->v:Lads_mobile_sdk/cw2;

    .line 890
    invoke-interface {v5}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/mk3;

    iput-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object p1, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    const/4 v7, 0x7

    iput v7, p0, Lads_mobile_sdk/bm1;->e:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 891
    invoke-static {v5, p0}, Lads_mobile_sdk/rp0;->a(Lads_mobile_sdk/rp0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    if-ne v5, v0, :cond_d

    goto :goto_b

    :cond_d
    move-object v5, p1

    .line 892
    :goto_a
    :try_start_21
    iget-object p1, v6, Lads_mobile_sdk/cm1;->u:Lads_mobile_sdk/pn;

    .line 893
    iput-object v6, p0, Lads_mobile_sdk/bm1;->a:Lads_mobile_sdk/cm1;

    iput-object v5, p0, Lads_mobile_sdk/bm1;->b:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/bm1;->c:Ljava/io/Closeable;

    const/16 v7, 0x8

    iput v7, p0, Lads_mobile_sdk/bm1;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 894
    invoke-static {p1, v3, p0}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    if-ne p1, v0, :cond_e

    :goto_b
    return-object v0

    :cond_e
    move-object v0, v1

    move-object v1, v5

    move-object v3, v6

    .line 895
    :goto_c
    :try_start_22
    iget-object p1, v3, Lads_mobile_sdk/cm1;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 896
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 897
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1040
    instance-of v3, p1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_f

    .line 1041
    check-cast p1, Lads_mobile_sdk/i01;

    .line 1042
    invoke-static {p1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 1043
    :cond_f
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1044
    :goto_d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_f
    move-exception p1

    goto :goto_10

    :catchall_10
    move-exception v0

    move-object v12, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v12

    :goto_e
    move-object v5, v1

    move-object v1, v0

    goto :goto_10

    :catchall_11
    move-exception v0

    move-object v1, v5

    move-object v5, p1

    move-object p1, v0

    goto :goto_10

    :catchall_12
    move-exception v0

    .line 1147
    :try_start_23
    invoke-interface {v1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_13

    :catchall_13
    move-exception v0

    move-object v6, p1

    move-object p1, v0

    :goto_f
    move-object v1, v5

    move-object v5, v6

    goto :goto_10

    :catchall_14
    move-exception p1

    move-object v1, v5

    .line 1191
    :goto_10
    :try_start_24
    invoke-virtual {v5, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1195
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_14

    .line 1197
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_10

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_10

    .line 1203
    invoke-virtual {v5, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1209
    :cond_10
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_13

    .line 1210
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_12

    .line 1211
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_11

    throw p1

    .line 1212
    :cond_11
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1213
    :cond_12
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 1214
    :cond_13
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 1215
    :cond_14
    throw p1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_15

    :catchall_15
    move-exception p1

    .line 1216
    :try_start_25
    throw p1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_16

    :catchall_16
    move-exception v0

    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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
.end method
