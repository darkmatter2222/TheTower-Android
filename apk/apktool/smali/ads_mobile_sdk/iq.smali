.class public final Lads_mobile_sdk/iq;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/iq;->b:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance v0, Lads_mobile_sdk/iq;

    iget-object v1, p0, Lads_mobile_sdk/iq;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/iq;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/iq;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lads_mobile_sdk/sx2;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/iq;

    iget-object v1, p0, Lads_mobile_sdk/iq;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p2}, Lads_mobile_sdk/iq;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/iq;->a:Ljava/lang/Object;

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/iq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lads_mobile_sdk/iq;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/sx2;

    .line 37
    instance-of v0, p1, Lads_mobile_sdk/rx2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lads_mobile_sdk/iq;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Lads_mobile_sdk/rx2;

    .line 38
    iget-object p1, p1, Lads_mobile_sdk/rx2;->a:Ljava/lang/Object;

    .line 39
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    return-object p1

    .line 40
    :cond_0
    instance-of v0, p1, Lads_mobile_sdk/qx2;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;

    check-cast p1, Lads_mobile_sdk/qx2;

    .line 41
    iget-object p1, p1, Lads_mobile_sdk/qx2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 42
    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-object v0

    .line 43
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
