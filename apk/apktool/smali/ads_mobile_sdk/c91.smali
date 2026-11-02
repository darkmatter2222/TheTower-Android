.class public final Lads_mobile_sdk/c91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic a:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/c91;->a:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/b91;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/b91;

    iget v1, v0, Lads_mobile_sdk/b91;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/b91;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/b91;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/b91;-><init>(Lads_mobile_sdk/c91;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/b91;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/b91;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lads_mobile_sdk/c91;->a:Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    check-cast p1, Lads_mobile_sdk/sx2;

    .line 53
    instance-of v2, p1, Lads_mobile_sdk/qx2;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;

    check-cast p1, Lads_mobile_sdk/qx2;

    .line 54
    iget-object p1, p1, Lads_mobile_sdk/qx2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 55
    invoke-direct {v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    goto :goto_1

    .line 56
    :cond_3
    instance-of v2, p1, Lads_mobile_sdk/rx2;

    if-eqz v2, :cond_5

    .line 57
    check-cast p1, Lads_mobile_sdk/rx2;

    .line 58
    iget-object p1, p1, Lads_mobile_sdk/rx2;->a:Ljava/lang/Object;

    .line 59
    check-cast p1, Lads_mobile_sdk/xz1;

    invoke-static {p1}, Lads_mobile_sdk/lk1;->a(Lads_mobile_sdk/xz1;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    move-result-object v2

    .line 60
    :goto_1
    iput v3, v0, Lads_mobile_sdk/b91;->b:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 61
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 66
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
