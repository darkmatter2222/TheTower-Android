.class public final Lads_mobile_sdk/lr2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

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
    iput-object p2, p0, Lads_mobile_sdk/lr2;->f:Lads_mobile_sdk/pt2;

    iput-object p3, p0, Lads_mobile_sdk/lr2;->g:Ljava/lang/String;

    iput-object p1, p0, Lads_mobile_sdk/lr2;->h:Lads_mobile_sdk/j53;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance p1, Lads_mobile_sdk/lr2;

    iget-object v0, p0, Lads_mobile_sdk/lr2;->f:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/lr2;->g:Ljava/lang/String;

    iget-object v2, p0, Lads_mobile_sdk/lr2;->h:Lads_mobile_sdk/j53;

    invoke-direct {p1, v2, v0, v1, p2}, Lads_mobile_sdk/lr2;-><init>(Lads_mobile_sdk/j53;Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/lr2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/lr2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/lr2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 339
    iget v1, p0, Lads_mobile_sdk/lr2;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/lr2;->d:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/lr2;->c:Lads_mobile_sdk/j53;

    iget-object v5, p0, Lads_mobile_sdk/lr2;->b:Lads_mobile_sdk/pt2;

    iget-object v6, p0, Lads_mobile_sdk/lr2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 340
    iget-object p1, p0, Lads_mobile_sdk/lr2;->f:Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lads_mobile_sdk/pt2;->d(Lads_mobile_sdk/pt2;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v6

    iget-object v5, p0, Lads_mobile_sdk/lr2;->f:Lads_mobile_sdk/pt2;

    iget-object p1, p0, Lads_mobile_sdk/lr2;->h:Lads_mobile_sdk/j53;

    iget-object v1, p0, Lads_mobile_sdk/lr2;->g:Ljava/lang/String;

    .line 1036
    iput-object v6, p0, Lads_mobile_sdk/lr2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v5, p0, Lads_mobile_sdk/lr2;->b:Lads_mobile_sdk/pt2;

    iput-object p1, p0, Lads_mobile_sdk/lr2;->c:Lads_mobile_sdk/j53;

    iput-object v1, p0, Lads_mobile_sdk/lr2;->d:Ljava/lang/String;

    iput v3, p0, Lads_mobile_sdk/lr2;->e:I

    invoke-interface {v6, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, p1

    .line 1037
    :goto_0
    :try_start_0
    invoke-static {v5, v3}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;Lads_mobile_sdk/j53;)Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_4
    move-object p1, v4

    .line 1736
    :goto_1
    invoke-interface {v6, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    .line 1737
    iput-object v4, p0, Lads_mobile_sdk/lr2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v4, p0, Lads_mobile_sdk/lr2;->b:Lads_mobile_sdk/pt2;

    iput-object v4, p0, Lads_mobile_sdk/lr2;->c:Lads_mobile_sdk/j53;

    iput-object v4, p0, Lads_mobile_sdk/lr2;->d:Ljava/lang/String;

    iput v2, p0, Lads_mobile_sdk/lr2;->e:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/h6;->u(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    return-object p1

    .line 1739
    :cond_6
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    iget-object p1, p0, Lads_mobile_sdk/lr2;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No preload found for preload ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1740
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 2434
    invoke-interface {v6, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
