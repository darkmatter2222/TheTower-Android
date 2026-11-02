.class public final Lads_mobile_sdk/e6;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Lkotlinx/coroutines/sync/Mutex;

.field public d:Lads_mobile_sdk/h6;

.field public e:I

.field public final synthetic f:Lads_mobile_sdk/h6;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/e6;->f:Lads_mobile_sdk/h6;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lads_mobile_sdk/e6;

    iget-object v0, p0, Lads_mobile_sdk/e6;->f:Lads_mobile_sdk/h6;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/e6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/e6;

    iget-object v0, p0, Lads_mobile_sdk/e6;->f:Lads_mobile_sdk/h6;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/e6;-><init>(Lads_mobile_sdk/h6;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/e6;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 456
    iget v1, p0, Lads_mobile_sdk/e6;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/e6;->d:Lads_mobile_sdk/h6;

    iget-object v3, p0, Lads_mobile_sdk/e6;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, p0, Lads_mobile_sdk/e6;->b:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, p0, Lads_mobile_sdk/e6;->a:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lads_mobile_sdk/e6;->b:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/h6;

    iget-object v7, p0, Lads_mobile_sdk/e6;->a:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 457
    iget-object v1, p0, Lads_mobile_sdk/e6;->f:Lads_mobile_sdk/h6;

    .line 458
    iget-object v7, v1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 459
    iput-object v7, p0, Lads_mobile_sdk/e6;->a:Ljava/lang/Object;

    iput-object v1, p0, Lads_mobile_sdk/e6;->b:Ljava/lang/Object;

    iput v5, p0, Lads_mobile_sdk/e6;->e:I

    invoke-interface {v7, v6, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_4

    .line 460
    :cond_5
    :goto_0
    :try_start_0
    iget-wide v8, v1, Lads_mobile_sdk/h6;->x:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 461
    invoke-interface {v7, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 462
    iput-object v6, p0, Lads_mobile_sdk/e6;->a:Ljava/lang/Object;

    iput-object v6, p0, Lads_mobile_sdk/e6;->b:Ljava/lang/Object;

    iput v4, p0, Lads_mobile_sdk/e6;->e:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    goto :goto_4

    .line 464
    :cond_6
    :goto_1
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 465
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 466
    iget-object v1, p0, Lads_mobile_sdk/e6;->f:Lads_mobile_sdk/h6;

    .line 467
    iget-object p1, v1, Lads_mobile_sdk/h6;->u:Lkotlinx/coroutines/sync/Mutex;

    .line 468
    iput-object v7, p0, Lads_mobile_sdk/e6;->a:Ljava/lang/Object;

    iput-object v4, p0, Lads_mobile_sdk/e6;->b:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/e6;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/e6;->d:Lads_mobile_sdk/h6;

    iput v3, p0, Lads_mobile_sdk/e6;->e:I

    invoke-interface {p1, v6, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, p1

    .line 469
    :goto_2
    :try_start_1
    iget-object p1, v1, Lads_mobile_sdk/h6;->G:Lkotlinx/coroutines/CompletableJob;

    .line 470
    invoke-interface {p1}, Lkotlinx/coroutines/CompletableJob;->complete()Z

    .line 471
    iget-object p1, v1, Lads_mobile_sdk/h6;->C:Ljava/util/Queue;

    .line 472
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iput p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 473
    iget-object p1, v1, Lads_mobile_sdk/h6;->v:Lads_mobile_sdk/w4;

    .line 474
    sget-object v1, Lads_mobile_sdk/w4;->c:Lads_mobile_sdk/w4;

    if-ne p1, v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 475
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 679
    iget-object p1, p0, Lads_mobile_sdk/e6;->f:Lads_mobile_sdk/h6;

    iget v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-boolean v3, v4, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-object v6, p0, Lads_mobile_sdk/e6;->a:Ljava/lang/Object;

    iput-object v6, p0, Lads_mobile_sdk/e6;->b:Ljava/lang/Object;

    iput-object v6, p0, Lads_mobile_sdk/e6;->c:Lkotlinx/coroutines/sync/Mutex;

    iput-object v6, p0, Lads_mobile_sdk/e6;->d:Lads_mobile_sdk/h6;

    iput v2, p0, Lads_mobile_sdk/e6;->e:I

    .line 680
    invoke-virtual {p1, v1, v3}, Lads_mobile_sdk/h6;->a(IZ)Lkotlin/Unit;

    move-result-object p1

    if-ne p1, v0, :cond_9

    :goto_4
    return-object v0

    .line 681
    :cond_9
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 882
    invoke-interface {v3, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 883
    invoke-interface {v7, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
