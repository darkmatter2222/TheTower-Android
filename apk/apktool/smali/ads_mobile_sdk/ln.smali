.class public final Lads_mobile_sdk/ln;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/pn;

.field public final synthetic c:Lads_mobile_sdk/jm;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/pn;Lads_mobile_sdk/jm;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ln;->b:Lads_mobile_sdk/pn;

    iput-object p2, p0, Lads_mobile_sdk/ln;->c:Lads_mobile_sdk/jm;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/ln;

    iget-object v0, p0, Lads_mobile_sdk/ln;->b:Lads_mobile_sdk/pn;

    iget-object v1, p0, Lads_mobile_sdk/ln;->c:Lads_mobile_sdk/jm;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ln;-><init>(Lads_mobile_sdk/pn;Lads_mobile_sdk/jm;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/ln;

    iget-object v0, p0, Lads_mobile_sdk/ln;->b:Lads_mobile_sdk/pn;

    iget-object v1, p0, Lads_mobile_sdk/ln;->c:Lads_mobile_sdk/jm;

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/ln;-><init>(Lads_mobile_sdk/pn;Lads_mobile_sdk/jm;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ln;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 151
    iget v1, p0, Lads_mobile_sdk/ln;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/ln;->b:Lads_mobile_sdk/pn;

    .line 152
    iget-object p1, p1, Lads_mobile_sdk/pn;->b:Lads_mobile_sdk/mm;

    .line 153
    iget-object v1, p0, Lads_mobile_sdk/ln;->c:Lads_mobile_sdk/jm;

    iput v2, p0, Lads_mobile_sdk/ln;->a:I

    .line 154
    iget-object p1, p1, Lads_mobile_sdk/mm;->a:Lads_mobile_sdk/ks1;

    .line 155
    invoke-interface {p1}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/core/DataStore;

    new-instance v2, Lads_mobile_sdk/lm;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lads_mobile_sdk/lm;-><init>(Lads_mobile_sdk/jm;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p1, v2, p0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-ne p1, v0, :cond_3

    return-object v0

    .line 156
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
