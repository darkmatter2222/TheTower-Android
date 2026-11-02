.class public final Lads_mobile_sdk/bx3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Lkotlinx/coroutines/sync/Mutex;

.field public b:Lads_mobile_sdk/dx3;

.field public c:Ljava/lang/String;

.field public d:I

.field public final synthetic e:Lads_mobile_sdk/dx3;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/dx3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/bx3;->e:Lads_mobile_sdk/dx3;

    iput-object p2, p0, Lads_mobile_sdk/bx3;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/bx3;

    iget-object v0, p0, Lads_mobile_sdk/bx3;->e:Lads_mobile_sdk/dx3;

    iget-object v1, p0, Lads_mobile_sdk/bx3;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/bx3;-><init>(Lads_mobile_sdk/dx3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/bx3;

    iget-object v0, p0, Lads_mobile_sdk/bx3;->e:Lads_mobile_sdk/dx3;

    iget-object v1, p0, Lads_mobile_sdk/bx3;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/bx3;-><init>(Lads_mobile_sdk/dx3;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/bx3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 136
    iget v1, p0, Lads_mobile_sdk/bx3;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/bx3;->c:Ljava/lang/String;

    iget-object v1, p0, Lads_mobile_sdk/bx3;->b:Lads_mobile_sdk/dx3;

    iget-object v2, p0, Lads_mobile_sdk/bx3;->a:Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 137
    iget-object p1, p0, Lads_mobile_sdk/bx3;->e:Lads_mobile_sdk/dx3;

    .line 138
    iget-object p1, p1, Lads_mobile_sdk/dx3;->c:Lads_mobile_sdk/jw0;

    .line 139
    iget-object v1, p0, Lads_mobile_sdk/bx3;->f:Ljava/lang/String;

    const-string v5, "$newUserAgent"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput v3, p0, Lads_mobile_sdk/bx3;->d:I

    .line 140
    iget-object p1, p1, Lads_mobile_sdk/jw0;->a:Lads_mobile_sdk/ks1;

    .line 141
    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    new-instance v3, Lads_mobile_sdk/ew0;

    invoke-direct {v3, v1, v4}, Lads_mobile_sdk/ew0;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v3, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-ne p1, v0, :cond_4

    goto :goto_2

    .line 142
    :cond_4
    :goto_1
    iget-object v1, p0, Lads_mobile_sdk/bx3;->e:Lads_mobile_sdk/dx3;

    .line 143
    iget-object p1, v1, Lads_mobile_sdk/dx3;->h:Lkotlinx/coroutines/sync/Mutex;

    .line 144
    iget-object v3, p0, Lads_mobile_sdk/bx3;->f:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lads_mobile_sdk/bx3;->a:Lkotlinx/coroutines/sync/Mutex;

    iput-object v1, p0, Lads_mobile_sdk/bx3;->b:Lads_mobile_sdk/dx3;

    iput-object v3, p0, Lads_mobile_sdk/bx3;->c:Ljava/lang/String;

    iput v2, p0, Lads_mobile_sdk/bx3;->d:I

    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    move-object v2, p1

    move-object v0, v3

    .line 186
    :goto_3
    :try_start_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget p1, Lads_mobile_sdk/dx3;->k:I

    .line 187
    invoke-virtual {v1, v0}, Lads_mobile_sdk/dx3;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 188
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 234
    invoke-interface {v2, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1
.end method
