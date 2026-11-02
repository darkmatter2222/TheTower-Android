.class public final Lads_mobile_sdk/jd;
.super Lads_mobile_sdk/kq0;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/ld;
.implements Lads_mobile_sdk/fy3;


# instance fields
.field public final d:Lkotlinx/coroutines/sync/Mutex;

.field public e:Lads_mobile_sdk/ey3;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Lads_mobile_sdk/ub3;)V
    .locals 1

    .line 1
    const-string v0, "uiScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialEventQueue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lads_mobile_sdk/kq0;-><init>(Lkotlinx/coroutines/CoroutineScope;Ljava/util/Map;Lads_mobile_sdk/ub3;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 24
    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/jd;->d:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method

.method public static synthetic a(Lads_mobile_sdk/jd;Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    const-string v0, "onViewabilityEvent ("

    .line 2
    instance-of v1, p2, Lads_mobile_sdk/gd;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lads_mobile_sdk/gd;

    iget v2, v1, Lads_mobile_sdk/gd;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/gd;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/gd;

    invoke-direct {v1, p0, p2}, Lads_mobile_sdk/gd;-><init>(Lads_mobile_sdk/jd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v1, Lads_mobile_sdk/gd;->d:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 32
    iget v3, v1, Lads_mobile_sdk/gd;->f:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p0, v1, Lads_mobile_sdk/gd;->c:Lkotlinx/coroutines/sync/Mutex;

    iget-object p1, v1, Lads_mobile_sdk/gd;->b:Lads_mobile_sdk/ey3;

    iget-object v1, v1, Lads_mobile_sdk/gd;->a:Lads_mobile_sdk/jd;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, v1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object p2, p0, Lads_mobile_sdk/jd;->d:Lkotlinx/coroutines/sync/Mutex;

    .line 50
    iput-object p0, v1, Lads_mobile_sdk/gd;->a:Lads_mobile_sdk/jd;

    iput-object p1, v1, Lads_mobile_sdk/gd;->b:Lads_mobile_sdk/ey3;

    iput-object p2, v1, Lads_mobile_sdk/gd;->c:Lkotlinx/coroutines/sync/Mutex;

    iput v4, v1, Lads_mobile_sdk/gd;->f:I

    invoke-interface {p2, v5, v1}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    move-object v11, p1

    .line 51
    :try_start_0
    iget-object p1, p0, Lads_mobile_sdk/jd;->e:Lads_mobile_sdk/ey3;

    if-eqz p1, :cond_4

    invoke-static {v11, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 52
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    .line 72
    :cond_4
    :try_start_1
    iput-object v11, p0, Lads_mobile_sdk/jd;->e:Lads_mobile_sdk/ey3;

    .line 73
    iget-boolean p1, v11, Lads_mobile_sdk/ey3;->b:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    new-instance p1, Lkotlin/Pair;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lads_mobile_sdk/kq0;->f()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 101
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 108
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 109
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lads_mobile_sdk/mq0;

    .line 110
    invoke-virtual {p0}, Lads_mobile_sdk/kq0;->i()Lads_mobile_sdk/ub3;

    move-result-object v1

    new-instance v6, Lads_mobile_sdk/hd;

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lads_mobile_sdk/hd;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lads_mobile_sdk/ey3;)V

    invoke-virtual {v1, v6}, Lads_mobile_sdk/ub3;->a(Lkotlin/jvm/functions/Function1;)V

    goto :goto_2

    .line 117
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lads_mobile_sdk/mq0;

    .line 118
    invoke-virtual {p0}, Lads_mobile_sdk/kq0;->g()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance v6, Lads_mobile_sdk/id;

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v11}, Lads_mobile_sdk/id;-><init>(Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/mq0;Lkotlin/coroutines/Continuation;Lads_mobile_sdk/ey3;)V

    invoke-static {v0, v6}, Lads_mobile_sdk/xs3;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/Job;

    goto :goto_3

    .line 119
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 133
    invoke-interface {p2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/jd;->a(Lads_mobile_sdk/jd;Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lads_mobile_sdk/jd;->a(Lads_mobile_sdk/jd;Lads_mobile_sdk/ey3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
