.class public final Lads_mobile_sdk/qo2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lads_mobile_sdk/ro2;

.field public b:Ljava/lang/String;

.field public c:Lads_mobile_sdk/rr3;

.field public d:Lads_mobile_sdk/rr3;

.field public e:Lkotlinx/coroutines/sync/Mutex;

.field public f:I

.field public final synthetic g:Lads_mobile_sdk/ro2;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ro2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/qo2;->g:Lads_mobile_sdk/ro2;

    iput-object p2, p0, Lads_mobile_sdk/qo2;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/qo2;

    iget-object v0, p0, Lads_mobile_sdk/qo2;->g:Lads_mobile_sdk/ro2;

    iget-object v1, p0, Lads_mobile_sdk/qo2;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/qo2;-><init>(Lads_mobile_sdk/ro2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/qo2;

    iget-object v0, p0, Lads_mobile_sdk/qo2;->g:Lads_mobile_sdk/ro2;

    iget-object v1, p0, Lads_mobile_sdk/qo2;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/qo2;-><init>(Lads_mobile_sdk/ro2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/qo2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 51
    iget v2, v1, Lads_mobile_sdk/qo2;->f:I

    const/4 v3, 0x0

    const-string v4, "create(...)"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v0, v1, Lads_mobile_sdk/qo2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v1, Lads_mobile_sdk/qo2;->d:Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/qo2;->c:Lads_mobile_sdk/rr3;

    iget-object v8, v1, Lads_mobile_sdk/qo2;->b:Ljava/lang/String;

    iget-object v9, v1, Lads_mobile_sdk/qo2;->a:Lads_mobile_sdk/ro2;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v8

    move-object v8, v5

    move-object v5, v0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v1, Lads_mobile_sdk/qo2;->e:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v1, Lads_mobile_sdk/qo2;->d:Lads_mobile_sdk/rr3;

    iget-object v5, v1, Lads_mobile_sdk/qo2;->c:Lads_mobile_sdk/rr3;

    iget-object v8, v1, Lads_mobile_sdk/qo2;->b:Ljava/lang/String;

    iget-object v9, v1, Lads_mobile_sdk/qo2;->a:Lads_mobile_sdk/ro2;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v10, v8

    move-object v8, v5

    move-object v5, v0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto/16 :goto_1

    .line 53
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 54
    iget-object v9, v1, Lads_mobile_sdk/qo2;->g:Lads_mobile_sdk/ro2;

    .line 55
    iget-object v2, v9, Lads_mobile_sdk/ro2;->e:Lads_mobile_sdk/g83;

    .line 56
    sget-object v8, Lads_mobile_sdk/s11;->A1:Lads_mobile_sdk/s11;

    iget-object v10, v1, Lads_mobile_sdk/qo2;->h:Ljava/lang/String;

    .line 102
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 103
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 104
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 105
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 106
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 107
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 108
    invoke-direct {v12, v13, v14, v15, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 109
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 110
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v5, :cond_e

    .line 111
    invoke-static {v2, v8, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 112
    :try_start_2
    iget-object v5, v9, Lads_mobile_sdk/ro2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 113
    iput-object v9, v1, Lads_mobile_sdk/qo2;->a:Lads_mobile_sdk/ro2;

    iput-object v10, v1, Lads_mobile_sdk/qo2;->b:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/qo2;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/qo2;->d:Lads_mobile_sdk/rr3;

    iput-object v5, v1, Lads_mobile_sdk/qo2;->e:Lkotlinx/coroutines/sync/Mutex;

    iput v6, v1, Lads_mobile_sdk/qo2;->f:I

    invoke-interface {v5, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne v8, v0, :cond_3

    goto/16 :goto_3

    :cond_3
    move-object v8, v2

    .line 114
    :goto_0
    :try_start_3
    iget-object v0, v9, Lads_mobile_sdk/ro2;->h:Lads_mobile_sdk/cu2;

    if-nez v0, :cond_5

    .line 115
    iget-object v0, v9, Lads_mobile_sdk/ro2;->d:Lads_mobile_sdk/eu2;

    .line 116
    iget-object v0, v0, Lads_mobile_sdk/eu2;->a:Landroid/content/Context;

    .line 117
    new-instance v11, Lads_mobile_sdk/du2;

    new-instance v12, Lads_mobile_sdk/iu2;

    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_4

    move-object v0, v13

    .line 119
    :cond_4
    invoke-direct {v12, v0}, Lads_mobile_sdk/iu2;-><init>(Landroid/content/Context;)V

    invoke-direct {v11, v12}, Lads_mobile_sdk/du2;-><init>(Lads_mobile_sdk/iu2;)V

    .line 120
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iput-object v11, v9, Lads_mobile_sdk/ro2;->h:Lads_mobile_sdk/cu2;

    move-object v0, v11

    .line 122
    :cond_5
    iget-object v4, v9, Lads_mobile_sdk/ro2;->b:Lads_mobile_sdk/tx;

    .line 123
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 125
    iput-wide v11, v9, Lads_mobile_sdk/ro2;->g:J

    .line 126
    new-instance v4, Lads_mobile_sdk/lq2;

    invoke-direct {v4}, Lads_mobile_sdk/lq2;-><init>()V

    .line 127
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    .line 128
    iget-object v11, v4, Lads_mobile_sdk/lq2;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_6
    new-instance v10, Lads_mobile_sdk/mq2;

    invoke-direct {v10, v4}, Lads_mobile_sdk/mq2;-><init>(Lads_mobile_sdk/lq2;)V

    .line 130
    check-cast v0, Lads_mobile_sdk/du2;

    invoke-virtual {v0, v10}, Lads_mobile_sdk/du2;->a(Lads_mobile_sdk/mq2;)V

    .line 131
    iget-object v0, v9, Lads_mobile_sdk/ro2;->i:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_7

    .line 132
    invoke-static {v0, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 133
    :cond_7
    iget-object v10, v9, Lads_mobile_sdk/ro2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 134
    new-instance v13, Lads_mobile_sdk/po2;

    invoke-direct {v13, v9, v7}, Lads_mobile_sdk/po2;-><init>(Lads_mobile_sdk/ro2;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 135
    iput-object v0, v9, Lads_mobile_sdk/ro2;->i:Lkotlinx/coroutines/Job;

    .line 136
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 181
    :try_start_4
    invoke-interface {v5, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 183
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_8

    .line 184
    check-cast v0, Lads_mobile_sdk/i01;

    .line 185
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 186
    :cond_8
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    .line 198
    :try_start_5
    invoke-interface {v5, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v5, v8

    :goto_1
    move-object v3, v2

    move-object v2, v5

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v3, v2

    .line 205
    :goto_2
    :try_start_6
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 209
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_d

    .line 211
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_9

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_9

    .line 217
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 223
    :cond_9
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c

    .line 224
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b

    .line 225
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_a

    throw v0

    .line 226
    :cond_a
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 227
    :cond_b
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 228
    :cond_c
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 229
    :cond_d
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 230
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 275
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v8, v2, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v2

    .line 276
    :try_start_8
    iget-object v5, v9, Lads_mobile_sdk/ro2;->f:Lkotlinx/coroutines/sync/Mutex;

    .line 277
    iput-object v9, v1, Lads_mobile_sdk/qo2;->a:Lads_mobile_sdk/ro2;

    iput-object v10, v1, Lads_mobile_sdk/qo2;->b:Ljava/lang/String;

    iput-object v2, v1, Lads_mobile_sdk/qo2;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/qo2;->d:Lads_mobile_sdk/rr3;

    iput-object v5, v1, Lads_mobile_sdk/qo2;->e:Lkotlinx/coroutines/sync/Mutex;

    const/4 v8, 0x2

    iput v8, v1, Lads_mobile_sdk/qo2;->f:I

    invoke-interface {v5, v7, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    if-ne v8, v0, :cond_f

    :goto_3
    return-object v0

    :cond_f
    move-object v8, v2

    .line 278
    :goto_4
    :try_start_9
    iget-object v0, v9, Lads_mobile_sdk/ro2;->h:Lads_mobile_sdk/cu2;

    if-nez v0, :cond_11

    .line 279
    iget-object v0, v9, Lads_mobile_sdk/ro2;->d:Lads_mobile_sdk/eu2;

    .line 280
    iget-object v0, v0, Lads_mobile_sdk/eu2;->a:Landroid/content/Context;

    .line 281
    new-instance v11, Lads_mobile_sdk/du2;

    new-instance v12, Lads_mobile_sdk/iu2;

    .line 282
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    if-eqz v13, :cond_10

    move-object v0, v13

    .line 283
    :cond_10
    invoke-direct {v12, v0}, Lads_mobile_sdk/iu2;-><init>(Landroid/content/Context;)V

    invoke-direct {v11, v12}, Lads_mobile_sdk/du2;-><init>(Lads_mobile_sdk/iu2;)V

    .line 284
    invoke-static {v11, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    iput-object v11, v9, Lads_mobile_sdk/ro2;->h:Lads_mobile_sdk/cu2;

    move-object v0, v11

    .line 286
    :cond_11
    iget-object v4, v9, Lads_mobile_sdk/ro2;->b:Lads_mobile_sdk/tx;

    .line 287
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 289
    iput-wide v11, v9, Lads_mobile_sdk/ro2;->g:J

    .line 290
    new-instance v4, Lads_mobile_sdk/lq2;

    invoke-direct {v4}, Lads_mobile_sdk/lq2;-><init>()V

    .line 291
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_12

    .line 292
    iget-object v11, v4, Lads_mobile_sdk/lq2;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :cond_12
    new-instance v10, Lads_mobile_sdk/mq2;

    invoke-direct {v10, v4}, Lads_mobile_sdk/mq2;-><init>(Lads_mobile_sdk/lq2;)V

    .line 294
    check-cast v0, Lads_mobile_sdk/du2;

    invoke-virtual {v0, v10}, Lads_mobile_sdk/du2;->a(Lads_mobile_sdk/mq2;)V

    .line 295
    iget-object v0, v9, Lads_mobile_sdk/ro2;->i:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_13

    .line 296
    invoke-static {v0, v7, v6, v7}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 297
    :cond_13
    iget-object v10, v9, Lads_mobile_sdk/ro2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 298
    new-instance v13, Lads_mobile_sdk/po2;

    invoke-direct {v13, v9, v7}, Lads_mobile_sdk/po2;-><init>(Lads_mobile_sdk/ro2;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    .line 299
    iput-object v0, v9, Lads_mobile_sdk/ro2;->i:Lkotlinx/coroutines/Job;

    .line 300
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 345
    :try_start_a
    invoke-interface {v5, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 384
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_14

    .line 385
    check-cast v0, Lads_mobile_sdk/i01;

    .line 386
    invoke-static {v0, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    .line 387
    :cond_14
    invoke-static {v2, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 388
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_7
    move-exception v0

    .line 431
    :try_start_b
    invoke-interface {v5, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :catchall_8
    move-exception v0

    move-object v5, v8

    :goto_6
    move-object v3, v2

    move-object v2, v5

    goto :goto_7

    :catchall_9
    move-exception v0

    move-object v3, v2

    .line 475
    :goto_7
    :try_start_c
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 479
    instance-of v4, v0, Lads_mobile_sdk/v24;

    if-nez v4, :cond_19

    .line 481
    instance-of v4, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v4, :cond_15

    instance-of v4, v0, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_15

    .line 487
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 493
    :cond_15
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_18

    .line 494
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17

    .line 495
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_16

    throw v0

    .line 496
    :cond_16
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 497
    :cond_17
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 498
    :cond_18
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 499
    :cond_19
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    .line 500
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {v3, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
