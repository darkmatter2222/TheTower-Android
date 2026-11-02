.class public final Lads_mobile_sdk/ko2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/mo2;

.field public final synthetic e:Lads_mobile_sdk/s11;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/mo2;Lads_mobile_sdk/s11;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ko2;->d:Lads_mobile_sdk/mo2;

    iput-object p2, p0, Lads_mobile_sdk/ko2;->e:Lads_mobile_sdk/s11;

    iput-boolean p3, p0, Lads_mobile_sdk/ko2;->f:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/ko2;

    iget-object v0, p0, Lads_mobile_sdk/ko2;->d:Lads_mobile_sdk/mo2;

    iget-object v1, p0, Lads_mobile_sdk/ko2;->e:Lads_mobile_sdk/s11;

    iget-boolean v2, p0, Lads_mobile_sdk/ko2;->f:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lads_mobile_sdk/ko2;-><init>(Lads_mobile_sdk/mo2;Lads_mobile_sdk/s11;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ko2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ko2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ko2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lads_mobile_sdk/ko2;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iget-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 72
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lads_mobile_sdk/ko2;->d:Lads_mobile_sdk/mo2;

    .line 74
    iget-object v1, p1, Lads_mobile_sdk/mo2;->d:Lads_mobile_sdk/g83;

    .line 75
    iget-object v6, p0, Lads_mobile_sdk/ko2;->e:Lads_mobile_sdk/s11;

    iget-boolean v7, p0, Lads_mobile_sdk/ko2;->f:Z

    .line 197
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 198
    new-instance v9, Lads_mobile_sdk/ks3;

    .line 199
    new-instance v10, Lads_mobile_sdk/n03;

    invoke-direct {v10}, Lads_mobile_sdk/n03;-><init>()V

    .line 200
    new-instance v11, Lads_mobile_sdk/tn1;

    invoke-direct {v11}, Lads_mobile_sdk/tn1;-><init>()V

    .line 201
    new-instance v12, Lads_mobile_sdk/m33;

    invoke-direct {v12}, Lads_mobile_sdk/m33;-><init>()V

    .line 202
    new-instance v13, Lads_mobile_sdk/zb;

    invoke-direct {v13}, Lads_mobile_sdk/zb;-><init>()V

    .line 203
    invoke-direct {v9, v10, v11, v12, v13}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 204
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v10

    .line 205
    iget-object v10, v10, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v10, :cond_a

    .line 206
    invoke-static {v1, v6, v8, v9}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v1

    .line 207
    :try_start_2
    iput-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iput v4, p0, Lads_mobile_sdk/ko2;->c:I

    invoke-static {p1, v7, p0}, Lads_mobile_sdk/mo2;->a(Lads_mobile_sdk/mo2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 208
    :goto_0
    :try_start_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 336
    instance-of v3, p1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_4

    .line 337
    check-cast p1, Lads_mobile_sdk/i01;

    .line 338
    invoke-static {p1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    :cond_4
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v0, v1

    .line 347
    :goto_1
    :try_start_4
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 351
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_9

    .line 353
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_5

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_5

    .line 359
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 365
    :cond_5
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_8

    .line 366
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_7

    .line 367
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_6

    throw p1

    .line 368
    :cond_6
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 369
    :cond_7
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 370
    :cond_8
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 371
    :cond_9
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 372
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    .line 406
    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v6, v1, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v1

    .line 407
    :try_start_6
    iput-object v1, p0, Lads_mobile_sdk/ko2;->a:Lads_mobile_sdk/rr3;

    iput-object v1, p0, Lads_mobile_sdk/ko2;->b:Lads_mobile_sdk/rr3;

    iput v3, p0, Lads_mobile_sdk/ko2;->c:I

    invoke-static {p1, v7, p0}, Lads_mobile_sdk/mo2;->a(Lads_mobile_sdk/mo2;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne p1, v0, :cond_b

    :goto_2
    return-object v0

    :cond_b
    move-object v0, v1

    .line 408
    :goto_3
    :try_start_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 573
    instance-of v3, p1, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_c

    .line 574
    check-cast p1, Lads_mobile_sdk/i01;

    .line 575
    invoke-static {p1, v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 576
    :cond_c
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 577
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_5
    move-exception p1

    move-object v0, v1

    .line 746
    :goto_5
    :try_start_8
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 750
    instance-of v2, p1, Lads_mobile_sdk/v24;

    if-nez v2, :cond_11

    .line 752
    instance-of v2, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_d

    instance-of v2, p1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_d

    .line 758
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 764
    :cond_d
    instance-of v1, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_10

    .line 765
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_f

    .line 766
    instance-of v1, p1, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_e

    throw p1

    .line 767
    :cond_e
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 768
    :cond_f
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 769
    :cond_10
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 770
    :cond_11
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p1

    .line 771
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
