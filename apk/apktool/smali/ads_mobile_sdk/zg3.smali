.class public final Lads_mobile_sdk/zg3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/eh3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/zg3;->b:Lads_mobile_sdk/eh3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lads_mobile_sdk/zg3;

    iget-object v0, p0, Lads_mobile_sdk/zg3;->b:Lads_mobile_sdk/eh3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/zg3;-><init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/zg3;

    iget-object v0, p0, Lads_mobile_sdk/zg3;->b:Lads_mobile_sdk/eh3;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/zg3;-><init>(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/zg3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget v1, p0, Lads_mobile_sdk/zg3;->a:I

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

    .line 103
    iget-object p1, p0, Lads_mobile_sdk/zg3;->b:Lads_mobile_sdk/eh3;

    iput v2, p0, Lads_mobile_sdk/zg3;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-static {p1, p0}, Lads_mobile_sdk/eh3;->a(Lads_mobile_sdk/eh3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 105
    :cond_2
    :goto_0
    check-cast p1, Lads_mobile_sdk/v01;

    .line 107
    instance-of v0, p1, Lads_mobile_sdk/q01;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;

    check-cast p1, Lads_mobile_sdk/q01;

    .line 108
    iget-object p1, p1, Lads_mobile_sdk/q01;->b:Ljava/lang/Object;

    .line 109
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Success;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/signal/Signal;)V

    return-object v0

    .line 110
    :cond_3
    instance-of v0, p1, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Failure;

    check-cast p1, Lads_mobile_sdk/i01;

    invoke-static {p1}, Lads_mobile_sdk/mg3;->a(Lads_mobile_sdk/i01;)Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalGenerationResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;)V

    return-object v0

    .line 111
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
