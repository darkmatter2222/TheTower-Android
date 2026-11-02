.class public final Lads_mobile_sdk/xb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lkotlinx/coroutines/sync/Mutex;

.field public c:Lads_mobile_sdk/qb0;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;)V
    .locals 2

    .line 1
    const-string v0, "dataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static a(Lads_mobile_sdk/xb0;Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 520
    instance-of v0, p2, Lads_mobile_sdk/vb0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/vb0;

    iget v1, v0, Lads_mobile_sdk/vb0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/vb0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/vb0;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/vb0;-><init>(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/vb0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 558
    iget v2, v0, Lads_mobile_sdk/vb0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/vb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v0, Lads_mobile_sdk/vb0;->b:Lads_mobile_sdk/qb0;

    iget-object v0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 559
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 560
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 562
    :try_start_2
    iget-object p2, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p2}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/wb0;

    invoke-direct {v2, p1, v5}, Lads_mobile_sdk/wb0;-><init>(Lads_mobile_sdk/qb0;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    iput v4, v0, Lads_mobile_sdk/vb0;->f:I

    invoke-interface {p2, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    .line 563
    :cond_4
    :goto_1
    move-object p1, p2

    check-cast p1, Lads_mobile_sdk/qb0;

    .line 566
    iget-object p2, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 627
    iput-object p0, v0, Lads_mobile_sdk/vb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/vb0;->b:Lads_mobile_sdk/qb0;

    iput-object p2, v0, Lads_mobile_sdk/vb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/vb0;->f:I

    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, p0

    move-object p0, p2

    .line 628
    :goto_3
    :try_start_3
    iput-object p1, v0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 693
    :try_start_4
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 694
    invoke-interface {p0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 695
    const-string p1, "exception"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 696
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object p1

    .line 699
    invoke-virtual {p1}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lads_mobile_sdk/uj2;->m:Z

    .line 700
    invoke-virtual {p1, p0}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 701
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic a(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p1, Lads_mobile_sdk/sb0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/sb0;

    iget v1, v0, Lads_mobile_sdk/sb0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/sb0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/sb0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/sb0;-><init>(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/sb0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 29
    iget v2, v0, Lads_mobile_sdk/sb0;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lads_mobile_sdk/sb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v1, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/qb0;

    iget-object v0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, p0

    move-object p0, v2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 81
    iput-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    iput v5, v0, Lads_mobile_sdk/sb0;->f:I

    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    goto :goto_3

    .line 82
    :cond_5
    :goto_1
    :try_start_0
    iget-object v2, p0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz v2, :cond_6

    return-object v2

    .line 138
    :cond_6
    iget-object p1, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    iput-object v6, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/sb0;->f:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_3

    .line 139
    :cond_7
    :goto_2
    check-cast p1, Lads_mobile_sdk/qb0;

    if-nez p1, :cond_8

    invoke-static {}, Lads_mobile_sdk/qb0;->w()Lads_mobile_sdk/qb0;

    move-result-object p1

    .line 140
    :cond_8
    iget-object v2, p0, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 198
    iput-object p0, v0, Lads_mobile_sdk/sb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/sb0;->b:Ljava/lang/Object;

    iput-object v2, v0, Lads_mobile_sdk/sb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/sb0;->f:I

    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_9

    :goto_3
    return-object v1

    :cond_9
    move-object v0, p0

    move-object v1, p1

    move-object p0, v2

    .line 199
    :goto_4
    :try_start_1
    iput-object v1, v0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 262
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v1

    :catchall_0
    move-exception p1

    .line 323
    invoke-interface {p0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p0

    .line 324
    invoke-interface {p1, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 325
    instance-of v0, p1, Lads_mobile_sdk/tb0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/tb0;

    iget v1, v0, Lads_mobile_sdk/tb0;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/tb0;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/tb0;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/tb0;-><init>(Lads_mobile_sdk/xb0;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lads_mobile_sdk/tb0;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 372
    iget v2, v0, Lads_mobile_sdk/tb0;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lads_mobile_sdk/tb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lads_mobile_sdk/tb0;->b:Lads_mobile_sdk/qb0;

    iget-object v0, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 373
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 374
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 376
    :try_start_2
    iget-object p1, p0, Lads_mobile_sdk/xb0;->a:Lads_mobile_sdk/ks1;

    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/ub0;

    invoke-direct {v2, v5}, Lads_mobile_sdk/ub0;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    iput v4, v0, Lads_mobile_sdk/tb0;->f:I

    invoke-interface {p1, v2, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 377
    :goto_1
    check-cast p1, Lads_mobile_sdk/qb0;

    .line 380
    iget-object v4, v2, Lads_mobile_sdk/xb0;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 443
    iput-object v2, v0, Lads_mobile_sdk/tb0;->a:Lads_mobile_sdk/xb0;

    iput-object p1, v0, Lads_mobile_sdk/tb0;->b:Lads_mobile_sdk/qb0;

    iput-object v4, v0, Lads_mobile_sdk/tb0;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v3, v0, Lads_mobile_sdk/tb0;->f:I

    invoke-interface {v4, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, v2

    move-object v1, v4

    move-object v2, p1

    .line 444
    :goto_3
    :try_start_3
    iput-object v2, v0, Lads_mobile_sdk/xb0;->c:Lads_mobile_sdk/qb0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    :try_start_4
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 512
    invoke-interface {v1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 513
    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    invoke-static {}, Lads_mobile_sdk/hs3;->a()Lads_mobile_sdk/rr3;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lads_mobile_sdk/rr3;->e()Lads_mobile_sdk/uj2;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lads_mobile_sdk/uj2;->m:Z

    .line 518
    invoke-virtual {v0, p1}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 519
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
