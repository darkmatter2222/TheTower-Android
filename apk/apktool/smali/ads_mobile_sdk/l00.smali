.class public final Lads_mobile_sdk/l00;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Closeable;

.field public c:Ljava/io/Closeable;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/o00;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lads_mobile_sdk/l00;

    iget-object v0, p0, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/l00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/l00;

    iget-object v0, p0, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/l00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/l00;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget v2, v1, Lads_mobile_sdk/l00;->d:I

    const-string v4, "Failed to fetch CLD during initialization."

    const-string v5, "getAppSettingsJson(...)"

    const-string v7, "block"

    const-string v8, "context"

    const-string v9, "<this>"

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iget-object v0, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v3, p1

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 103
    :pswitch_1
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v11, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/o00;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v3, p1

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    goto/16 :goto_f

    .line 104
    :pswitch_2
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v11, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/o00;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_8

    .line 105
    :pswitch_3
    iget-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iget-object v0, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/rr3;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v3, p1

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    .line 106
    :pswitch_4
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v11, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/o00;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v3, p1

    goto/16 :goto_2

    :catchall_3
    move-exception v0

    goto/16 :goto_6

    .line 107
    :pswitch_5
    iget-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iget-object v11, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    check-cast v11, Lads_mobile_sdk/rr3;

    iget-object v12, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    check-cast v12, Lads_mobile_sdk/o00;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    .line 108
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 109
    iget-object v2, v1, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    .line 110
    iget-object v2, v2, Lads_mobile_sdk/o00;->n:Lads_mobile_sdk/g83;

    .line 111
    sget-object v11, Lads_mobile_sdk/s11;->g:Lads_mobile_sdk/s11;

    .line 112
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    .line 113
    new-instance v13, Lads_mobile_sdk/ks3;

    .line 114
    new-instance v14, Lads_mobile_sdk/n03;

    invoke-direct {v14}, Lads_mobile_sdk/n03;-><init>()V

    .line 115
    new-instance v15, Lads_mobile_sdk/tn1;

    invoke-direct {v15}, Lads_mobile_sdk/tn1;-><init>()V

    .line 116
    new-instance v3, Lads_mobile_sdk/m33;

    invoke-direct {v3}, Lads_mobile_sdk/m33;-><init>()V

    .line 117
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 118
    invoke-direct {v13, v14, v15, v3, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 119
    iget-object v3, v1, Lads_mobile_sdk/l00;->e:Lads_mobile_sdk/o00;

    .line 120
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 121
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v14, 0x1

    if-nez v6, :cond_c

    .line 122
    invoke-static {v2, v11, v12, v13}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 123
    :try_start_6
    iget-object v6, v3, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 124
    iput-object v3, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    iput v14, v1, Lads_mobile_sdk/l00;->d:I

    .line 125
    iget-object v11, v6, Lads_mobile_sdk/pn;->a:Lkotlin/coroutines/CoroutineContext;

    .line 126
    new-instance v12, Lads_mobile_sdk/hn;

    invoke-direct {v12, v6, v10}, Lads_mobile_sdk/hn;-><init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v12, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    if-ne v6, v11, :cond_0

    goto :goto_0

    :cond_0
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_0
    if-ne v6, v0, :cond_1

    goto/16 :goto_a

    :cond_1
    move-object v11, v2

    move-object v12, v3

    .line 127
    :goto_1
    :try_start_7
    iget-object v3, v12, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 128
    iput-object v12, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v11, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v6, 0x2

    iput v6, v1, Lads_mobile_sdk/l00;->d:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {v3, v1}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    goto/16 :goto_a

    .line 130
    :cond_2
    :goto_2
    check-cast v3, Lads_mobile_sdk/jm;

    invoke-virtual {v3}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 131
    iget-object v0, v12, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 132
    new-instance v3, Lads_mobile_sdk/i00;

    invoke-direct {v3, v12, v10}, Lads_mobile_sdk/i00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 133
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 134
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v3, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object/from16 v0, v18

    .line 393
    iget-object v3, v12, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 394
    new-instance v4, Lads_mobile_sdk/j00;

    invoke-direct {v4, v12, v10}, Lads_mobile_sdk/j00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 395
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v4, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v0

    move-object/from16 v16, v3

    move-object/from16 v19, v5

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object v5, v11

    goto :goto_4

    .line 654
    :cond_3
    iget-object v3, v12, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 655
    new-instance v5, Lads_mobile_sdk/k00;

    invoke-direct {v5, v12, v10}, Lads_mobile_sdk/k00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 656
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 657
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    new-instance v7, Lads_mobile_sdk/vs3;

    invoke-direct {v7, v5, v10}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    .line 906
    iput-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v10, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v5, 0x3

    iput v5, v1, Lads_mobile_sdk/l00;->d:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v3, v0, :cond_4

    goto/16 :goto_a

    :cond_4
    move-object v5, v11

    .line 907
    :goto_3
    :try_start_8
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 909
    invoke-static {v4, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 912
    :cond_5
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1558
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_6

    .line 1559
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 1560
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1561
    :cond_6
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :goto_5
    move-object v11, v5

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v11, v2

    .line 1569
    :goto_6
    :try_start_9
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1573
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_b

    .line 1575
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_7

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_7

    .line 1581
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1587
    :cond_7
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_a

    .line 1588
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_9

    .line 1589
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_8

    throw v0

    .line 1590
    :cond_8
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1591
    :cond_9
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1592
    :cond_a
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1593
    :cond_b
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 1594
    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1628
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v11, v2, v14}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 1629
    :try_start_b
    iget-object v6, v3, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 1630
    iput-object v3, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v11, 0x4

    iput v11, v1, Lads_mobile_sdk/l00;->d:I

    .line 1631
    iget-object v11, v6, Lads_mobile_sdk/pn;->a:Lkotlin/coroutines/CoroutineContext;

    .line 1632
    new-instance v12, Lads_mobile_sdk/hn;

    invoke-direct {v12, v6, v10}, Lads_mobile_sdk/hn;-><init>(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)V

    invoke-static {v11, v12, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v11

    if-ne v6, v11, :cond_d

    goto :goto_7

    :cond_d
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :goto_7
    if-ne v6, v0, :cond_e

    goto/16 :goto_a

    :cond_e
    move-object v11, v2

    move-object v12, v3

    .line 1633
    :goto_8
    :try_start_c
    iget-object v3, v12, Lads_mobile_sdk/o00;->i:Lads_mobile_sdk/pn;

    .line 1634
    iput-object v12, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v11, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v2, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v6, 0x5

    iput v6, v1, Lads_mobile_sdk/l00;->d:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1635
    invoke-static {v3, v1}, Lads_mobile_sdk/pn;->a(Lads_mobile_sdk/pn;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_f

    goto/16 :goto_a

    .line 1636
    :cond_f
    :goto_9
    check-cast v3, Lads_mobile_sdk/jm;

    invoke-virtual {v3}, Lads_mobile_sdk/jm;->B()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_10

    .line 1637
    iget-object v0, v12, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 1638
    new-instance v3, Lads_mobile_sdk/i00;

    invoke-direct {v3, v12, v10}, Lads_mobile_sdk/i00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 1639
    sget-object v4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1640
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1898
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v3, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move-object/from16 v20, v5

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object/from16 v0, v18

    .line 1899
    iget-object v3, v12, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 1900
    new-instance v4, Lads_mobile_sdk/j00;

    invoke-direct {v4, v12, v10}, Lads_mobile_sdk/j00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 1901
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2159
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v4, v10}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v0

    move-object/from16 v16, v3

    move-object/from16 v19, v5

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-object v5, v11

    goto :goto_c

    .line 2160
    :cond_10
    iget-object v3, v12, Lads_mobile_sdk/o00;->d:Lkotlinx/coroutines/CoroutineScope;

    .line 2161
    new-instance v5, Lads_mobile_sdk/k00;

    invoke-direct {v5, v12, v10}, Lads_mobile_sdk/k00;-><init>(Lads_mobile_sdk/o00;Lkotlin/coroutines/Continuation;)V

    .line 2162
    sget-object v6, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 2163
    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2411
    new-instance v7, Lads_mobile_sdk/vs3;

    invoke-direct {v7, v5, v10}, Lads_mobile_sdk/vs3;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->async$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Deferred;

    move-result-object v3

    .line 2412
    iput-object v11, v1, Lads_mobile_sdk/l00;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/l00;->b:Ljava/io/Closeable;

    iput-object v10, v1, Lads_mobile_sdk/l00;->c:Ljava/io/Closeable;

    const/4 v5, 0x6

    iput v5, v1, Lads_mobile_sdk/l00;->d:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/Deferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-ne v3, v0, :cond_11

    :goto_a
    return-object v0

    :cond_11
    move-object v5, v11

    .line 2413
    :goto_b
    :try_start_d
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x6

    .line 2415
    invoke-static {v4, v10, v0}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2418
    :cond_12
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3101
    instance-of v3, v0, Lads_mobile_sdk/i01;

    if-eqz v3, :cond_13

    .line 3102
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v3, 0x0

    .line 3103
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 3104
    :cond_13
    invoke-static {v2, v10}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 3105
    :goto_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_e
    move-object v11, v5

    goto :goto_f

    :catchall_7
    move-exception v0

    move-object v11, v2

    .line 3792
    :goto_f
    :try_start_e
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3796
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_18

    .line 3798
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_14

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_14

    .line 3804
    invoke-virtual {v11, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3810
    :cond_14
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_17

    .line 3811
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_16

    .line 3812
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_15

    throw v0

    .line 3813
    :cond_15
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 3814
    :cond_16
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 3815
    :cond_17
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 3816
    :cond_18
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    move-exception v0

    move-object v3, v0

    .line 3817
    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    nop

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
