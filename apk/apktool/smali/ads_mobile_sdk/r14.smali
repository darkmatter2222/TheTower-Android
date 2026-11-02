.class public final Lads_mobile_sdk/r14;
.super Lads_mobile_sdk/fp2;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/p04;
.implements Lads_mobile_sdk/q04;


# instance fields
.field public final c:Lads_mobile_sdk/ex0;

.field public final d:Lkotlin/coroutines/CoroutineContext;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/g83;

.field public final g:Lads_mobile_sdk/sz;

.field public final h:Lads_mobile_sdk/cw2;

.field public final i:Lads_mobile_sdk/rz3;

.field public final j:Lads_mobile_sdk/t04;

.field public final k:Lads_mobile_sdk/tx;

.field public final l:Lads_mobile_sdk/cw2;

.field public m:Landroidx/webkit/Profile;

.field public final n:Lkotlinx/coroutines/sync/Mutex;

.field public final o:Lkotlinx/coroutines/sync/Mutex;

.field public p:Lkotlinx/coroutines/Job;

.field public q:J

.field public r:Lkotlinx/coroutines/Job;

.field public final s:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/ex0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/g83;Lads_mobile_sdk/zw3;Lads_mobile_sdk/sz;Lads_mobile_sdk/dw2;Lads_mobile_sdk/rz3;Lads_mobile_sdk/t04;Lads_mobile_sdk/tx;Lads_mobile_sdk/dw2;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "flags"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uiContext"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "backgroundScope"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rootTraceCreator"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "userAgentProvider"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "concurrencyObjects"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewInitializationTaskProvider"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewFeatureWrapper"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "webViewProfileStoreWrapper"

    invoke-static {p10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clock"

    invoke-static {p11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkCoreJavascriptEngine"

    invoke-static {p12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lads_mobile_sdk/fp2;-><init>()V

    .line 3
    iput-object p2, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 4
    iput-object p3, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    .line 5
    iput-object p4, p0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 6
    iput-object p5, p0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    .line 8
    iput-object p7, p0, Lads_mobile_sdk/r14;->g:Lads_mobile_sdk/sz;

    .line 9
    iput-object p8, p0, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    .line 10
    iput-object p9, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    .line 11
    iput-object p10, p0, Lads_mobile_sdk/r14;->j:Lads_mobile_sdk/t04;

    .line 12
    iput-object p11, p0, Lads_mobile_sdk/r14;->k:Lads_mobile_sdk/tx;

    .line 13
    iput-object p12, p0, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 18
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p4

    iput-object p4, p0, Lads_mobile_sdk/r14;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 19
    invoke-static {p1, p2, p3}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/r14;->o:Lkotlinx/coroutines/sync/Mutex;

    .line 24
    new-instance p1, Lads_mobile_sdk/q14;

    invoke-direct {p1, p0}, Lads_mobile_sdk/q14;-><init>(Lads_mobile_sdk/r14;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/r14;->s:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/r14;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1553
    instance-of v0, p2, Lads_mobile_sdk/j14;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/j14;

    iget v1, v0, Lads_mobile_sdk/j14;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/j14;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/j14;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/j14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/j14;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1736
    iget v2, v0, Lads_mobile_sdk/j14;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    iget-object p0, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iget-object p1, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iget-object v2, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2080
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2082
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 2083
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 2084
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 2085
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v8, ""

    :cond_5
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2086
    const-string v9, ".js"

    invoke-static {v8, v9, v5}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, ".css"

    invoke-static {v8, v9, v5}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    .line 2430
    :cond_6
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2431
    :cond_7
    :goto_2
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2436
    :cond_8
    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, p2, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2437
    invoke-virtual {v6}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 2438
    invoke-virtual {v6}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2446
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a

    .line 2447
    iput-object p0, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iput-object v2, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iput v5, v0, Lads_mobile_sdk/j14;->f:I

    invoke-virtual {p0, p2, v0}, Lads_mobile_sdk/r14;->b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    goto :goto_6

    :cond_9
    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    .line 2448
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto :goto_4

    :cond_a
    const/4 p2, 0x0

    :goto_4
    const/4 v5, 0x0

    if-nez p2, :cond_c

    .line 2453
    iput-object v5, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    iput-object v5, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iput-object v5, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iput v4, v0, Lads_mobile_sdk/j14;->f:I

    invoke-virtual {p0, p1, v0}, Lads_mobile_sdk/r14;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_b

    goto :goto_6

    .line 2457
    :cond_b
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 2458
    :cond_c
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    .line 2459
    iput-object v5, v0, Lads_mobile_sdk/j14;->a:Lads_mobile_sdk/r14;

    iput-object v5, v0, Lads_mobile_sdk/j14;->b:Ljava/util/List;

    iput-object v5, v0, Lads_mobile_sdk/j14;->c:Ljava/util/List;

    iput v3, v0, Lads_mobile_sdk/j14;->f:I

    invoke-virtual {p0, v2, v0}, Lads_mobile_sdk/r14;->a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_d

    :goto_6
    return-object v1

    .line 2461
    :cond_d
    :goto_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_e
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final a(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v2, v1, Lads_mobile_sdk/w04;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/w04;

    iget v3, v2, Lads_mobile_sdk/w04;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/w04;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/w04;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/w04;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/w04;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 167
    iget v4, v2, Lads_mobile_sdk/w04;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v3, v2, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v2, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/rr3;

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_3
    iget-object v0, v2, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r14;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 168
    iget-object v1, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    const-string v4, "key"

    const-string v10, "gads:webview_quic_hints_enabled"

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v11, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v10, v4, v11}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 187
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 189
    :cond_5
    iget-object v1, v0, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/yz3;

    iput-object v0, v2, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    iput v8, v2, Lads_mobile_sdk/w04;->e:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/yz3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    goto/16 :goto_5

    .line 191
    :cond_6
    :goto_1
    iget-object v1, v0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-eqz v1, :cond_18

    .line 192
    iget-object v4, v0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v10, Lads_mobile_sdk/s11;->W:Lads_mobile_sdk/s11;

    .line 430
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 431
    new-instance v12, Lads_mobile_sdk/ks3;

    .line 432
    new-instance v13, Lads_mobile_sdk/n03;

    invoke-direct {v13}, Lads_mobile_sdk/n03;-><init>()V

    .line 433
    new-instance v14, Lads_mobile_sdk/tn1;

    invoke-direct {v14}, Lads_mobile_sdk/tn1;-><init>()V

    .line 434
    new-instance v15, Lads_mobile_sdk/m33;

    invoke-direct {v15}, Lads_mobile_sdk/m33;-><init>()V

    .line 435
    new-instance v6, Lads_mobile_sdk/zb;

    invoke-direct {v6}, Lads_mobile_sdk/zb;-><init>()V

    .line 436
    invoke-direct {v12, v13, v14, v15, v6}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 437
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v6

    .line 438
    iget-object v6, v6, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const/4 v13, 0x6

    const-string v14, "Quic hints are not supported"

    if-nez v6, :cond_f

    .line 439
    invoke-static {v4, v10, v11, v12}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 440
    :try_start_2
    sget-object v6, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, v0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v6}, Lads_mobile_sdk/az3;->a(Lads_mobile_sdk/rz3;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 441
    invoke-static {v14, v9, v13}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 442
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 444
    :cond_7
    :try_start_3
    iget-object v6, v0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lads_mobile_sdk/x04;

    invoke-direct {v8, v1, v0, v9}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;

    iput v7, v2, Lads_mobile_sdk/w04;->e:I

    invoke-static {v6, v8, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v3, :cond_8

    goto/16 :goto_5

    :cond_8
    move-object v2, v4

    move-object v3, v2

    .line 447
    :goto_2
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 683
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_9

    .line 684
    check-cast v0, Lads_mobile_sdk/i01;

    .line 685
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 686
    :cond_9
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :goto_3
    move-object v4, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v4

    .line 694
    :goto_4
    :try_start_5
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 698
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_e

    .line 700
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_a

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_a

    .line 706
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 712
    :cond_a
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_d

    .line 713
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_c

    .line 714
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_b

    throw v0

    .line 715
    :cond_b
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 716
    :cond_c
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 717
    :cond_d
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 718
    :cond_e
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 719
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 753
    :cond_f
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-static {v10, v4, v8}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 754
    :try_start_7
    sget-object v6, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, v0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v6}, Lads_mobile_sdk/az3;->a(Lads_mobile_sdk/rz3;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 755
    invoke-static {v14, v9, v13}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 756
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    invoke-static {v4, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 758
    :cond_10
    :try_start_8
    iget-object v6, v0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lads_mobile_sdk/x04;

    invoke-direct {v7, v1, v0, v9}, Lads_mobile_sdk/x04;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lads_mobile_sdk/w04;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/w04;->b:Lads_mobile_sdk/rr3;

    const/4 v0, 0x3

    iput v0, v2, Lads_mobile_sdk/w04;->e:I

    invoke-static {v6, v7, v2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-ne v0, v3, :cond_11

    :goto_5
    return-object v3

    :cond_11
    move-object v2, v4

    move-object v3, v2

    .line 761
    :goto_6
    :try_start_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1034
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_12

    .line 1035
    check-cast v0, Lads_mobile_sdk/i01;

    .line 1036
    invoke-static {v0, v5}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1037
    :cond_12
    invoke-static {v3, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_9

    :goto_7
    move-object v4, v2

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v3, v4

    .line 1045
    :goto_8
    :try_start_a
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1049
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_17

    .line 1051
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_13

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_13

    .line 1057
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1063
    :cond_13
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_16

    .line 1064
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_15

    .line 1065
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_14

    throw v0

    .line 1066
    :cond_14
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1067
    :cond_15
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1068
    :cond_16
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1069
    :cond_17
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 1070
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1071
    :cond_18
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final synthetic a(Lads_mobile_sdk/r14;)Lkotlin/coroutines/CoroutineContext;
    .locals 0

    .line 1107
    iget-object p0, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    return-object p0
.end method

.method public static final synthetic a(Lads_mobile_sdk/r14;Landroidx/webkit/Profile;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    return-void
.end method

.method public static final synthetic b(Lads_mobile_sdk/r14;)Lads_mobile_sdk/rz3;
    .locals 0

    .line 36
    iget-object p0, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    return-object p0
.end method

.method public static final b(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    instance-of v0, p1, Lads_mobile_sdk/y04;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/y04;

    iget v1, v0, Lads_mobile_sdk/y04;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/y04;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/y04;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/y04;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/y04;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 155
    iget v2, v0, Lads_mobile_sdk/y04;->f:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iget-object v1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iget-object v1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iget-object v0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v2, Lads_mobile_sdk/s11;->T:Lads_mobile_sdk/s11;

    .line 370
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 371
    new-instance v8, Lads_mobile_sdk/ks3;

    .line 372
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 373
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    .line 374
    new-instance v11, Lads_mobile_sdk/m33;

    invoke-direct {v11}, Lads_mobile_sdk/m33;-><init>()V

    .line 375
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 376
    invoke-direct {v8, v9, v10, v11, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 377
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 378
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v10, "key"

    const-string v11, "gads:webview_profile_timeout"

    if-nez v9, :cond_b

    .line 379
    invoke-static {p1, v2, v7, v8}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object p1

    .line 380
    :try_start_2
    iget-object v2, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v5

    sget-object v7, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v2, v11, v5, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/time/Duration;

    invoke-virtual {v2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 383
    new-instance v2, Lads_mobile_sdk/a14;

    invoke-direct {v2, p0, v6}, Lads_mobile_sdk/a14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iput v4, v0, Lads_mobile_sdk/y04;->f:I

    invoke-static {v7, v8, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v1, :cond_4

    goto/16 :goto_3

    :cond_4
    move-object v0, p0

    move-object p0, p1

    move-object v1, p0

    .line 403
    :goto_1
    :try_start_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 602
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_5

    .line 603
    check-cast p1, Lads_mobile_sdk/i01;

    .line 604
    invoke-static {p1, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 605
    :cond_5
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    move-object p0, v0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 613
    :goto_2
    :try_start_4
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 617
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_a

    .line 619
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_6

    .line 625
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 631
    :cond_6
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_9

    .line 632
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_8

    .line 633
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_7

    throw p1

    .line 634
    :cond_7
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 635
    :cond_8
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 636
    :cond_9
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 637
    :cond_a
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object p1, v0

    .line 638
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 672
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {v2, p1, v4}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 673
    :try_start_6
    iget-object v2, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 674
    sget-object v4, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v4, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v5, v4}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v4

    sget-object v7, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v2, v11, v4, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/time/Duration;

    invoke-virtual {v2}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v7

    .line 676
    new-instance v2, Lads_mobile_sdk/a14;

    invoke-direct {v2, p0, v6}, Lads_mobile_sdk/a14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/y04;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/y04;->b:Lads_mobile_sdk/rr3;

    iput-object p1, v0, Lads_mobile_sdk/y04;->c:Lads_mobile_sdk/rr3;

    iput v5, v0, Lads_mobile_sdk/y04;->f:I

    invoke-static {v7, v8, v2, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v1, :cond_c

    :goto_3
    return-object v1

    :cond_c
    move-object v0, p0

    move-object p0, p1

    move-object v1, p0

    .line 696
    :goto_4
    :try_start_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 932
    instance-of v2, p1, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_d

    .line 933
    check-cast p1, Lads_mobile_sdk/i01;

    .line 934
    invoke-static {p1, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 935
    :cond_d
    invoke-static {p0, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 936
    :goto_5
    iget-object v7, v0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p0, Lads_mobile_sdk/b14;

    invoke-direct {p0, v0, v6}, Lads_mobile_sdk/b14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 937
    sget-object v8, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 938
    const-string p1, "<this>"

    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1196
    new-instance v10, Lads_mobile_sdk/ws3;

    invoke-direct {v10, p0, v6}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v9, 0x0

    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1197
    invoke-virtual {v0}, Lads_mobile_sdk/r14;->i()V

    .line 1198
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_5
    move-exception v0

    move-object p0, v0

    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    .line 1436
    :goto_6
    :try_start_8
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1440
    instance-of v0, p1, Lads_mobile_sdk/v24;

    if-nez v0, :cond_12

    .line 1442
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_e

    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_e

    .line 1448
    invoke-virtual {v1, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1454
    :cond_e
    instance-of v0, p1, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v0, :cond_11

    .line 1455
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_10

    .line 1456
    instance-of v0, p1, Lads_mobile_sdk/w01;

    if-eqz v0, :cond_f

    throw p1

    .line 1457
    :cond_f
    new-instance v0, Lads_mobile_sdk/b01;

    invoke-direct {v0, p1}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1458
    :cond_10
    new-instance v0, Lads_mobile_sdk/wz0;

    check-cast p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v0

    .line 1459
    :cond_11
    new-instance v0, Lads_mobile_sdk/i21;

    check-cast p1, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v0, p1}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v0

    .line 1460
    :cond_12
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object p1, v0

    .line 1461
    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static final c(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    instance-of v2, v1, Lads_mobile_sdk/g14;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lads_mobile_sdk/g14;

    iget v3, v2, Lads_mobile_sdk/g14;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/g14;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/g14;

    invoke-direct {v2, v0, v1}, Lads_mobile_sdk/g14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lads_mobile_sdk/g14;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 190
    iget v4, v2, Lads_mobile_sdk/g14;->e:I

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x2

    const-string v11, "key"

    const/4 v12, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v9, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    move-object v3, v2

    move-object v2, v0

    :try_start_0
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    iget-object v0, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iget-object v2, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    check-cast v2, Lads_mobile_sdk/rr3;

    move-object v3, v2

    move-object v2, v0

    :try_start_1
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto/16 :goto_4

    :cond_4
    iget-object v0, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    check-cast v0, Lads_mobile_sdk/r14;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 191
    iget-object v1, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 193
    const-string v4, "gads:webview_preconnect_enabled"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v14, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v1, v4, v13, v14}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 210
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 212
    :cond_6
    iget-object v1, v0, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    invoke-interface {v1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/yz3;

    iput-object v0, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput v9, v2, Lads_mobile_sdk/g14;->e:I

    invoke-virtual {v1, v2}, Lads_mobile_sdk/yz3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    goto/16 :goto_6

    .line 214
    :cond_7
    :goto_2
    iget-object v1, v0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-eqz v1, :cond_19

    .line 215
    iget-object v4, v0, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v13, Lads_mobile_sdk/s11;->V:Lads_mobile_sdk/s11;

    .line 508
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    .line 509
    new-instance v15, Lads_mobile_sdk/ks3;

    .line 510
    new-instance v6, Lads_mobile_sdk/n03;

    invoke-direct {v6}, Lads_mobile_sdk/n03;-><init>()V

    .line 511
    new-instance v7, Lads_mobile_sdk/tn1;

    invoke-direct {v7}, Lads_mobile_sdk/tn1;-><init>()V

    .line 512
    new-instance v9, Lads_mobile_sdk/m33;

    invoke-direct {v9}, Lads_mobile_sdk/m33;-><init>()V

    .line 513
    new-instance v5, Lads_mobile_sdk/zb;

    invoke-direct {v5}, Lads_mobile_sdk/zb;-><init>()V

    .line 514
    invoke-direct {v15, v6, v7, v9, v5}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 515
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v5

    .line 516
    iget-object v5, v5, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v6, "gads:webview_profile_preconnect_timeout"

    const-string v7, "gads:enable_preconnect_timeout"

    if-nez v5, :cond_10

    .line 517
    invoke-static {v4, v13, v14, v15}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 518
    :try_start_2
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 520
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v13, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v7, v9, v13}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 537
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 538
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v10, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    sget-object v8, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v5, v6, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/time/Duration;

    invoke-virtual {v5}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 540
    new-instance v7, Lads_mobile_sdk/h14;

    invoke-direct {v7, v1, v0, v12}, Lads_mobile_sdk/h14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iput v10, v2, Lads_mobile_sdk/g14;->e:I

    invoke-static {v5, v6, v7, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto/16 :goto_6

    .line 542
    :cond_8
    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    iput v8, v2, Lads_mobile_sdk/g14;->e:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/r14;->a(Landroidx/webkit/Profile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v0, v3, :cond_9

    goto/16 :goto_6

    :cond_9
    move-object v2, v4

    move-object v3, v2

    .line 544
    :goto_3
    :try_start_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 837
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_a

    .line 838
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v1, 0x0

    .line 839
    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 840
    :cond_a
    invoke-static {v2, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :goto_4
    move-object v4, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v2, v4

    .line 848
    :goto_5
    :try_start_4
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 852
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_f

    .line 854
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_b

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_b

    .line 860
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 866
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_e

    .line 867
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_d

    .line 868
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_c

    throw v0

    .line 869
    :cond_c
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 870
    :cond_d
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 871
    :cond_e
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 872
    :cond_f
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 873
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 907
    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v13, v4, v5}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 908
    :try_start_6
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 910
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v9, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v5, v7, v8, v9}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 927
    iget-object v5, v0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 928
    sget-object v7, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object v7, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v10, v7}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v7

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 929
    invoke-static {v7, v8}, Lkotlin/time/Duration;->box-impl(J)Lkotlin/time/Duration;

    move-result-object v7

    sget-object v8, Lads_mobile_sdk/yr;->l:Lads_mobile_sdk/ur;

    invoke-virtual {v5, v6, v7, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/time/Duration;

    invoke-virtual {v5}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v5

    .line 930
    new-instance v7, Lads_mobile_sdk/h14;

    invoke-direct {v7, v1, v0, v12}, Lads_mobile_sdk/h14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    const/4 v0, 0x4

    iput v0, v2, Lads_mobile_sdk/g14;->e:I

    invoke-static {v5, v6, v7, v2}, Lkotlinx/coroutines/TimeoutKt;->withTimeout-KLykuaI(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_12

    goto :goto_6

    .line 932
    :cond_11
    iput-object v4, v2, Lads_mobile_sdk/g14;->a:Ljava/lang/Object;

    iput-object v4, v2, Lads_mobile_sdk/g14;->b:Lads_mobile_sdk/rr3;

    const/4 v5, 0x5

    iput v5, v2, Lads_mobile_sdk/g14;->e:I

    invoke-virtual {v0, v1, v2}, Lads_mobile_sdk/r14;->a(Landroidx/webkit/Profile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-ne v0, v3, :cond_12

    :goto_6
    return-object v3

    :cond_12
    move-object v2, v4

    move-object v3, v2

    .line 934
    :goto_7
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 1264
    instance-of v1, v0, Lads_mobile_sdk/i01;

    if-eqz v1, :cond_13

    .line 1265
    check-cast v0, Lads_mobile_sdk/i01;

    const/4 v1, 0x0

    .line 1266
    invoke-static {v0, v1}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1267
    :cond_13
    invoke-static {v2, v12}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_a

    :goto_8
    move-object v4, v3

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v4

    .line 1275
    :goto_9
    :try_start_8
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 1279
    instance-of v1, v0, Lads_mobile_sdk/v24;

    if-nez v1, :cond_18

    .line 1281
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_14

    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_14

    .line 1287
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 1293
    :cond_14
    instance-of v1, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v1, :cond_17

    .line 1294
    instance-of v1, v0, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_16

    .line 1295
    instance-of v1, v0, Lads_mobile_sdk/w01;

    if-eqz v1, :cond_15

    throw v0

    .line 1296
    :cond_15
    new-instance v1, Lads_mobile_sdk/b01;

    invoke-direct {v1, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1297
    :cond_16
    new-instance v1, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v1

    .line 1298
    :cond_17
    new-instance v1, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v1, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v1

    .line 1299
    :cond_18
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 1300
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v2, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 1301
    :cond_19
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static d(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/c14;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/c14;

    iget v1, v0, Lads_mobile_sdk/c14;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/c14;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/c14;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/c14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/c14;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 71
    iget v2, v0, Lads_mobile_sdk/c14;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/c14;->b:Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lads_mobile_sdk/c14;->a:Lads_mobile_sdk/r14;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    const-string v2, "key"

    const-string v5, "gads:webview_profile:enabled"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v5, v2, v6}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_3

    .line 91
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 93
    :cond_3
    iget-object p1, p0, Lads_mobile_sdk/r14;->n:Lkotlinx/coroutines/sync/Mutex;

    .line 306
    iput-object p0, v0, Lads_mobile_sdk/c14;->a:Lads_mobile_sdk/r14;

    iput-object p1, v0, Lads_mobile_sdk/c14;->b:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/c14;->e:I

    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    return-object v1

    .line 307
    :cond_4
    :goto_1
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-nez v0, :cond_6

    iget-object v0, p0, Lads_mobile_sdk/r14;->p:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 310
    :cond_5
    iget-object v5, p0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v8, Lads_mobile_sdk/d14;

    invoke-direct {v8, p0, v4}, Lads_mobile_sdk/d14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/r14;->p:Lkotlinx/coroutines/Job;

    .line 311
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 524
    :cond_6
    :goto_2
    :try_start_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method

.method public static e(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/n14;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/n14;

    iget v1, v0, Lads_mobile_sdk/n14;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/n14;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/n14;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/n14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/n14;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 64
    iget v2, v0, Lads_mobile_sdk/n14;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 65
    iget-object p1, p0, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    const-string v2, "key"

    const-string v4, "init_profile_in_post_init_task:enabled"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {p1, v4, v2, v5}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    iput v3, v0, Lads_mobile_sdk/n14;->c:I

    .line 85
    invoke-static {p0, v0}, Lads_mobile_sdk/r14;->d(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 86
    :cond_3
    :goto_1
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public final a(Landroidx/webkit/Profile;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1315
    sget-object v0, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, p0, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    .line 1316
    const-string v1, "featureWrapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1534
    sget-object v1, Lads_mobile_sdk/az3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1538
    :cond_0
    :try_start_0
    const-string v1, "PRECONNECT"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1539
    const-string v0, "feature"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    invoke-static {v1}, Landroidx/webkit/WebViewFeature;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1549
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/r14;->d:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lads_mobile_sdk/i14;

    invoke-direct {v1, p1, p0, v2}, Lads_mobile_sdk/i14;-><init>(Landroidx/webkit/Profile;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1550
    :catchall_0
    sget-object p1, Lads_mobile_sdk/az3;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1551
    :goto_0
    const-string p1, "Preconnect is not supported"

    const/4 p2, 0x6

    invoke-static {p1, v2, p2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1552
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 2462
    instance-of v2, v0, Lads_mobile_sdk/k14;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/k14;

    iget v3, v2, Lads_mobile_sdk/k14;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lads_mobile_sdk/k14;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lads_mobile_sdk/k14;

    invoke-direct {v2, v1, v0}, Lads_mobile_sdk/k14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lads_mobile_sdk/k14;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 2691
    iget v4, v2, Lads_mobile_sdk/k14;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v3, v2, Lads_mobile_sdk/k14;->b:Ljava/util/List;

    iget-object v2, v2, Lads_mobile_sdk/k14;->a:Lads_mobile_sdk/r14;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2692
    iget-object v0, v1, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2694
    const-string v4, "key"

    const-string v6, "gads:webview_prefetch_resources_enabled"

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2710
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v7, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v0, v6, v4, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2711
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 2713
    :cond_3
    iget-object v0, v1, Lads_mobile_sdk/r14;->h:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/yz3;

    iput-object v1, v2, Lads_mobile_sdk/k14;->a:Lads_mobile_sdk/r14;

    move-object/from16 v4, p1

    iput-object v4, v2, Lads_mobile_sdk/k14;->b:Ljava/util/List;

    iput v5, v2, Lads_mobile_sdk/k14;->e:I

    invoke-virtual {v0, v2}, Lads_mobile_sdk/yz3;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    move-object v2, v1

    move-object v3, v4

    .line 2715
    :goto_1
    iget-object v0, v2, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v4, Lads_mobile_sdk/s11;->X:Lads_mobile_sdk/s11;

    .line 3099
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 3100
    new-instance v7, Lads_mobile_sdk/ks3;

    .line 3101
    new-instance v8, Lads_mobile_sdk/n03;

    invoke-direct {v8}, Lads_mobile_sdk/n03;-><init>()V

    .line 3102
    new-instance v9, Lads_mobile_sdk/tn1;

    invoke-direct {v9}, Lads_mobile_sdk/tn1;-><init>()V

    .line 3103
    new-instance v10, Lads_mobile_sdk/m33;

    invoke-direct {v10}, Lads_mobile_sdk/m33;-><init>()V

    .line 3104
    new-instance v11, Lads_mobile_sdk/zb;

    invoke-direct {v11}, Lads_mobile_sdk/zb;-><init>()V

    .line 3105
    invoke-direct {v7, v8, v9, v10, v11}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 3106
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v8

    .line 3107
    iget-object v8, v8, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    const-string v9, "block"

    const-string v10, "context"

    const-string v11, "<this>"

    const/4 v12, 0x0

    const-string v13, "Profile prefetch is not supported"

    const-string v14, "Profile has not been initialized yet"

    const/4 v15, 0x6

    const/4 v5, 0x0

    if-nez v8, :cond_e

    .line 3108
    invoke-static {v0, v4, v6, v7}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v4

    .line 3109
    :try_start_0
    iget-object v0, v2, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-nez v0, :cond_5

    .line 3111
    invoke-static {v14, v5, v15}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3112
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3114
    :cond_5
    :try_start_1
    sget-object v6, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, v2, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v6}, Lads_mobile_sdk/az3;->c(Lads_mobile_sdk/rz3;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 3115
    invoke-static {v13, v5, v15}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3116
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3119
    :cond_6
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3120
    iget-object v13, v2, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/l14;

    invoke-direct {v7, v0, v6, v2, v5}, Lads_mobile_sdk/l14;-><init>(Landroidx/webkit/Profile;Ljava/lang/String;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3121
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3122
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3380
    new-instance v6, Lads_mobile_sdk/ws3;

    invoke-direct {v6, v7, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_2

    .line 3381
    :cond_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 3751
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_8

    .line 3752
    check-cast v0, Lads_mobile_sdk/i01;

    .line 3753
    invoke-static {v0, v12}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3754
    :cond_8
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    .line 3762
    :try_start_3
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3766
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_d

    .line 3768
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_9

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_9

    .line 3774
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3780
    :cond_9
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c

    .line 3781
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_b

    .line 3782
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_a

    throw v0

    .line 3783
    :cond_a
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3784
    :cond_b
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 3785
    :cond_c
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 3786
    :cond_d
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 3787
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 3821
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x1

    invoke-static {v4, v0, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v4

    .line 3822
    :try_start_5
    iget-object v0, v2, Lads_mobile_sdk/r14;->m:Landroidx/webkit/Profile;

    if-nez v0, :cond_f

    .line 3824
    invoke-static {v14, v5, v15}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3825
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3827
    :cond_f
    :try_start_6
    sget-object v6, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v6, v2, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v6}, Lads_mobile_sdk/az3;->c(Lads_mobile_sdk/rz3;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 3828
    invoke-static {v13, v5, v15}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 3829
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3832
    :cond_10
    :try_start_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3833
    iget-object v13, v2, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v7, Lads_mobile_sdk/l14;

    invoke-direct {v7, v0, v6, v2, v5}, Lads_mobile_sdk/l14;-><init>(Landroidx/webkit/Profile;Ljava/lang/String;Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3834
    sget-object v14, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 3835
    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4093
    new-instance v6, Lads_mobile_sdk/ws3;

    invoke-direct {v6, v7, v5}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v6

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_3

    .line 4094
    :cond_11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4501
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_12

    .line 4502
    check-cast v0, Lads_mobile_sdk/i01;

    .line 4503
    invoke-static {v0, v12}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4504
    :cond_12
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 4505
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_3
    move-exception v0

    .line 4916
    :try_start_8
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 4920
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_17

    .line 4922
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_13

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_13

    .line 4928
    invoke-virtual {v4, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 4934
    :cond_13
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_16

    .line 4935
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_15

    .line 4936
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_14

    throw v0

    .line 4937
    :cond_14
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4938
    :cond_15
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 4939
    :cond_16
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 4940
    :cond_17
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 4941
    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1462
    instance-of v3, v2, Lads_mobile_sdk/m14;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lads_mobile_sdk/m14;

    iget v4, v3, Lads_mobile_sdk/m14;->g:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lads_mobile_sdk/m14;->g:I

    goto :goto_0

    :cond_0
    new-instance v3, Lads_mobile_sdk/m14;

    invoke-direct {v3, v1, v2}, Lads_mobile_sdk/m14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lads_mobile_sdk/m14;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 1667
    iget v5, v3, Lads_mobile_sdk/m14;->g:I

    const-string v6, "Prerender is not supported"

    const-string v7, "SDK Core is not loaded"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v11, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v8, :cond_1

    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1668
    :cond_2
    iget-object v5, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    iget-object v9, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v10, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    check-cast v10, Lads_mobile_sdk/r14;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    .line 1669
    :cond_3
    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/io/Closeable;

    iget-object v0, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lads_mobile_sdk/rr3;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    .line 1670
    :cond_4
    iget-object v5, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    iget-object v8, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iget-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v9, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    check-cast v9, Lads_mobile_sdk/r14;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move/from16 v16, v13

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    goto/16 :goto_4

    .line 1671
    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1672
    iget-object v2, v1, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1674
    const-string v5, "key"

    const-string v15, "gads:webview_prerender_resources_enabled"

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v8, Lads_mobile_sdk/yr;->b:Lads_mobile_sdk/ir;

    invoke-virtual {v2, v15, v5, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1691
    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1694
    :cond_6
    iget-object v2, v1, Lads_mobile_sdk/r14;->f:Lads_mobile_sdk/g83;

    sget-object v5, Lads_mobile_sdk/s11;->Y:Lads_mobile_sdk/s11;

    .line 2025
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 2026
    new-instance v15, Lads_mobile_sdk/ks3;

    .line 2027
    new-instance v9, Lads_mobile_sdk/n03;

    invoke-direct {v9}, Lads_mobile_sdk/n03;-><init>()V

    .line 2028
    new-instance v10, Lads_mobile_sdk/tn1;

    invoke-direct {v10}, Lads_mobile_sdk/tn1;-><init>()V

    move/from16 v16, v13

    .line 2029
    new-instance v13, Lads_mobile_sdk/m33;

    invoke-direct {v13}, Lads_mobile_sdk/m33;-><init>()V

    .line 2030
    new-instance v12, Lads_mobile_sdk/zb;

    invoke-direct {v12}, Lads_mobile_sdk/zb;-><init>()V

    .line 2031
    invoke-direct {v15, v9, v10, v13, v12}, Lads_mobile_sdk/ks3;-><init>(Lads_mobile_sdk/n03;Lads_mobile_sdk/tn1;Lads_mobile_sdk/m33;Lads_mobile_sdk/zb;)V

    .line 2032
    invoke-static {}, Lads_mobile_sdk/hs3;->b()Lads_mobile_sdk/gs3;

    move-result-object v9

    .line 2033
    iget-object v9, v9, Lads_mobile_sdk/gs3;->a:Lads_mobile_sdk/rr3;

    if-nez v9, :cond_11

    .line 2034
    invoke-static {v2, v5, v8, v15}, Lads_mobile_sdk/g83;->a(Lads_mobile_sdk/g83;Lads_mobile_sdk/s11;Ljava/util/List;Lads_mobile_sdk/ks3;)Lads_mobile_sdk/tu2;

    move-result-object v8

    .line 2035
    :try_start_4
    iget-object v2, v1, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    iput-object v1, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v8, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v8, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    iput v11, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/rp0;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/rp0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v2, v4, :cond_7

    goto/16 :goto_9

    :cond_7
    move-object v9, v1

    move-object v5, v8

    .line 2036
    :goto_1
    :try_start_5
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x6

    .line 2037
    invoke-static {v7, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_2

    .line 2039
    :cond_8
    sget-object v2, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v9, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v2}, Lads_mobile_sdk/az3;->b(Lads_mobile_sdk/rz3;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x6

    .line 2040
    invoke-static {v6, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 2041
    :goto_2
    invoke-static/range {v16 .. v16}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2377
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_9

    .line 2378
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    move/from16 v3, v16

    .line 2379
    invoke-static {v2, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2380
    :cond_9
    invoke-static {v5, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 2381
    :cond_a
    :try_start_6
    iget-object v2, v9, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    .line 2382
    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    .line 2383
    iget-object v6, v9, Lads_mobile_sdk/r14;->g:Lads_mobile_sdk/sz;

    .line 2384
    iget-object v6, v6, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 2385
    iput-object v8, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v14, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v14, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    const/4 v7, 0x2

    iput v7, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/yq1;

    invoke-virtual {v2, v0, v6, v3}, Lads_mobile_sdk/yq1;->a(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne v2, v4, :cond_b

    goto/16 :goto_9

    :cond_b
    move-object v4, v5

    .line 2386
    :goto_3
    invoke-static {v4, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_4
    move-object v4, v5

    move-object v3, v8

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v3, v8

    move-object v4, v3

    .line 2720
    :goto_5
    :try_start_7
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 2724
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_10

    .line 2726
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_c

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_c

    .line 2732
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 2738
    :cond_c
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_f

    .line 2739
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_e

    .line 2740
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_d

    throw v0

    .line 2741
    :cond_d
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2742
    :cond_e
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 2743
    :cond_f
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 2744
    :cond_10
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 2745
    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 2779
    :cond_11
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {v5, v2, v11}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v9

    .line 2780
    :try_start_9
    iget-object v2, v1, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    iput-object v1, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v0, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v9, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v9, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    const/4 v5, 0x3

    iput v5, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/rp0;

    invoke-virtual {v2, v3}, Lads_mobile_sdk/rp0;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-ne v2, v4, :cond_12

    goto :goto_9

    :cond_12
    move-object v10, v1

    move-object v5, v9

    .line 2781
    :goto_6
    :try_start_a
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x6

    .line 2782
    invoke-static {v7, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :goto_7
    const/4 v3, 0x0

    goto :goto_8

    .line 2784
    :cond_13
    sget-object v2, Lads_mobile_sdk/az3;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v2, v10, Lads_mobile_sdk/r14;->i:Lads_mobile_sdk/rz3;

    invoke-static {v2}, Lads_mobile_sdk/az3;->b(Lads_mobile_sdk/rz3;)Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x6

    .line 2785
    invoke-static {v6, v14, v2}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_7

    .line 2786
    :goto_8
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3159
    instance-of v2, v0, Lads_mobile_sdk/i01;

    if-eqz v2, :cond_14

    .line 3160
    move-object v2, v0

    check-cast v2, Lads_mobile_sdk/i01;

    .line 3161
    invoke-static {v2, v3}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 3162
    :cond_14
    invoke-static {v5, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 3163
    :cond_15
    :try_start_b
    iget-object v2, v10, Lads_mobile_sdk/r14;->l:Lads_mobile_sdk/cw2;

    .line 3164
    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/jb3;

    .line 3165
    iget-object v6, v10, Lads_mobile_sdk/r14;->g:Lads_mobile_sdk/sz;

    .line 3166
    iget-object v6, v6, Lads_mobile_sdk/sz;->d:Lads_mobile_sdk/rz;

    .line 3167
    iput-object v9, v3, Lads_mobile_sdk/m14;->a:Ljava/lang/Object;

    iput-object v5, v3, Lads_mobile_sdk/m14;->b:Ljava/lang/Object;

    iput-object v14, v3, Lads_mobile_sdk/m14;->c:Lads_mobile_sdk/rr3;

    iput-object v14, v3, Lads_mobile_sdk/m14;->d:Lads_mobile_sdk/rr3;

    const/4 v7, 0x4

    iput v7, v3, Lads_mobile_sdk/m14;->g:I

    check-cast v2, Lads_mobile_sdk/yq1;

    invoke-virtual {v2, v0, v6, v3}, Lads_mobile_sdk/yq1;->a(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-ne v2, v4, :cond_16

    :goto_9
    return-object v4

    :cond_16
    move-object v4, v5

    .line 3168
    :goto_a
    invoke-static {v4, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :goto_b
    move-object v4, v5

    move-object v3, v9

    goto :goto_c

    :catchall_7
    move-exception v0

    move-object v3, v9

    move-object v4, v3

    .line 3539
    :goto_c
    :try_start_c
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 3543
    instance-of v2, v0, Lads_mobile_sdk/v24;

    if-nez v2, :cond_1b

    .line 3545
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_17

    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_17

    .line 3551
    invoke-virtual {v3, v0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 3557
    :cond_17
    instance-of v2, v0, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez v2, :cond_1a

    .line 3558
    instance-of v2, v0, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_19

    .line 3559
    instance-of v2, v0, Lads_mobile_sdk/w01;

    if-eqz v2, :cond_18

    throw v0

    .line 3560
    :cond_18
    new-instance v2, Lads_mobile_sdk/b01;

    invoke-direct {v2, v0}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 3561
    :cond_19
    new-instance v2, Lads_mobile_sdk/wz0;

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw v2

    .line 3562
    :cond_1a
    new-instance v2, Lads_mobile_sdk/i21;

    check-cast v0, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {v2, v0}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw v2

    .line 3563
    :cond_1b
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 3564
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception v0

    invoke-static {v4, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final g()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/r14;->s:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()V
    .locals 6

    .line 111
    iget-object v0, p0, Lads_mobile_sdk/r14;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lads_mobile_sdk/f14;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lads_mobile_sdk/f14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    .line 112
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 113
    const-string v4, "<this>"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "block"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    .line 371
    new-instance v3, Lads_mobile_sdk/ws3;

    invoke-direct {v3, v4, v2}, Lads_mobile_sdk/ws3;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lads_mobile_sdk/r14;->e(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
