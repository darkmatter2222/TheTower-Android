.class public final Lads_mobile_sdk/us1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/j12;

.field public final b:Lads_mobile_sdk/q52;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j12;Lads_mobile_sdk/q52;)V
    .locals 1

    .line 1
    const-string v0, "nativeAdCore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeJavascriptEngine"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lads_mobile_sdk/us1;->a:Lads_mobile_sdk/j12;

    .line 25
    iput-object p2, p0, Lads_mobile_sdk/us1;->b:Lads_mobile_sdk/q52;

    .line 30
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/us1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    .line 1
    const-string v3, "id"

    .line 0
    const-string v4, "Error loading html overlay: "

    .line 1
    instance-of v5, v2, Lads_mobile_sdk/ts1;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Lads_mobile_sdk/ts1;

    iget v6, v5, Lads_mobile_sdk/ts1;->g:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lads_mobile_sdk/ts1;->g:I

    goto :goto_0

    :cond_0
    new-instance v5, Lads_mobile_sdk/ts1;

    invoke-direct {v5, v1, v2}, Lads_mobile_sdk/ts1;-><init>(Lads_mobile_sdk/us1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v5

    iget-object v2, v10, Lads_mobile_sdk/ts1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 32
    iget v6, v10, Lads_mobile_sdk/ts1;->g:I

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x2

    const/4 v7, 0x1

    const/4 v15, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v7, :cond_2

    if-ne v6, v14, :cond_1

    iget-object v0, v10, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/io/Closeable;

    iget-object v0, v10, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v6, v10, Lads_mobile_sdk/ts1;->d:Lads_mobile_sdk/rr3;

    iget-object v7, v10, Lads_mobile_sdk/ts1;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v10, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v8, v10, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/us1;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v6

    move-object v4, v7

    goto/16 :goto_5

    .line 34
    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    const-string v2, "overlayHtml"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 36
    :cond_4
    const-string v6, "baseUrl"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 38
    iget-object v6, v1, Lads_mobile_sdk/us1;->a:Lads_mobile_sdk/j12;

    invoke-virtual {v6}, Lads_mobile_sdk/j12;->i()Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lads_mobile_sdk/r31;

    if-nez v6, :cond_5

    .line 40
    const-string v0, "Handling loadHtml gmsg while 1.5 click overlay not available"

    invoke-static {v0, v15, v13}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 41
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 43
    :cond_5
    sget-object v9, Lads_mobile_sdk/s11;->e1:Lads_mobile_sdk/s11;

    .line 79
    sget-object v11, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-static {v9, v11, v7}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v9

    .line 80
    :try_start_2
    iget-object v11, v1, Lads_mobile_sdk/us1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11, v12, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 82
    iput-object v1, v10, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    iput-object v0, v10, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    iput-object v9, v10, Lads_mobile_sdk/ts1;->c:Lads_mobile_sdk/rr3;

    iput-object v9, v10, Lads_mobile_sdk/ts1;->d:Lads_mobile_sdk/rr3;

    iput v7, v10, Lads_mobile_sdk/ts1;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object v7, v9

    const/4 v9, 0x0

    const/16 v11, 0xc

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    :try_start_3
    invoke-static/range {v6 .. v11}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v6, v5, :cond_6

    goto :goto_2

    :cond_6
    move-object v8, v1

    move-object v7, v2

    move-object v2, v6

    move-object v6, v7

    .line 83
    :goto_1
    :try_start_4
    check-cast v2, Lads_mobile_sdk/v01;

    .line 101
    iget-object v9, v8, Lads_mobile_sdk/us1;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 102
    instance-of v9, v2, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_7

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15, v13}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_3

    .line 106
    :cond_7
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 107
    const-string v4, "messageType"

    const-string v9, "htmlLoaded"

    invoke-virtual {v2, v4, v9}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, v8, Lads_mobile_sdk/us1;->b:Lads_mobile_sdk/q52;

    const-string v3, "sendMessageToNativeJs"

    iput-object v7, v10, Lads_mobile_sdk/ts1;->a:Ljava/lang/Object;

    iput-object v6, v10, Lads_mobile_sdk/ts1;->b:Ljava/lang/Object;

    iput-object v15, v10, Lads_mobile_sdk/ts1;->c:Lads_mobile_sdk/rr3;

    iput-object v15, v10, Lads_mobile_sdk/ts1;->d:Lads_mobile_sdk/rr3;

    iput v14, v10, Lads_mobile_sdk/ts1;->g:I

    invoke-interface {v0, v2, v3, v10}, Lads_mobile_sdk/eq1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v0, v5, :cond_8

    :goto_2
    return-object v5

    :cond_8
    :goto_3
    move-object v3, v6

    move-object v4, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v6

    move-object v9, v7

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_6

    :cond_9
    move-object v2, v9

    move-object v3, v2

    move-object v4, v3

    .line 113
    :goto_4
    :try_start_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 134
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_a

    .line 135
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    invoke-static {v2}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 136
    :cond_a
    invoke-static {v3, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :goto_5
    move-object v2, v3

    move-object v9, v4

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v2, v9

    :goto_6
    move-object v9, v2

    .line 144
    :goto_7
    :try_start_6
    invoke-virtual {v9, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 148
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_f

    .line 150
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_b

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_b

    .line 156
    invoke-virtual {v9, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 162
    :cond_b
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_e

    .line 163
    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_d

    .line 164
    instance-of v3, v0, Lads_mobile_sdk/w01;

    if-eqz v3, :cond_c

    throw v0

    .line 165
    :cond_c
    new-instance v3, Lads_mobile_sdk/b01;

    invoke-direct {v3, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 166
    :cond_d
    new-instance v3, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v3

    .line 167
    :cond_e
    new-instance v3, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v3, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v3

    .line 168
    :cond_f
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    .line 169
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->T:Lads_mobile_sdk/u11;

    return-object v0
.end method
