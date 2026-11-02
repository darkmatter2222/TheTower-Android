.class public final Lads_mobile_sdk/ju;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Lads_mobile_sdk/ou;

.field public b:Lads_mobile_sdk/rr3;

.field public c:Ljava/io/Closeable;

.field public d:Ljava/lang/Object;

.field public e:Lkotlinx/coroutines/sync/Mutex;

.field public f:I

.field public final synthetic g:Lads_mobile_sdk/ou;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/ju;

    iget-object v1, p0, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ju;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/ju;

    iget-object v1, p0, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    invoke-direct {v0, v1, p1}, Lads_mobile_sdk/ju;-><init>(Lads_mobile_sdk/ou;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ju;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 193
    iget v0, v1, Lads_mobile_sdk/ju;->f:I

    const-string v3, "exception"

    const/4 v5, 0x6

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v0

    goto/16 :goto_12

    .line 194
    :pswitch_1
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/v01;

    iget-object v8, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v0

    goto/16 :goto_c

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_f

    .line 195
    :pswitch_2
    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v0, p1

    goto/16 :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_15

    :catch_1
    move-exception v0

    goto/16 :goto_10

    .line 196
    :pswitch_3
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Exception;

    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v4, v0

    goto/16 :goto_7

    .line 197
    :pswitch_4
    iget-object v0, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v7, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    check-cast v7, Lads_mobile_sdk/v01;

    iget-object v8, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v9, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v10, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v11, v10

    move-object v10, v9

    move-object v9, v0

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto/16 :goto_4

    .line 198
    :pswitch_5
    iget-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iget-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iget-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v0, p1

    :goto_0
    move-object v10, v9

    goto :goto_1

    :catchall_3
    move-exception v0

    goto/16 :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_6

    .line 199
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 200
    iget-object v9, v1, Lads_mobile_sdk/ju;->g:Lads_mobile_sdk/ou;

    .line 201
    iget-object v0, v9, Lads_mobile_sdk/ou;->e:Lads_mobile_sdk/g83;

    .line 202
    sget-object v7, Lads_mobile_sdk/s11;->Q0:Lads_mobile_sdk/s11;

    .line 316
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 317
    new-instance v10, Lads_mobile_sdk/ks3;

    .line 318
    new-instance v11, Lads_mobile_sdk/n03;

    invoke-direct {v11}, Lads_mobile_sdk/n03;-><init>()V

    .line 319
    new-instance v12, Lads_mobile_sdk/tn1;

    invoke-direct {v12}, Lads_mobile_sdk/tn1;-><init>()V

    .line 320
    new-instance v13, Lads_mobile_sdk/m33;

    invoke-direct {v13}, Lads_mobile_sdk/m33;-><init>()V

    .line 321
    new-instance v14, Lads_mobile_sdk/zb;

    invoke-direct {v14}, Lads_mobile_sdk/zb;-><init>()V

    .line 322
    invoke-direct {v10, v11, v12, v13, v14}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 323
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v11

    .line 324
    iget-object v11, v11, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v12, 0x1

    if-nez v11, :cond_b

    .line 325
    invoke-static {v0, v7, v8, v10}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v7

    .line 326
    :try_start_6
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    new-instance v8, Lads_mobile_sdk/gh3;

    invoke-interface {v9}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v10

    invoke-direct {v8, v10, v6, v5}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v8, v0, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 328
    :try_start_7
    iput-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v7, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput v12, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v9, v1}, Lads_mobile_sdk/rh3;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-ne v0, v2, :cond_0

    goto/16 :goto_11

    :cond_0
    move-object v8, v7

    goto :goto_0

    .line 329
    :goto_1
    :try_start_8
    check-cast v0, Lads_mobile_sdk/v01;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 330
    :try_start_9
    iget-object v9, v10, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 331
    iput-object v10, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    iput-object v9, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const/4 v11, 0x2

    :try_start_c
    iput v11, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v9, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-ne v11, v2, :cond_1

    goto/16 :goto_11

    :cond_1
    move-object v11, v10

    move-object v10, v8

    move-object v8, v7

    move-object v7, v0

    .line 332
    :goto_2
    :try_start_d
    nop

    instance-of v0, v7, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_2

    .line 333
    new-instance v0, Lads_mobile_sdk/hu;

    .line 334
    move-object v12, v7

    check-cast v12, Lads_mobile_sdk/q01;

    .line 335
    iget-object v12, v12, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 336
    check-cast v12, Lads_mobile_sdk/oe3;

    .line 337
    iget-object v13, v11, Lads_mobile_sdk/ou;->c:Lads_mobile_sdk/tx;

    .line 338
    sget-object v14, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 340
    sget-object v5, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v14, v15, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v14

    invoke-virtual {v11}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v5

    .line 341
    iget-wide v4, v5, Lads_mobile_sdk/qu;->a:J

    .line 342
    invoke-static {v14, v15, v4, v5}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v4

    .line 343
    invoke-direct {v0, v12, v13, v4, v5}, Lads_mobile_sdk/hu;-><init>(Lads_mobile_sdk/oe3;Lads_mobile_sdk/tx;J)V

    goto :goto_3

    :cond_2
    move-object v0, v6

    .line 344
    :goto_3
    iput-object v0, v11, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    .line 345
    iput-object v6, v11, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 346
    invoke-virtual {v11}, Lads_mobile_sdk/ou;->l()V

    .line 347
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 460
    :try_start_e
    invoke-interface {v9, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_8

    :catchall_4
    move-exception v0

    .line 461
    invoke-interface {v9, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :catchall_5
    move-exception v0

    move-object v7, v8

    move-object v8, v10

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v9, v10

    move-object v10, v11

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v9, v8

    move-object v8, v7

    :goto_4
    move-object v7, v8

    move-object v8, v9

    :goto_5
    move-object v9, v10

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v8, v7

    .line 462
    :goto_6
    :try_start_f
    iget-object v4, v9, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 463
    iput-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x3

    iput v5, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v4, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-ne v5, v2, :cond_3

    goto/16 :goto_11

    :cond_3
    move-object v2, v0

    .line 464
    :goto_7
    :try_start_10
    iput-object v6, v9, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 465
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 586
    :try_start_11
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 587
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lads_mobile_sdk/uj2;->m:Z

    if-eqz v2, :cond_4

    .line 592
    invoke-virtual {v0, v2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 593
    :cond_4
    new-instance v0, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v6, v6, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    move-object v10, v8

    move-object v8, v7

    move-object v7, v0

    .line 714
    :goto_8
    :try_start_12
    nop

    instance-of v0, v7, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_5

    .line 715
    move-object v0, v7

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 716
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 717
    :cond_5
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :catchall_6
    move-exception v0

    .line 741
    :try_start_13
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :goto_9
    move-object v2, v7

    move-object v7, v8

    goto :goto_a

    :catchall_7
    move-exception v0

    move-object v2, v7

    .line 748
    :goto_a
    :try_start_14
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 752
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_a

    .line 754
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_6

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_6

    .line 760
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 766
    :cond_6
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_9

    .line 767
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_8

    .line 768
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_7

    throw v0

    .line 769
    :cond_7
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 770
    :cond_8
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 771
    :cond_9
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 772
    :cond_a
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    move-object v3, v0

    .line 773
    :try_start_15
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 830
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v7, v0, v12}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 831
    :try_start_16
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v0

    new-instance v5, Lads_mobile_sdk/gh3;

    invoke-interface {v9}, Lads_mobile_sdk/rh3;->f()Lads_mobile_sdk/y11;

    move-result-object v7

    const/4 v8, 0x6

    invoke-direct {v5, v7, v6, v8}, Lads_mobile_sdk/gh3;-><init>(Lads_mobile_sdk/y11;Lads_mobile_sdk/q11;I)V

    iput-object v5, v0, Lads_mobile_sdk/uj2;->t:Lads_mobile_sdk/gh3;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    .line 833
    :try_start_17
    iput-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v4, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v4, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    const/4 v0, 0x4

    iput v0, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v9, v1}, Lads_mobile_sdk/rh3;->s(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    if-ne v0, v2, :cond_c

    goto/16 :goto_11

    :cond_c
    move-object v7, v4

    move-object v8, v7

    .line 834
    :goto_b
    :try_start_18
    check-cast v0, Lads_mobile_sdk/v01;

    .line 835
    iget-object v4, v9, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 836
    iput-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x5

    iput v5, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v4, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-ne v5, v2, :cond_d

    goto/16 :goto_11

    :cond_d
    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v0

    .line 837
    :goto_c
    :try_start_19
    nop

    instance-of v0, v7, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_e

    .line 838
    new-instance v0, Lads_mobile_sdk/hu;

    .line 839
    move-object v5, v7

    check-cast v5, Lads_mobile_sdk/q01;

    .line 840
    iget-object v5, v5, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 841
    check-cast v5, Lads_mobile_sdk/oe3;

    .line 842
    iget-object v11, v10, Lads_mobile_sdk/ou;->c:Lads_mobile_sdk/tx;

    .line 843
    sget-object v12, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 845
    sget-object v14, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v12, v13, v14}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide v12

    invoke-virtual {v10}, Lads_mobile_sdk/ou;->i()Lads_mobile_sdk/qu;

    move-result-object v14

    .line 846
    iget-wide v14, v14, Lads_mobile_sdk/qu;->a:J

    .line 847
    invoke-static {v12, v13, v14, v15}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    move-result-wide v12

    .line 848
    invoke-direct {v0, v5, v11, v12, v13}, Lads_mobile_sdk/hu;-><init>(Lads_mobile_sdk/oe3;Lads_mobile_sdk/tx;J)V

    goto :goto_d

    :cond_e
    move-object v0, v6

    .line 849
    :goto_d
    iput-object v0, v10, Lads_mobile_sdk/ou;->i:Lads_mobile_sdk/hu;

    .line 850
    iput-object v6, v10, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 851
    invoke-virtual {v10}, Lads_mobile_sdk/ou;->l()V

    .line 852
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 965
    :try_start_1a
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_13

    :catchall_a
    move-exception v0

    .line 966
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :goto_e
    move-object v7, v8

    move-object v4, v9

    goto/16 :goto_16

    :goto_f
    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_10

    :catch_8
    move-exception v0

    move-object v7, v4

    move-object v8, v7

    .line 967
    :goto_10
    :try_start_1b
    iget-object v4, v9, Lads_mobile_sdk/ou;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 968
    iput-object v9, v1, Lads_mobile_sdk/ju;->a:Lads_mobile_sdk/ou;

    iput-object v8, v1, Lads_mobile_sdk/ju;->b:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ju;->c:Ljava/io/Closeable;

    iput-object v0, v1, Lads_mobile_sdk/ju;->d:Ljava/lang/Object;

    iput-object v4, v1, Lads_mobile_sdk/ju;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v5, 0x6

    iput v5, v1, Lads_mobile_sdk/ju;->f:I

    invoke-interface {v4, v6, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    if-ne v5, v2, :cond_f

    :goto_11
    return-object v2

    :cond_f
    move-object v2, v0

    .line 969
    :goto_12
    :try_start_1c
    iput-object v6, v9, Lads_mobile_sdk/ou;->j:Lads_mobile_sdk/iu;

    .line 970
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    .line 1091
    :try_start_1d
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1092
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1093
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lads_mobile_sdk/uj2;->m:Z

    if-eqz v2, :cond_10

    .line 1097
    invoke-virtual {v0, v2}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1098
    :cond_10
    new-instance v0, Lads_mobile_sdk/j01;

    const/4 v3, 0x6

    invoke-direct {v0, v2, v6, v6, v3}, Lads_mobile_sdk/j01;-><init>(Ljava/lang/Throwable;Lads_mobile_sdk/kk1;Ljava/lang/String;I)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    move-object v9, v8

    move-object v8, v7

    move-object v7, v0

    .line 1256
    :goto_13
    :try_start_1e
    nop

    instance-of v0, v7, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_11

    .line 1257
    move-object v0, v7

    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v4, 0x0

    .line 1258
    invoke-static {v0, v4}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 1259
    :cond_11
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    :goto_14
    return-object v7

    :catchall_b
    move-exception v0

    move-object v7, v8

    move-object v8, v9

    goto :goto_15

    :catchall_c
    move-exception v0

    .line 1260
    :try_start_1f
    invoke-interface {v4, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :goto_15
    move-object v4, v8

    goto :goto_16

    :catchall_d
    move-exception v0

    move-object v7, v4

    .line 1304
    :goto_16
    :try_start_20
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1308
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_16

    .line 1310
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_12

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_12

    .line 1316
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1322
    :cond_12
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_15

    .line 1323
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_14

    .line 1324
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_13

    throw v0

    .line 1325
    :cond_13
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1326
    :cond_14
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 1327
    :cond_15
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 1328
    :cond_16
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    :catchall_e
    move-exception v0

    move-object v2, v0

    .line 1329
    :try_start_21
    throw v2
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    :catchall_f
    move-exception v0

    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
