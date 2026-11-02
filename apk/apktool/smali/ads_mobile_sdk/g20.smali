.class public final Lads_mobile_sdk/g20;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lads_mobile_sdk/g30;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/g30;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/g20;

    iget-object v1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/g20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/g20;

    iget-object v1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/g20;-><init>(Lads_mobile_sdk/g30;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/g20;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 625
    iget v1, p0, Lads_mobile_sdk/g20;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/g20;->c:Lads_mobile_sdk/g30;

    iget-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/v01;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v4, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    .line 626
    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    check-cast v1, Ljava/io/Closeable;

    iget-object v4, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 627
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 629
    iget-object p1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    .line 630
    iget-object v1, p1, Lads_mobile_sdk/g30;->o:Lads_mobile_sdk/g83;

    .line 631
    sget-object v7, Lads_mobile_sdk/s11;->b1:Lads_mobile_sdk/s11;

    .line 1025
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 1026
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 1027
    new-instance v10, Lads_mobile_sdk/n03;

    invoke-direct {v10}, Lads_mobile_sdk/n03;-><init>()V

    .line 1028
    new-instance v11, Lads_mobile_sdk/tn1;

    invoke-direct {v11}, Lads_mobile_sdk/tn1;-><init>()V

    .line 1029
    new-instance v12, Lads_mobile_sdk/m33;

    invoke-direct {v12}, Lads_mobile_sdk/m33;-><init>()V

    .line 1030
    new-instance v13, Lads_mobile_sdk/zb;

    invoke-direct {v13}, Lads_mobile_sdk/zb;-><init>()V

    .line 1031
    invoke-direct {v9, v10, v11, v12, v13}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 1032
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 1033
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v10, :cond_b

    .line 1034
    invoke-static {v1, v7, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 1035
    :try_start_2
    iget-object p1, p1, Lads_mobile_sdk/g30;->q:Lads_mobile_sdk/cw2;

    .line 1036
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wt3;

    iput-object v1, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    iput v5, p0, Lads_mobile_sdk/g20;->d:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/wt3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v0, :cond_4

    goto/16 :goto_6

    :cond_4
    move-object v4, v1

    .line 1037
    :goto_0
    :try_start_3
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1436
    instance-of v5, p1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_5

    .line 1437
    move-object v5, p1

    check-cast v5, Lads_mobile_sdk/i01;

    .line 1438
    invoke-static {v5, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1439
    :cond_5
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_1
    move-object v2, p1

    goto/16 :goto_5

    :goto_2
    move-object v0, v1

    move-object v1, v4

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, v1

    .line 1447
    :goto_3
    :try_start_4
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1451
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_a

    .line 1453
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_6

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_6

    .line 1459
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1465
    :cond_6
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_9

    .line 1466
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_8

    .line 1467
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_7

    throw p1

    .line 1468
    :cond_7
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1469
    :cond_8
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1470
    :cond_9
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1471
    :cond_a
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 1472
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 1506
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v7, v1, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 1507
    :try_start_6
    iget-object p1, p1, Lads_mobile_sdk/g30;->q:Lads_mobile_sdk/cw2;

    .line 1508
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/wt3;

    iput-object v1, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    iput v4, p0, Lads_mobile_sdk/g20;->d:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/wt3;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne p1, v0, :cond_c

    goto :goto_6

    :cond_c
    move-object v4, v1

    .line 1509
    :goto_4
    :try_start_7
    check-cast p1, Lads_mobile_sdk/v01;

    .line 1945
    instance-of v5, p1, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_d

    .line 1946
    move-object v5, p1

    check-cast v5, Lads_mobile_sdk/i01;

    .line 1947
    invoke-static {v5, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1948
    :cond_d
    invoke-static {v1, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1949
    :goto_5
    instance-of p1, v2, Lads_mobile_sdk/q01;

    if-eqz p1, :cond_f

    .line 1950
    iget-object p1, p0, Lads_mobile_sdk/g20;->e:Lads_mobile_sdk/g30;

    .line 1951
    iget-object v1, p1, Lads_mobile_sdk/g30;->M:Lkotlinx/coroutines/sync/Mutex;

    .line 1952
    iput-object v2, p0, Lads_mobile_sdk/g20;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/g20;->b:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/g20;->c:Lads_mobile_sdk/g30;

    iput v3, p0, Lads_mobile_sdk/g20;->d:I

    invoke-interface {v1, v6, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_e

    :goto_6
    return-object v0

    :cond_e
    move-object v0, p1

    .line 1953
    :goto_7
    :try_start_8
    move-object p1, v2

    check-cast p1, Lads_mobile_sdk/q01;

    .line 1954
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 1955
    check-cast p1, Ljava/lang/String;

    .line 1956
    iput-object p1, v0, Lads_mobile_sdk/g30;->N:Ljava/lang/String;

    .line 1957
    sget-object p1, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 1958
    iget-object p1, v0, Lads_mobile_sdk/g30;->n:Lads_mobile_sdk/tx;

    .line 1959
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1960
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1961
    sget-object p1, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v3, v4, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v3

    .line 1962
    iput-wide v3, v0, Lads_mobile_sdk/g30;->P:J

    .line 1963
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2433
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object v2

    :catchall_5
    move-exception p1

    .line 2434
    invoke-interface {v1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_f
    return-object v2

    :goto_8
    move-object v0, v1

    move-object v1, v4

    goto :goto_9

    :catchall_6
    move-exception p1

    move-object v0, v1

    .line 2435
    :goto_9
    :try_start_9
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2439
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_14

    .line 2441
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_10

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_10

    .line 2447
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2453
    :cond_10
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_13

    .line 2454
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_12

    .line 2455
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_11

    throw p1

    .line 2456
    :cond_11
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2457
    :cond_12
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 2458
    :cond_13
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 2459
    :cond_14
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception p1

    .line 2460
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :catchall_8
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
