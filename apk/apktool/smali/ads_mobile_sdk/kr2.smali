.class public final Lads_mobile_sdk/kr2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:J

.field public final synthetic c:Lads_mobile_sdk/pt2;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lads_mobile_sdk/j53;


# direct methods
.method public constructor <init>(JLads_mobile_sdk/pt2;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lads_mobile_sdk/kr2;->b:J

    iput-object p3, p0, Lads_mobile_sdk/kr2;->c:Lads_mobile_sdk/pt2;

    iput-object p4, p0, Lads_mobile_sdk/kr2;->d:Ljava/lang/String;

    iput-object p5, p0, Lads_mobile_sdk/kr2;->e:Lads_mobile_sdk/j53;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lads_mobile_sdk/kr2;

    iget-wide v1, p0, Lads_mobile_sdk/kr2;->b:J

    iget-object v3, p0, Lads_mobile_sdk/kr2;->c:Lads_mobile_sdk/pt2;

    iget-object v4, p0, Lads_mobile_sdk/kr2;->d:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/kr2;->e:Lads_mobile_sdk/j53;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/kr2;-><init>(JLads_mobile_sdk/pt2;Ljava/lang/String;Lads_mobile_sdk/j53;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/kr2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/kr2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/kr2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 373
    iget v1, p0, Lads_mobile_sdk/kr2;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 374
    iget-wide v3, p0, Lads_mobile_sdk/kr2;->b:J

    iput v2, p0, Lads_mobile_sdk/kr2;->a:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 375
    :cond_2
    :goto_0
    iget-object p1, p0, Lads_mobile_sdk/kr2;->c:Lads_mobile_sdk/pt2;

    invoke-static {p1}, Lads_mobile_sdk/pt2;->a(Lads_mobile_sdk/pt2;)Lads_mobile_sdk/k6;

    move-result-object p1

    .line 376
    sget-object v0, Lads_mobile_sdk/bu2;->e:Lads_mobile_sdk/bu2;

    .line 377
    iget-object v1, p0, Lads_mobile_sdk/kr2;->d:Ljava/lang/String;

    .line 378
    iget-object v2, p0, Lads_mobile_sdk/kr2;->e:Lads_mobile_sdk/j53;

    .line 379
    iget-wide v3, p0, Lads_mobile_sdk/kr2;->b:J

    invoke-static {v3, v4}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ad held without presentation for longer than the "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " limit."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p1, v0, v1, v2, v3}, Lads_mobile_sdk/k6;->a(Lads_mobile_sdk/bu2;Ljava/lang/String;Lads_mobile_sdk/j53;Ljava/lang/String;)V

    .line 386
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
