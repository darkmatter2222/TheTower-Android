.class public final Lads_mobile_sdk/lt2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lads_mobile_sdk/pt2;

.field public c:Lads_mobile_sdk/j53;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/pt2;

.field public final synthetic f:Lads_mobile_sdk/j53;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/lt2;->e:Lads_mobile_sdk/pt2;

    iput-object p2, p0, Lads_mobile_sdk/lt2;->f:Lads_mobile_sdk/j53;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/lt2;

    iget-object v0, p0, Lads_mobile_sdk/lt2;->e:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/lt2;->f:Lads_mobile_sdk/j53;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/lt2;-><init>(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/lt2;

    iget-object v0, p0, Lads_mobile_sdk/lt2;->e:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/lt2;->f:Lads_mobile_sdk/j53;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/lt2;-><init>(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/lt2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 313
    iget v1, p0, Lads_mobile_sdk/lt2;->d:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/lt2;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/lt2;->c:Lads_mobile_sdk/j53;

    iget-object v4, p0, Lads_mobile_sdk/lt2;->b:Lads_mobile_sdk/pt2;

    iget-object v6, p0, Lads_mobile_sdk/lt2;->a:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 314
    iget-object p1, p0, Lads_mobile_sdk/lt2;->e:Lads_mobile_sdk/pt2;

    .line 315
    iget-object p1, p1, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    .line 316
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->u0()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 317
    iget-object p1, p0, Lads_mobile_sdk/lt2;->e:Lads_mobile_sdk/pt2;

    .line 318
    iget-object p1, p1, Lads_mobile_sdk/pt2;->p:Lads_mobile_sdk/k6;

    .line 319
    iget-object v1, p0, Lads_mobile_sdk/lt2;->f:Lads_mobile_sdk/j53;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 320
    const-string v6, "requestType"

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    sget-object v7, Lads_mobile_sdk/wq2;->b:Lads_mobile_sdk/vq2;

    .line 486
    sget-object v7, Lads_mobile_sdk/wq2;->c:Ljava/lang/ThreadLocal;

    .line 487
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lads_mobile_sdk/uq2;

    if-nez v7, :cond_4

    goto :goto_0

    .line 488
    :cond_4
    iget-object v8, v7, Lads_mobile_sdk/uq2;->b:Lads_mobile_sdk/j53;

    if-ne v8, v1, :cond_5

    .line 489
    iget-object v7, v7, Lads_mobile_sdk/uq2;->a:Ljava/lang/String;

    .line 490
    const-string v8, "preloadId"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1, v1, v7}, Lads_mobile_sdk/k6;->b(Lads_mobile_sdk/j53;Ljava/lang/String;)V

    .line 492
    :cond_5
    :goto_0
    iget-object p1, p0, Lads_mobile_sdk/lt2;->e:Lads_mobile_sdk/pt2;

    .line 493
    iget-object v6, p1, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 494
    iget-object v1, p0, Lads_mobile_sdk/lt2;->f:Lads_mobile_sdk/j53;

    .line 1213
    iput-object v6, p0, Lads_mobile_sdk/lt2;->a:Ljava/lang/Object;

    iput-object p1, p0, Lads_mobile_sdk/lt2;->b:Lads_mobile_sdk/pt2;

    iput-object v1, p0, Lads_mobile_sdk/lt2;->c:Lads_mobile_sdk/j53;

    iput v4, p0, Lads_mobile_sdk/lt2;->d:I

    invoke-interface {v6, v5, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, p1

    .line 1214
    :goto_1
    :try_start_0
    invoke-virtual {v4, v1}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1215
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1216
    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_8
    if-eqz p1, :cond_9

    .line 1217
    invoke-interface {p1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    :cond_9
    invoke-interface {v6, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 1939
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h6;

    .line 1940
    iput-object v1, p0, Lads_mobile_sdk/lt2;->a:Ljava/lang/Object;

    iput-object v5, p0, Lads_mobile_sdk/lt2;->b:Lads_mobile_sdk/pt2;

    iput-object v5, p0, Lads_mobile_sdk/lt2;->c:Lads_mobile_sdk/j53;

    iput v3, p0, Lads_mobile_sdk/lt2;->d:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/h6;->z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a

    goto :goto_3

    .line 1941
    :cond_b
    iget-object p1, p0, Lads_mobile_sdk/lt2;->e:Lads_mobile_sdk/pt2;

    iput-object v5, p0, Lads_mobile_sdk/lt2;->a:Ljava/lang/Object;

    iput-object v5, p0, Lads_mobile_sdk/lt2;->b:Lads_mobile_sdk/pt2;

    iput-object v5, p0, Lads_mobile_sdk/lt2;->c:Lads_mobile_sdk/j53;

    iput v2, p0, Lads_mobile_sdk/lt2;->d:I

    .line 1942
    invoke-virtual {p1, p0}, Lads_mobile_sdk/pt2;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_c

    :goto_3
    return-object v0

    .line 1943
    :cond_c
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 2658
    invoke-interface {v6, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
