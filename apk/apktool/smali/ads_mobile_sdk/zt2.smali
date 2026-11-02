.class public final Lads_mobile_sdk/zt2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/yt2;

.field public c:Lads_mobile_sdk/au2;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/au2;

.field public final synthetic f:Lads_mobile_sdk/yt2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/au2;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zt2;->e:Lads_mobile_sdk/au2;

    iput-object p2, p0, Lads_mobile_sdk/zt2;->f:Lads_mobile_sdk/yt2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/zt2;

    iget-object v0, p0, Lads_mobile_sdk/zt2;->e:Lads_mobile_sdk/au2;

    iget-object v1, p0, Lads_mobile_sdk/zt2;->f:Lads_mobile_sdk/yt2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/zt2;-><init>(Lads_mobile_sdk/au2;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/zt2;

    iget-object v0, p0, Lads_mobile_sdk/zt2;->e:Lads_mobile_sdk/au2;

    iget-object v1, p0, Lads_mobile_sdk/zt2;->f:Lads_mobile_sdk/yt2;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/zt2;-><init>(Lads_mobile_sdk/au2;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/zt2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lads_mobile_sdk/zt2;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/zt2;->c:Lads_mobile_sdk/au2;

    iget-object v1, p0, Lads_mobile_sdk/zt2;->b:Lads_mobile_sdk/yt2;

    iget-object v4, p0, Lads_mobile_sdk/zt2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    iget-object p1, p0, Lads_mobile_sdk/zt2;->e:Lads_mobile_sdk/au2;

    .line 31
    iget-object v4, p1, Lads_mobile_sdk/au2;->b:Lkotlinx/coroutines/sync/Mutex;

    .line 32
    iget-object v1, p0, Lads_mobile_sdk/zt2;->f:Lads_mobile_sdk/yt2;

    .line 88
    iput-object v4, p0, Lads_mobile_sdk/zt2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/zt2;->b:Lads_mobile_sdk/yt2;

    iput-object p1, p0, Lads_mobile_sdk/zt2;->c:Lads_mobile_sdk/au2;

    iput v2, p0, Lads_mobile_sdk/zt2;->d:I

    invoke-interface {v4, v3, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 89
    :goto_0
    :try_start_0
    iget-object p1, v1, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 90
    iget-object p1, p1, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 91
    invoke-interface {p1}, Lads_mobile_sdk/zh1;->d()Lads_mobile_sdk/st2;

    move-result-object p1

    .line 95
    sget-object v5, Lads_mobile_sdk/st2;->d:Lads_mobile_sdk/st2;

    if-ne p1, v5, :cond_6

    .line 96
    iget-object p1, v0, Lads_mobile_sdk/au2;->a:Ljava/util/LinkedList;

    .line 97
    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    const-string v5, "listIterator(...)"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 99
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lads_mobile_sdk/yt2;

    .line 100
    iget-object v6, v5, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 101
    iget-object v6, v6, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 102
    invoke-interface {v6}, Lads_mobile_sdk/zh1;->d()Lads_mobile_sdk/st2;

    move-result-object v6

    sget-object v7, Lads_mobile_sdk/st2;->d:Lads_mobile_sdk/st2;

    if-eq v6, v7, :cond_4

    goto :goto_1

    .line 103
    :cond_4
    iget-object v6, v5, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 104
    iget-object v6, v6, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 105
    invoke-interface {v6}, Lads_mobile_sdk/zh1;->e()D

    move-result-wide v6

    .line 106
    iget-object v8, v1, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    .line 107
    iget-object v8, v8, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 108
    invoke-interface {v8}, Lads_mobile_sdk/zh1;->e()D

    move-result-wide v8

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_5

    if-nez v6, :cond_3

    .line 109
    iget-wide v6, v5, Lads_mobile_sdk/yt2;->b:J

    iget-wide v8, v1, Lads_mobile_sdk/yt2;->b:J

    .line 110
    invoke-static {v6, v7, v8, v9}, Lkotlin/time/Duration;->compareTo-LRDsOJo(JJ)I

    move-result v6

    if-lez v6, :cond_3

    .line 112
    :cond_5
    invoke-interface {p1, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    move-object v1, v5

    goto :goto_1

    .line 113
    :cond_6
    iget-object p1, v0, Lads_mobile_sdk/au2;->a:Ljava/util/LinkedList;

    .line 114
    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 134
    invoke-interface {v4, v3}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
