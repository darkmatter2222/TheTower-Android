.class public final Lads_mobile_sdk/as2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/pt2;

.field public c:Ljava/lang/String;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/pt2;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/as2;->e:Lads_mobile_sdk/pt2;

    iput-object p2, p0, Lads_mobile_sdk/as2;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/as2;

    iget-object v0, p0, Lads_mobile_sdk/as2;->e:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/as2;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/as2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/as2;

    iget-object v0, p0, Lads_mobile_sdk/as2;->e:Lads_mobile_sdk/pt2;

    iget-object v1, p0, Lads_mobile_sdk/as2;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/as2;-><init>(Lads_mobile_sdk/pt2;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/as2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 415
    iget v1, p0, Lads_mobile_sdk/as2;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/as2;->c:Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/as2;->b:Lads_mobile_sdk/pt2;

    iget-object v5, p0, Lads_mobile_sdk/as2;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 417
    iget-object p1, p0, Lads_mobile_sdk/as2;->e:Lads_mobile_sdk/pt2;

    .line 418
    iget-object v5, p1, Lads_mobile_sdk/pt2;->q:Lkotlinx/coroutines/sync/Mutex;

    .line 419
    iget-object v1, p0, Lads_mobile_sdk/as2;->f:Ljava/lang/String;

    .line 1037
    iput-object v5, p0, Lads_mobile_sdk/as2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lads_mobile_sdk/as2;->b:Lads_mobile_sdk/pt2;

    iput-object v1, p0, Lads_mobile_sdk/as2;->c:Ljava/lang/String;

    iput v3, p0, Lads_mobile_sdk/as2;->d:I

    invoke-interface {v5, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, p1

    .line 1038
    :goto_0
    :try_start_0
    iget-object p1, v3, Lads_mobile_sdk/pt2;->E:Ljava/util/LinkedHashMap;

    .line 1039
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/h6;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1661
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 1662
    iput-object v4, p0, Lads_mobile_sdk/as2;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v4, p0, Lads_mobile_sdk/as2;->b:Lads_mobile_sdk/pt2;

    iput-object v4, p0, Lads_mobile_sdk/as2;->c:Ljava/lang/String;

    iput v2, p0, Lads_mobile_sdk/as2;->d:I

    invoke-virtual {p1, p0}, Lads_mobile_sdk/h6;->w(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 1663
    :cond_4
    :goto_2
    check-cast p1, Lads_mobile_sdk/yt2;

    if-eqz p1, :cond_5

    .line 1664
    iget-object p1, p1, Lads_mobile_sdk/yt2;->a:Lads_mobile_sdk/xt2;

    if-eqz p1, :cond_5

    .line 1665
    iget-object p1, p1, Lads_mobile_sdk/xt2;->a:Lads_mobile_sdk/zh1;

    .line 1666
    move-object v4, p1

    check-cast v4, Lads_mobile_sdk/un1;

    .line 1667
    :cond_5
    iget-object p1, p0, Lads_mobile_sdk/as2;->e:Lads_mobile_sdk/pt2;

    iget-object v0, p0, Lads_mobile_sdk/as2;->f:Ljava/lang/String;

    sget-object v1, Lads_mobile_sdk/j53;->k:Lads_mobile_sdk/j53;

    invoke-static {p1, v4, v0, v1}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;Lads_mobile_sdk/as;Ljava/lang/String;Lads_mobile_sdk/j53;)Lads_mobile_sdk/zh1;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 2285
    invoke-interface {v5, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
