.class public final Lads_mobile_sdk/sq;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lads_mobile_sdk/hr;

.field public final synthetic d:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/hr;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    iput-object p2, p0, Lads_mobile_sdk/sq;->d:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/sq;

    iget-object v0, p0, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    iget-object v1, p0, Lads_mobile_sdk/sq;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/sq;-><init>(Lads_mobile_sdk/hr;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/sq;

    iget-object v0, p0, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    iget-object v1, p0, Lads_mobile_sdk/sq;->d:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/sq;-><init>(Lads_mobile_sdk/hr;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/sq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 253
    iget v0, v1, Lads_mobile_sdk/sq;->b:I

    const-string v3, "<set-?>"

    const/16 v4, 0x1e

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x0

    const-string v9, "block"

    const-string v10, "context"

    const-string v11, "<this>"

    const/4 v12, 0x4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v13, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v12, :cond_1

    if-ne v0, v7, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    iget-object v0, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/vv0;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v7

    goto/16 :goto_7

    .line 255
    :cond_2
    iget-object v0, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/vv0;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v0

    move/from16 v16, v7

    move-object/from16 v0, p1

    goto/16 :goto_6

    .line 256
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_8

    :catchall_1
    move-exception v0

    move/from16 v16, v7

    goto/16 :goto_9

    .line 257
    :cond_4
    iget-object v0, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v15, v0

    move/from16 v16, v7

    move-object/from16 v0, p1

    goto/16 :goto_2

    .line 258
    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 259
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 260
    iget-object v0, v0, Lads_mobile_sdk/hr;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 261
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 263
    :cond_6
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 264
    iget-object v0, v0, Lads_mobile_sdk/hr;->b:Landroid/content/Context;

    .line 265
    const-class v15, Landroid/app/ActivityManager;

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/ActivityManager;

    .line 267
    :try_start_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_7

    .line 269
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 270
    iget-object v0, v0, Lads_mobile_sdk/hr;->b:Landroid/content/Context;

    .line 271
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v8, v13}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move/from16 v16, v7

    :try_start_5
    const-string v7, "getHistoricalProcessExitReasons(...)"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    if-eqz v0, :cond_8

    .line 274
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v8

    .line 275
    iput v8, v7, Lads_mobile_sdk/uj2;->Q:I

    .line 276
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v7

    invoke-virtual {v7}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getStatus()I

    move-result v0

    .line 277
    iput v0, v7, Lads_mobile_sdk/uj2;->R:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    goto :goto_0

    :cond_7
    move/from16 v16, v7

    goto :goto_1

    :catchall_3
    move-exception v0

    move/from16 v16, v7

    .line 278
    :goto_0
    const-string v7, "Failed to get previous app exit reason, flags may still be loaded."

    invoke-static {v7, v0, v12}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 281
    :cond_8
    :goto_1
    iget-object v0, v1, Lads_mobile_sdk/sq;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/oq;

    iget-object v8, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    invoke-direct {v7, v8, v14}, Lads_mobile_sdk/oq;-><init>(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)V

    .line 282
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 283
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v7, v14}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v20, v5

    move-object/from16 v18, v8

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 542
    :try_start_6
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 543
    iget-object v0, v0, Lads_mobile_sdk/hr;->c:Lads_mobile_sdk/jw0;

    .line 544
    iput-object v15, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    iput v13, v1, Lads_mobile_sdk/sq;->b:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    invoke-static {v0, v1}, Lads_mobile_sdk/jw0;->b(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_9

    goto/16 :goto_a

    .line 546
    :cond_9
    :goto_2
    move-object v5, v0

    check-cast v5, Lads_mobile_sdk/vv0;

    .line 571
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    invoke-virtual {v5}, Lads_mobile_sdk/vv0;->z()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v5}, Lads_mobile_sdk/vv0;->y()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getFlagJson(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v7, v13

    goto :goto_3

    :cond_a
    const/4 v7, 0x0

    .line 572
    :goto_3
    iput-boolean v7, v0, Lads_mobile_sdk/hr;->r:Z

    .line 573
    sget-object v0, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 574
    :try_start_7
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v5}, Lads_mobile_sdk/vv0;->y()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v7, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_4

    :catch_0
    move-exception v0

    .line 575
    :try_start_8
    const-string v7, "t"

    invoke-static {v0, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v7

    .line 748
    invoke-virtual {v7, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 749
    invoke-virtual {v7}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v7

    .line 750
    iget-object v7, v7, Lads_mobile_sdk/uj2;->s:Ljava/util/List;

    .line 751
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    :cond_b
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v14

    :goto_4
    if-nez v0, :cond_c

    .line 752
    iget-object v0, v1, Lads_mobile_sdk/sq;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/pq;

    iget-object v5, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    invoke-direct {v4, v5, v14}, Lads_mobile_sdk/pq;-><init>(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)V

    .line 753
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 754
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    new-instance v6, Lads_mobile_sdk/ws3;

    invoke-direct {v6, v4, v14}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    invoke-static/range {v17 .. v22}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1013
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 1060
    iget-object v2, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1061
    iget-object v2, v2, Lads_mobile_sdk/hr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1062
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0

    .line 1063
    :cond_c
    :try_start_9
    iget-object v7, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1064
    iput-boolean v13, v7, Lads_mobile_sdk/hr;->p:Z

    .line 1065
    invoke-virtual {v5}, Lads_mobile_sdk/vv0;->A()I

    move-result v7

    iget-object v8, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1066
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1067
    const-string v8, "gads:max_sessions_before_flag_reset"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v14, Lads_mobile_sdk/tq;->a:Lads_mobile_sdk/tq;

    invoke-static {v0, v8, v6, v14}, Lads_mobile_sdk/hr;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/16 v8, 0xa

    .line 1068
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-lt v7, v6, :cond_e

    .line 1069
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v4, :cond_d

    .line 1070
    iget-object v4, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1071
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1072
    const-string v4, "gads:use_previous_exit_reasons_for_crash_loop_detection"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/uq;->a:Lads_mobile_sdk/uq;

    invoke-static {v0, v4, v6, v7}, Lads_mobile_sdk/hr;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v4, :cond_d

    .line 1073
    :try_start_a
    iget-object v4, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v15, v0}, Lads_mobile_sdk/hr;->a(Lads_mobile_sdk/hr;Landroid/app/ActivityManager;Lcom/google/gson/JsonObject;)Z

    move-result v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v4, :cond_e

    goto :goto_5

    :catchall_4
    move-exception v0

    .line 1075
    :try_start_b
    const-string v4, "Failed to get previous app exit reasons, flags will be reset."

    invoke-static {v4, v0, v12}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1086
    :cond_d
    :goto_5
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    const/4 v4, 0x0

    iput-object v4, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v1, Lads_mobile_sdk/sq;->b:I

    invoke-static {v0, v1}, Lads_mobile_sdk/hr;->a(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_11

    goto/16 :goto_a

    .line 1088
    :cond_e
    iget-object v4, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1089
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    iput-object v0, v4, Lads_mobile_sdk/hr;->j:Lcom/google/gson/JsonObject;

    .line 1314
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1315
    iget-object v0, v0, Lads_mobile_sdk/hr;->c:Lads_mobile_sdk/jw0;

    .line 1316
    iput-object v5, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v1, Lads_mobile_sdk/sq;->b:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1317
    invoke-static {v0, v1}, Lads_mobile_sdk/jw0;->a(Lads_mobile_sdk/jw0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_f

    goto/16 :goto_a

    .line 1318
    :cond_f
    :goto_6
    check-cast v0, Lads_mobile_sdk/qb0;

    if-eqz v0, :cond_10

    .line 1384
    iget-object v4, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1385
    iget-object v4, v4, Lads_mobile_sdk/hr;->d:Lads_mobile_sdk/xb0;

    .line 1386
    iput-object v5, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    iput v12, v1, Lads_mobile_sdk/sq;->b:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1387
    invoke-static {v4, v0, v1}, Lads_mobile_sdk/xb0;->a(Lads_mobile_sdk/xb0;Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_10

    goto :goto_a

    :cond_10
    move-object v0, v5

    .line 1388
    :goto_7
    iget-object v4, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1389
    iget-object v4, v4, Lads_mobile_sdk/hr;->k:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1390
    invoke-virtual {v0}, Lads_mobile_sdk/vv0;->w()Lads_mobile_sdk/k30;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1395
    iget-object v0, v1, Lads_mobile_sdk/sq;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/qq;

    iget-object v5, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lads_mobile_sdk/qq;-><init>(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)V

    .line 1396
    sget-object v5, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1397
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1655
    new-instance v6, Lads_mobile_sdk/ws3;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v22, v6

    invoke-static/range {v19 .. v24}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1656
    :cond_11
    :goto_8
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    goto :goto_c

    :catchall_5
    move-exception v0

    .line 1659
    :goto_9
    :try_start_c
    const-string v4, "exception"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1660
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 1663
    invoke-virtual {v4}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lads_mobile_sdk/uj2;->m:Z

    .line 1664
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1665
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1666
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1890
    iput-object v4, v0, Lads_mobile_sdk/hr;->j:Lcom/google/gson/JsonObject;

    .line 1891
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1892
    iget-object v0, v0, Lads_mobile_sdk/hr;->c:Lads_mobile_sdk/jw0;

    const/4 v4, 0x0

    .line 1893
    iput-object v4, v1, Lads_mobile_sdk/sq;->a:Ljava/lang/Object;

    move/from16 v3, v16

    iput v3, v1, Lads_mobile_sdk/sq;->b:I

    invoke-virtual {v0, v1}, Lads_mobile_sdk/jw0;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_12

    :goto_a
    return-object v2

    .line 1894
    :cond_12
    :goto_b
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1895
    iget-object v0, v0, Lads_mobile_sdk/hr;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x0

    .line 1896
    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1898
    iget-object v0, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 1657
    :goto_c
    iget-object v0, v0, Lads_mobile_sdk/hr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1658
    invoke-virtual {v0, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1901
    iget-object v2, v1, Lads_mobile_sdk/sq;->d:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lads_mobile_sdk/rq;

    iget-object v3, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lads_mobile_sdk/rq;-><init>(Lads_mobile_sdk/hr;Lkotlin/coroutines/Continuation;)V

    .line 1902
    sget-object v3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 1903
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2161
    new-instance v5, Lads_mobile_sdk/ws3;

    invoke-direct {v5, v0, v4}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 2162
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2163
    :goto_d
    iget-object v2, v1, Lads_mobile_sdk/sq;->c:Lads_mobile_sdk/hr;

    .line 2164
    iget-object v2, v2, Lads_mobile_sdk/hr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2165
    invoke-virtual {v2, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
