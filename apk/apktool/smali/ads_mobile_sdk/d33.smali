.class public final Lads_mobile_sdk/d33;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lads_mobile_sdk/e33;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 2
    iput-object p3, p0, Lads_mobile_sdk/d33;->b:Lkotlin/jvm/functions/Function1;

    iput-object p1, p0, Lads_mobile_sdk/d33;->c:Lads_mobile_sdk/e33;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    .line 1
    new-instance v0, Lads_mobile_sdk/d33;

    iget-object v1, p0, Lads_mobile_sdk/d33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lads_mobile_sdk/d33;->c:Lads_mobile_sdk/e33;

    invoke-direct {v0, v2, p1, v1}, Lads_mobile_sdk/d33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/d33;

    iget-object v1, p0, Lads_mobile_sdk/d33;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lads_mobile_sdk/d33;->c:Lads_mobile_sdk/e33;

    invoke-direct {v0, v2, p1, v1}, Lads_mobile_sdk/d33;-><init>(Lads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/d33;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 535
    iget v1, p0, Lads_mobile_sdk/d33;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

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
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 536
    iget-object p1, p0, Lads_mobile_sdk/d33;->b:Lkotlin/jvm/functions/Function1;

    iput v3, p0, Lads_mobile_sdk/d33;->a:I

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    .line 537
    :cond_3
    :goto_0
    check-cast p1, Lkotlin/time/Duration;

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v3

    .line 538
    iget-object p1, p0, Lads_mobile_sdk/d33;->c:Lads_mobile_sdk/e33;

    .line 539
    invoke-virtual {p1}, Lads_mobile_sdk/e33;->g()J

    move-result-wide v5

    .line 540
    iget-object p1, p0, Lads_mobile_sdk/d33;->c:Lads_mobile_sdk/e33;

    invoke-static {v3, v4, v5, v6}, Lkotlin/time/Duration;->minus-LRDsOJo(JJ)J

    move-result-wide v3

    iput v2, p0, Lads_mobile_sdk/d33;->a:I

    invoke-static {v3, v4, p1, p0}, Lads_mobile_sdk/e33;->a(JLads_mobile_sdk/e33;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    :goto_1
    return-object v0

    .line 541
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
