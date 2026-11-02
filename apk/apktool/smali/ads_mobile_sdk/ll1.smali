.class public final Lads_mobile_sdk/ll1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/rr3;

.field public b:Lads_mobile_sdk/rr3;

.field public c:I

.field public final synthetic d:Lads_mobile_sdk/cm1;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/cm1;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ll1;->d:Lads_mobile_sdk/cm1;

    iput-boolean p2, p0, Lads_mobile_sdk/ll1;->e:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/ll1;

    iget-object v0, p0, Lads_mobile_sdk/ll1;->d:Lads_mobile_sdk/cm1;

    iget-boolean v1, p0, Lads_mobile_sdk/ll1;->e:Z

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ll1;-><init>(Lads_mobile_sdk/cm1;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ll1;

    iget-object v0, p0, Lads_mobile_sdk/ll1;->d:Lads_mobile_sdk/cm1;

    iget-boolean v1, p0, Lads_mobile_sdk/ll1;->e:Z

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ll1;-><init>(Lads_mobile_sdk/cm1;ZLkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ll1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 238
    iget v2, v1, Lads_mobile_sdk/ll1;->c:I

    const/4 v3, 0x0

    const-string v4, "Early initialization failed"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v2, v1, Lads_mobile_sdk/ll1;->b:Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/ll1;->a:Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, v1, Lads_mobile_sdk/ll1;->b:Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/ll1;->a:Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 240
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 241
    iget-object v2, v1, Lads_mobile_sdk/ll1;->d:Lads_mobile_sdk/cm1;

    .line 242
    iget-object v8, v2, Lads_mobile_sdk/cm1;->g:Lads_mobile_sdk/g83;

    .line 243
    sget-object v9, Lads_mobile_sdk/s11;->y:Lads_mobile_sdk/s11;

    iget-boolean v10, v1, Lads_mobile_sdk/ll1;->e:Z

    .line 432
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 433
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 434
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 435
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 436
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 437
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 438
    invoke-direct {v12, v13, v14, v15, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 439
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 440
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v5, :cond_b

    .line 441
    invoke-static {v8, v9, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v5

    .line 442
    :try_start_2
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v8

    invoke-virtual {v8}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v8

    if-eqz v10, :cond_3

    .line 444
    sget-object v9, Lads_mobile_sdk/r11;->c:Lads_mobile_sdk/r11;

    goto :goto_0

    .line 446
    :cond_3
    sget-object v9, Lads_mobile_sdk/r11;->b:Lads_mobile_sdk/r11;

    .line 447
    :goto_0
    iput-object v9, v8, Lads_mobile_sdk/uj2;->P:Lads_mobile_sdk/r11;

    .line 453
    iput-object v5, v1, Lads_mobile_sdk/ll1;->a:Lads_mobile_sdk/rr3;

    iput-object v5, v1, Lads_mobile_sdk/ll1;->b:Lads_mobile_sdk/rr3;

    iput v6, v1, Lads_mobile_sdk/ll1;->c:I

    .line 454
    invoke-virtual {v2, v1}, Lads_mobile_sdk/cm1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v2, v0, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object v2, v5

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v5

    .line 455
    :goto_1
    :try_start_3
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-static {v4, v0}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 457
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 640
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_5

    .line 641
    check-cast v0, Lads_mobile_sdk/i01;

    .line 642
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 643
    :cond_5
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    .line 651
    :try_start_4
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 655
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_a

    .line 657
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_6

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_6

    .line 663
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 669
    :cond_6
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_9

    .line 670
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_8

    .line 671
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_7

    throw v0

    .line 672
    :cond_7
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 673
    :cond_8
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 674
    :cond_9
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 675
    :cond_a
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 676
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 710
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v9, v5, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 711
    :try_start_6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v6

    invoke-virtual {v6}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v6

    if-eqz v10, :cond_c

    .line 713
    sget-object v8, Lads_mobile_sdk/r11;->c:Lads_mobile_sdk/r11;

    goto :goto_3

    .line 715
    :cond_c
    sget-object v8, Lads_mobile_sdk/r11;->b:Lads_mobile_sdk/r11;

    .line 716
    :goto_3
    iput-object v8, v6, Lads_mobile_sdk/uj2;->P:Lads_mobile_sdk/r11;

    .line 722
    iput-object v5, v1, Lads_mobile_sdk/ll1;->a:Lads_mobile_sdk/rr3;

    iput-object v5, v1, Lads_mobile_sdk/ll1;->b:Lads_mobile_sdk/rr3;

    const/4 v6, 0x2

    iput v6, v1, Lads_mobile_sdk/ll1;->c:I

    .line 723
    invoke-virtual {v2, v1}, Lads_mobile_sdk/cm1;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne v2, v0, :cond_d

    :goto_4
    return-object v0

    :cond_d
    move-object v2, v5

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v2, v5

    .line 724
    :goto_5
    :try_start_7
    sget-object v6, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    invoke-static {v4, v0}, Lads_mobile_sdk/f01;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 726
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 946
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_e

    .line 947
    check-cast v0, Lads_mobile_sdk/i01;

    .line 948
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 949
    :cond_e
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 950
    :goto_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_7
    move-exception v0

    .line 1174
    :try_start_8
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1178
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_13

    .line 1180
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_f

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_f

    .line 1186
    invoke-virtual {v5, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1192
    :cond_f
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_12

    .line 1193
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_11

    .line 1194
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_10

    throw v0

    .line 1195
    :cond_10
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1196
    :cond_11
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1197
    :cond_12
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1198
    :cond_13
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    move-exception v0

    move-object v3, v0

    .line 1199
    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
