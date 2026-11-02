.class public final Lads_mobile_sdk/d62;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/io/Closeable;

.field public c:Ljava/io/Closeable;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Lads_mobile_sdk/rr3;

.field public g:I

.field public final synthetic h:Lcom/google/gson/JsonObject;

.field public final synthetic i:Lads_mobile_sdk/j62;

.field public final synthetic j:Lads_mobile_sdk/eo2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/d62;->h:Lcom/google/gson/JsonObject;

    iput-object p2, p0, Lads_mobile_sdk/d62;->i:Lads_mobile_sdk/j62;

    iput-object p1, p0, Lads_mobile_sdk/d62;->j:Lads_mobile_sdk/eo2;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4

    .line 1
    new-instance v0, Lads_mobile_sdk/d62;

    iget-object v1, p0, Lads_mobile_sdk/d62;->h:Lcom/google/gson/JsonObject;

    iget-object v2, p0, Lads_mobile_sdk/d62;->i:Lads_mobile_sdk/j62;

    iget-object v3, p0, Lads_mobile_sdk/d62;->j:Lads_mobile_sdk/eo2;

    invoke-direct {v0, v3, v2, v1, p1}, Lads_mobile_sdk/d62;-><init>(Lads_mobile_sdk/eo2;Lads_mobile_sdk/j62;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1}, Lads_mobile_sdk/d62;->create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/d62;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/d62;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v4, p0

    .line 1
    const-string v0, "getDisplayMetrics(...)"

    const-string v1, ""

    const-string v2, "<this>"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 60
    iget v3, v4, Lads_mobile_sdk/d62;->g:I

    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v8, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v7, :cond_0

    iget-object v1, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    iget-object v0, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    iget-object v1, v4, Lads_mobile_sdk/d62;->f:Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    iget-object v0, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r31;

    iget-object v3, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iget-object v5, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    check-cast v5, Lads_mobile_sdk/rr3;

    iget-object v8, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/j62;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    move-object v11, v8

    move-object v8, v1

    move-object/from16 v1, p1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v8, v1

    :goto_0
    move-object v1, v3

    goto/16 :goto_9

    .line 62
    :cond_2
    iget-object v0, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iget-object v3, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    check-cast v3, Lads_mobile_sdk/rr3;

    iget-object v11, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    check-cast v11, Lads_mobile_sdk/j62;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v10, v3

    move v3, v5

    move-object v7, v6

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_a

    .line 63
    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 64
    sget-object v3, Lads_mobile_sdk/s11;->n0:Lads_mobile_sdk/s11;

    iget-object v11, v4, Lads_mobile_sdk/d62;->h:Lcom/google/gson/JsonObject;

    iget-object v12, v4, Lads_mobile_sdk/d62;->i:Lads_mobile_sdk/j62;

    iget-object v13, v4, Lads_mobile_sdk/d62;->j:Lads_mobile_sdk/eo2;

    .line 183
    sget-object v14, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-static {v3, v14, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v3

    .line 184
    :try_start_3
    sget-object v14, Lads_mobile_sdk/ds1;->a:Lads_mobile_sdk/ds1;

    const-string v14, "base_url"

    .line 185
    invoke-static {v11, v14, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 186
    const-string v15, "html"

    .line 187
    invoke-static {v11, v15, v1}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    const-string v15, "width"

    .line 189
    invoke-static {v11, v15, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v15

    .line 190
    const-string v7, "height"

    .line 191
    invoke-static {v11, v7, v9}, Lads_mobile_sdk/ds1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;I)I

    move-result v7

    if-lez v15, :cond_4

    if-lez v7, :cond_4

    .line 192
    iget-object v11, v12, Lads_mobile_sdk/j62;->a:Landroid/content/Context;

    .line 193
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v15, v15

    .line 194
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-static {v8, v15, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v11

    float-to-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v10, v10

    float-to-int v10, v10

    .line 300
    iget-object v11, v12, Lads_mobile_sdk/j62;->a:Landroid/content/Context;

    .line 301
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v7, v7

    .line 302
    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    invoke-static {v8, v7, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    move-object v7, v6

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v0, v5

    float-to-int v0, v0

    .line 408
    new-instance v5, Lads_mobile_sdk/v14;

    sget-object v6, Lads_mobile_sdk/u14;->b:Lads_mobile_sdk/u14;

    const/16 v11, 0x8

    invoke-direct {v5, v6, v10, v0, v11}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    goto :goto_1

    :cond_4
    move-object v7, v6

    .line 409
    new-instance v5, Lads_mobile_sdk/v14;

    sget-object v0, Lads_mobile_sdk/u14;->a:Lads_mobile_sdk/u14;

    const/16 v6, 0xe

    invoke-direct {v5, v0, v9, v9, v6}, Lads_mobile_sdk/v14;-><init>(Lads_mobile_sdk/u14;III)V

    .line 410
    :goto_1
    iput-object v12, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    iput-object v3, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iput-object v14, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    iput-object v1, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    iput v8, v4, Lads_mobile_sdk/d62;->g:I

    invoke-static {v12, v5, v13, v4}, Lads_mobile_sdk/j62;->a(Lads_mobile_sdk/j62;Lads_mobile_sdk/v14;Lads_mobile_sdk/eo2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-ne v0, v7, :cond_5

    goto/16 :goto_5

    :cond_5
    move-object v6, v3

    move-object v10, v6

    move-object v11, v12

    move-object v2, v14

    const/4 v3, 0x2

    .line 411
    :goto_2
    :try_start_4
    check-cast v0, Lads_mobile_sdk/v01;

    .line 429
    instance-of v5, v0, Lads_mobile_sdk/i01;

    if-eqz v5, :cond_6

    .line 430
    check-cast v0, Lads_mobile_sdk/i01;

    .line 431
    invoke-static {v0, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    const/4 v15, 0x0

    .line 432
    invoke-static {v6, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v15

    .line 434
    :cond_6
    :try_start_5
    instance-of v5, v0, Lads_mobile_sdk/q01;

    if-eqz v5, :cond_10

    check-cast v0, Lads_mobile_sdk/q01;

    .line 435
    iget-object v0, v0, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 436
    check-cast v0, Lads_mobile_sdk/r31;

    .line 439
    sget-object v5, Lads_mobile_sdk/s11;->R:Lads_mobile_sdk/s11;

    .line 541
    sget-object v12, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-static {v5, v12, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    .line 542
    :try_start_6
    iput-object v11, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    iput-object v10, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    iput-object v6, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iput-object v0, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    iput-object v8, v4, Lads_mobile_sdk/d62;->f:Lads_mobile_sdk/rr3;

    iput v3, v4, Lads_mobile_sdk/d62;->g:I

    const/4 v3, 0x1

    const/16 v5, 0xc

    invoke-static/range {v0 .. v5}, Lads_mobile_sdk/r31;->a(Lads_mobile_sdk/r31;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v1, v7, :cond_7

    goto :goto_5

    :cond_7
    move-object v3, v6

    move-object v2, v8

    move-object v5, v10

    .line 543
    :goto_3
    :try_start_7
    check-cast v1, Lads_mobile_sdk/v01;

    .line 650
    instance-of v6, v1, Lads_mobile_sdk/i01;

    if-eqz v6, :cond_8

    .line 651
    move-object v6, v1

    check-cast v6, Lads_mobile_sdk/i01;

    .line 652
    invoke-static {v6, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto/16 :goto_0

    :cond_8
    :goto_4
    const/4 v15, 0x0

    .line 653
    :try_start_8
    invoke-static {v8, v15}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 654
    instance-of v2, v1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_9

    .line 655
    iget-object v2, v11, Lads_mobile_sdk/j62;->b:Lkotlinx/coroutines/CoroutineScope;

    .line 656
    sget-object v17, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    new-instance v6, Lads_mobile_sdk/c62;

    invoke-direct {v6, v0, v15}, Lads_mobile_sdk/c62;-><init>(Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move-object/from16 v19, v6

    invoke-static/range {v16 .. v21}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 657
    check-cast v1, Lads_mobile_sdk/i01;

    .line 658
    invoke-static {v1, v9}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V

    const/4 v15, 0x0

    goto :goto_7

    .line 659
    :cond_9
    iput-object v5, v4, Lads_mobile_sdk/d62;->a:Ljava/lang/Object;

    iput-object v3, v4, Lads_mobile_sdk/d62;->b:Ljava/io/Closeable;

    const/4 v15, 0x0

    iput-object v15, v4, Lads_mobile_sdk/d62;->c:Ljava/io/Closeable;

    iput-object v15, v4, Lads_mobile_sdk/d62;->d:Ljava/lang/Object;

    iput-object v15, v4, Lads_mobile_sdk/d62;->e:Ljava/lang/Object;

    iput-object v15, v4, Lads_mobile_sdk/d62;->f:Lads_mobile_sdk/rr3;

    const/4 v1, 0x3

    iput v1, v4, Lads_mobile_sdk/d62;->g:I

    invoke-static {v11, v0, v4}, Lads_mobile_sdk/j62;->a(Lads_mobile_sdk/j62;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-ne v0, v7, :cond_a

    :goto_5
    return-object v7

    :cond_a
    move-object v1, v3

    move-object v2, v5

    .line 660
    :goto_6
    :try_start_9
    check-cast v0, Lads_mobile_sdk/r31;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object v15, v0

    move-object v3, v1

    :goto_7
    const/4 v0, 0x0

    .line 688
    invoke-static {v3, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v15

    :catchall_4
    move-exception v0

    move-object v1, v3

    :goto_8
    move-object v2, v5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v1, v6

    move-object v2, v8

    move-object v5, v10

    .line 798
    :goto_9
    :try_start_a
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 802
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_f

    .line 804
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_b

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_b

    .line 810
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 816
    :cond_b
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_e

    .line 817
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_d

    .line 818
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_c

    throw v0

    .line 819
    :cond_c
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 820
    :cond_d
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 821
    :cond_e
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 822
    :cond_f
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v2, v0

    .line 823
    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    :try_start_c
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_8

    .line 824
    :cond_10
    :try_start_d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    move-object v1, v6

    move-object v2, v10

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object v1, v3

    move-object v2, v1

    .line 966
    :goto_a
    :try_start_e
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 970
    instance-of v3, v0, Lads_mobile_sdk/v24;

    if-nez v3, :cond_15

    .line 972
    instance-of v3, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v3, :cond_11

    instance-of v3, v0, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_11

    .line 978
    invoke-virtual {v2, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 984
    :cond_11
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_14

    .line 985
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_13

    .line 986
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_12

    throw v0

    .line 987
    :cond_12
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 988
    :cond_13
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 989
    :cond_14
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 990
    :cond_15
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    :catchall_b
    move-exception v0

    move-object v2, v0

    .line 1007
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_c

    :catchall_c
    move-exception v0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
