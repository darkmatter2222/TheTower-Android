.class public final Lads_mobile_sdk/lw2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lads_mobile_sdk/rr3;

.field public d:Ljava/io/Closeable;

.field public e:J

.field public f:I

.field public final synthetic g:Lads_mobile_sdk/ow2;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lw2;->g:Lads_mobile_sdk/ow2;

    iput-object p2, p0, Lads_mobile_sdk/lw2;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/lw2;

    iget-object v0, p0, Lads_mobile_sdk/lw2;->g:Lads_mobile_sdk/ow2;

    iget-object v1, p0, Lads_mobile_sdk/lw2;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/lw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/lw2;

    iget-object v0, p0, Lads_mobile_sdk/lw2;->g:Lads_mobile_sdk/ow2;

    iget-object v1, p0, Lads_mobile_sdk/lw2;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/lw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/lw2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 68
    iget v2, v1, Lads_mobile_sdk/lw2;->f:I

    const-string v3, "error"

    const-string v4, "signal"

    const-string v7, ", \'*\');"

    const-string v8, "sdk_ttl_ms"

    const-string v9, "paw_id"

    const-string v10, "window.postMessage("

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/16 :goto_c

    .line 69
    :pswitch_1
    iget-wide v5, v1, Lads_mobile_sdk/lw2;->e:J

    iget-object v2, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    iget-object v12, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iget-object v13, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ow2;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v17, v7

    move-object v7, v3

    move-object v3, v12

    move-wide v11, v5

    move-object/from16 v6, p1

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    .line 70
    :pswitch_2
    iget-object v2, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    iget-object v12, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iget-object v13, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ow2;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v6, p1

    move-object v5, v2

    move-object v2, v7

    goto/16 :goto_7

    .line 71
    :pswitch_3
    iget-object v0, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/io/Closeable;

    iget-object v0, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    .line 72
    :pswitch_4
    iget-wide v5, v1, Lads_mobile_sdk/lw2;->e:J

    iget-object v2, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    iget-object v12, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iget-object v13, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ow2;

    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v17, v7

    move-wide v6, v5

    move-object/from16 v5, p1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    .line 73
    :pswitch_5
    iget-object v2, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    iget-object v12, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iget-object v13, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    check-cast v14, Lads_mobile_sdk/ow2;

    :try_start_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v5, p1

    goto :goto_0

    .line 74
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 75
    iget-object v2, v1, Lads_mobile_sdk/lw2;->g:Lads_mobile_sdk/ow2;

    invoke-static {v2}, Lads_mobile_sdk/ow2;->b(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/g83;

    move-result-object v2

    .line 76
    sget-object v12, Lads_mobile_sdk/s11;->W1:Lads_mobile_sdk/s11;

    .line 77
    invoke-static {}, Lads_mobile_sdk/js3;->a()Lads_mobile_sdk/ks3;

    move-result-object v13

    .line 78
    iget-object v14, v1, Lads_mobile_sdk/lw2;->g:Lads_mobile_sdk/ow2;

    iget-object v15, v1, Lads_mobile_sdk/lw2;->h:Ljava/lang/String;

    .line 282
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 292
    invoke-static {}, Lads_mobile_sdk/hs3;->c()Lads_mobile_sdk/rr3;

    move-result-object v6

    const/4 v11, 0x1

    if-nez v6, :cond_c

    .line 293
    invoke-static {v2, v12, v5, v13}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v2

    .line 294
    :try_start_6
    invoke-static {v14}, Lads_mobile_sdk/ow2;->d(Lads_mobile_sdk/ow2;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    new-instance v6, Lads_mobile_sdk/kw2;

    const/4 v12, 0x0

    invoke-direct {v6, v14, v12}, Lads_mobile_sdk/kw2;-><init>(Lads_mobile_sdk/ow2;Lkotlin/coroutines/Continuation;)V

    iput-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    iput-object v15, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    iput v11, v1, Lads_mobile_sdk/lw2;->f:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v5, v0, :cond_0

    goto/16 :goto_b

    :cond_0
    move-object v12, v2

    move-object v13, v15

    .line 295
    :goto_0
    :try_start_7
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 300
    invoke-static {v14}, Lads_mobile_sdk/ow2;->a(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/ex0;

    move-result-object v6

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->E0()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 301
    invoke-static {v14}, Lads_mobile_sdk/ow2;->a(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/ex0;

    move-result-object v6

    invoke-virtual {v6}, Lads_mobile_sdk/ex0;->F0()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v15

    move-object/from16 v17, v7

    move-wide v6, v15

    goto :goto_1

    :cond_1
    move-object/from16 v17, v7

    const-wide/16 v6, 0x0

    .line 307
    :goto_1
    invoke-static {v14}, Lads_mobile_sdk/ow2;->c(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/xe3;

    move-result-object v11

    iput-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    iput-object v13, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    iput-object v12, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iput-object v2, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    iput-wide v6, v1, Lads_mobile_sdk/lw2;->e:J

    const/4 v15, 0x2

    iput v15, v1, Lads_mobile_sdk/lw2;->f:I

    invoke-virtual {v11, v5, v1}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    goto/16 :goto_b

    .line 308
    :cond_2
    :goto_2
    check-cast v5, Lads_mobile_sdk/v01;

    .line 327
    instance-of v11, v5, Lads_mobile_sdk/q01;

    if-eqz v11, :cond_3

    .line 329
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 330
    invoke-virtual {v3, v9, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 332
    check-cast v5, Lads_mobile_sdk/q01;

    invoke-virtual {v5}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;

    invoke-virtual {v5}, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->getSignalString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object/from16 v4, v17

    .line 336
    instance-of v11, v5, Lads_mobile_sdk/i01;

    if-eqz v11, :cond_6

    .line 338
    new-instance v11, Lcom/google/gson/JsonObject;

    invoke-direct {v11}, Lcom/google/gson/JsonObject;-><init>()V

    .line 339
    invoke-virtual {v11, v9, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-static {v6, v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v11, v8, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 341
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v3, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    check-cast v5, Lads_mobile_sdk/i01;

    invoke-static {v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 344
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, v11}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    :goto_3
    invoke-static {v14}, Lads_mobile_sdk/ow2;->d(Lads_mobile_sdk/ow2;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v4

    new-instance v5, Lads_mobile_sdk/jw2;

    const/4 v6, 0x0

    invoke-direct {v5, v14, v3, v6}, Lads_mobile_sdk/jw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v12, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    iput-object v6, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iput-object v6, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    const/4 v3, 0x3

    iput v3, v1, Lads_mobile_sdk/lw2;->f:I

    invoke-static {v4, v5, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-ne v3, v0, :cond_4

    goto/16 :goto_b

    :cond_4
    move-object v3, v12

    .line 349
    :goto_4
    :try_start_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 528
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_5

    .line 529
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    const/4 v6, 0x0

    .line 530
    invoke-static {v2, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :goto_5
    move-object v12, v3

    goto :goto_6

    .line 531
    :cond_6
    :try_start_9
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_3
    move-exception v0

    move-object v12, v2

    .line 720
    :goto_6
    :try_start_a
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 724
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_b

    .line 726
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_7

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_7

    .line 732
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 738
    :cond_7
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_a

    .line 739
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_9

    .line 740
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_8

    throw v0

    .line 741
    :cond_8
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 742
    :cond_9
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 743
    :cond_a
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 744
    :cond_b
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    .line 745
    :try_start_b
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    move-object v2, v7

    .line 779
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-static {v12, v5, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v5

    .line 780
    :try_start_c
    invoke-static {v14}, Lads_mobile_sdk/ow2;->d(Lads_mobile_sdk/ow2;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v6

    new-instance v7, Lads_mobile_sdk/kw2;

    const/4 v12, 0x0

    invoke-direct {v7, v14, v12}, Lads_mobile_sdk/kw2;-><init>(Lads_mobile_sdk/ow2;Lkotlin/coroutines/Continuation;)V

    iput-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    iput-object v15, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    iput-object v5, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iput-object v5, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    const/4 v11, 0x4

    iput v11, v1, Lads_mobile_sdk/lw2;->f:I

    invoke-static {v6, v7, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-ne v6, v0, :cond_d

    goto/16 :goto_b

    :cond_d
    move-object v12, v5

    move-object v13, v15

    .line 781
    :goto_7
    :try_start_d
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 786
    invoke-static {v14}, Lads_mobile_sdk/ow2;->a(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/ex0;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->E0()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 787
    invoke-static {v14}, Lads_mobile_sdk/ow2;->a(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/ex0;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/ex0;->F0()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide v15

    move-object/from16 v17, v2

    move-object v7, v3

    move-wide v2, v15

    goto :goto_8

    :cond_e
    move-object/from16 v17, v2

    move-object v7, v3

    const-wide/16 v2, 0x0

    .line 793
    :goto_8
    invoke-static {v14}, Lads_mobile_sdk/ow2;->c(Lads_mobile_sdk/ow2;)Lads_mobile_sdk/xe3;

    move-result-object v11

    iput-object v14, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    iput-object v13, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    iput-object v12, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iput-object v5, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    iput-wide v2, v1, Lads_mobile_sdk/lw2;->e:J

    const/4 v15, 0x5

    iput v15, v1, Lads_mobile_sdk/lw2;->f:I

    invoke-virtual {v11, v6, v1}, Lads_mobile_sdk/xe3;->a(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    if-ne v6, v0, :cond_f

    goto/16 :goto_b

    :cond_f
    move-wide/from16 v18, v2

    move-object v3, v12

    move-wide/from16 v11, v18

    move-object v2, v5

    .line 794
    :goto_9
    :try_start_e
    check-cast v6, Lads_mobile_sdk/v01;

    .line 813
    instance-of v5, v6, Lads_mobile_sdk/q01;

    if-eqz v5, :cond_10

    .line 815
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 816
    invoke-virtual {v5, v9, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 818
    check-cast v6, Lads_mobile_sdk/q01;

    invoke-virtual {v6}, Lads_mobile_sdk/q01;->a()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;

    invoke-virtual {v6}, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;->getSignalString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    :cond_10
    move-object/from16 v5, v17

    .line 822
    instance-of v4, v6, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_13

    .line 824
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    .line 825
    invoke-virtual {v4, v9, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {v11, v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 827
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    check-cast v6, Lads_mobile_sdk/i01;

    invoke-static {v6}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V

    .line 830
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 834
    :goto_a
    invoke-static {v14}, Lads_mobile_sdk/ow2;->d(Lads_mobile_sdk/ow2;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    new-instance v6, Lads_mobile_sdk/jw2;

    const/4 v12, 0x0

    invoke-direct {v6, v14, v4, v12}, Lads_mobile_sdk/jw2;-><init>(Lads_mobile_sdk/ow2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object v3, v1, Lads_mobile_sdk/lw2;->a:Ljava/lang/Object;

    iput-object v2, v1, Lads_mobile_sdk/lw2;->b:Ljava/lang/Object;

    iput-object v12, v1, Lads_mobile_sdk/lw2;->c:Lads_mobile_sdk/rr3;

    iput-object v12, v1, Lads_mobile_sdk/lw2;->d:Ljava/io/Closeable;

    const/4 v4, 0x6

    iput v4, v1, Lads_mobile_sdk/lw2;->f:I

    invoke-static {v5, v6, v1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_11

    :goto_b
    return-object v0

    .line 835
    :cond_11
    :goto_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1051
    instance-of v4, v0, Lads_mobile_sdk/i01;

    if-eqz v4, :cond_12

    .line 1052
    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_12
    const/4 v12, 0x0

    .line 1053
    invoke-static {v2, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 1054
    :goto_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :goto_e
    move-object v12, v3

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_e

    .line 1055
    :cond_13
    :try_start_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_7
    move-exception v0

    move-object v2, v5

    goto :goto_f

    :catchall_8
    move-exception v0

    move-object v2, v5

    move-object v12, v2

    .line 1281
    :goto_f
    :try_start_10
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1285
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_18

    .line 1287
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_14

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_14

    .line 1293
    invoke-virtual {v12, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1299
    :cond_14
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_17

    .line 1300
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_16

    .line 1301
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_15

    throw v0

    .line 1302
    :cond_15
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1303
    :cond_16
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 1304
    :cond_17
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 1305
    :cond_18
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :catchall_9
    move-exception v0

    move-object v3, v0

    .line 1306
    :try_start_11
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

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
