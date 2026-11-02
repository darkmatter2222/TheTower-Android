.class public final Lads_mobile_sdk/mt2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lads_mobile_sdk/pt2;

.field public c:Lads_mobile_sdk/j53;

.field public d:Ljava/lang/String;

.field public e:I

.field public final synthetic f:Lads_mobile_sdk/pt2;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lads_mobile_sdk/j53;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/j53;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 2
    iput-object p2, p0, Lads_mobile_sdk/mt2;->f:Lads_mobile_sdk/pt2;

    iput-object p3, p0, Lads_mobile_sdk/mt2;->g:Ljava/lang/String;

    iput-object p1, p0, Lads_mobile_sdk/mt2;->h:Lads_mobile_sdk/j53;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/mt2;

    iget-object v0, p0, Lads_mobile_sdk/mt2;->f:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/mt2;->g:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/mt2;->h:Lads_mobile_sdk/j53;

    invoke-direct {p1, v2, v0, v1, p2}, Lads_mobile_sdk/mt2;-><init>(Lads_mobile_sdk/j53;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/mt2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/mt2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/mt2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 298
    iget v1, p0, Lads_mobile_sdk/mt2;->e:I

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
    iget-object v1, p0, Lads_mobile_sdk/mt2;->a:Ljava/lang/Object;

    check-cast v1, Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/mt2;->d:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/mt2;->c:Lads_mobile_sdk/j53;

    iget-object v7, p0, Lads_mobile_sdk/mt2;->b:Lads_mobile_sdk/pt2;

    iget-object v8, p0, Lads_mobile_sdk/mt2;->a:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 299
    iget-object p1, p0, Lads_mobile_sdk/mt2;->f:Lads_mobile_sdk/pt2;

    .line 300
    iget-object p1, p1, Lads_mobile_sdk/pt2;->g:Lads_mobile_sdk/ex0;

    .line 301
    invoke-virtual {p1}, Lads_mobile_sdk/ex0;->u0()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 302
    iget-object p1, p0, Lads_mobile_sdk/mt2;->f:Lads_mobile_sdk/pt2;

    .line 303
    iget-object p1, p1, Lads_mobile_sdk/pt2;->p:Lads_mobile_sdk/k6;

    .line 304
    iget-object v1, p0, Lads_mobile_sdk/mt2;->g:Ljava/lang/String;

    iget-object v6, p0, Lads_mobile_sdk/mt2;->h:Lads_mobile_sdk/j53;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "preloadId"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "requestType"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1, v6, v1}, Lads_mobile_sdk/k6;->b(Lads_mobile_sdk/j53;Ljava/lang/String;)V

    .line 306
    :cond_4
    iget-object v7, p0, Lads_mobile_sdk/mt2;->f:Lads_mobile_sdk/pt2;

    .line 307
    iget-object v8, v7, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 308
    iget-object v6, p0, Lads_mobile_sdk/mt2;->h:Lads_mobile_sdk/j53;

    iget-object v1, p0, Lads_mobile_sdk/mt2;->g:Ljava/lang/String;

    .line 1041
    iput-object v8, p0, Lads_mobile_sdk/mt2;->a:Ljava/lang/Object;

    iput-object v7, p0, Lads_mobile_sdk/mt2;->b:Lads_mobile_sdk/pt2;

    iput-object v6, p0, Lads_mobile_sdk/mt2;->c:Lads_mobile_sdk/j53;

    iput-object v1, p0, Lads_mobile_sdk/mt2;->d:Ljava/lang/String;

    iput v4, p0, Lads_mobile_sdk/mt2;->e:I

    invoke-interface {v8, v5, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_3

    .line 1042
    :cond_5
    :goto_0
    :try_start_0
    invoke-virtual {v7, v6}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1043
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_6
    move-object p1, v5

    .line 1780
    :goto_1
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 1781
    iget-object v1, p0, Lads_mobile_sdk/mt2;->f:Lads_mobile_sdk/pt2;

    .line 1782
    iput-object v1, p0, Lads_mobile_sdk/mt2;->a:Ljava/lang/Object;

    iput-object v5, p0, Lads_mobile_sdk/mt2;->b:Lads_mobile_sdk/pt2;

    iput-object v5, p0, Lads_mobile_sdk/mt2;->c:Lads_mobile_sdk/j53;

    iput-object v5, p0, Lads_mobile_sdk/mt2;->d:Ljava/lang/String;

    iput v3, p0, Lads_mobile_sdk/mt2;->e:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/h6;->z(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_3

    .line 1783
    :cond_7
    :goto_2
    iput-object v5, p0, Lads_mobile_sdk/mt2;->a:Ljava/lang/Object;

    iput v2, p0, Lads_mobile_sdk/mt2;->e:I

    .line 1784
    invoke-virtual {v1, p0}, Lads_mobile_sdk/pt2;->x(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    :goto_3
    return-object v0

    :cond_8
    const/4 v4, 0x0

    .line 1785
    :cond_9
    :goto_4
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 2516
    invoke-interface {v8, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
