.class public final Lads_mobile_sdk/m41;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/q41;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lads_mobile_sdk/q41;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/m41;->b:Lads_mobile_sdk/q41;

    iput-boolean p2, p0, Lads_mobile_sdk/m41;->c:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lads_mobile_sdk/m41;

    iget-object v0, p0, Lads_mobile_sdk/m41;->b:Lads_mobile_sdk/q41;

    iget-boolean v1, p0, Lads_mobile_sdk/m41;->c:Z

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/m41;-><init>(Lads_mobile_sdk/q41;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/m41;

    iget-object v0, p0, Lads_mobile_sdk/m41;->b:Lads_mobile_sdk/q41;

    iget-boolean v1, p0, Lads_mobile_sdk/m41;->c:Z

    invoke-direct {p1, v0, v1, p2}, Lads_mobile_sdk/m41;-><init>(Lads_mobile_sdk/q41;ZLkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/m41;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 74
    iget v1, p0, Lads_mobile_sdk/m41;->a:I

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

    iget-object p1, p0, Lads_mobile_sdk/m41;->b:Lads_mobile_sdk/q41;

    iget-boolean v1, p0, Lads_mobile_sdk/m41;->c:Z

    if-eqz v1, :cond_2

    const-string v1, "mute"

    goto :goto_0

    :cond_2
    const-string v1, "unmute"

    :goto_0
    iput v2, p0, Lads_mobile_sdk/m41;->a:I

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1, v2, v1, p0}, Lads_mobile_sdk/q41;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 76
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
