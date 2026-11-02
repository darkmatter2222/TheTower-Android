.class public final Lads_mobile_sdk/n12;
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
    iput-object p1, p0, Lads_mobile_sdk/n12;->a:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lads_mobile_sdk/m12;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/m12;

    iget v1, v0, Lads_mobile_sdk/m12;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/m12;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/m12;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/m12;-><init>(Lads_mobile_sdk/n12;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/m12;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lads_mobile_sdk/m12;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/m12;->c:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    iget-object p2, p0, Lads_mobile_sdk/n12;->a:Lkotlinx/coroutines/flow/FlowCollector;

    .line 51
    check-cast p1, Lads_mobile_sdk/sx2;

    .line 53
    instance-of v2, p1, Lads_mobile_sdk/qx2;

    if-eqz v2, :cond_4

    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    check-cast p1, Lads_mobile_sdk/qx2;

    .line 54
    iget-object p1, p1, Lads_mobile_sdk/qx2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 55
    invoke-direct {v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    goto/16 :goto_3

    .line 56
    :cond_4
    instance-of v2, p1, Lads_mobile_sdk/rx2;

    if-eqz v2, :cond_c

    .line 57
    check-cast p1, Lads_mobile_sdk/rx2;

    .line 58
    iget-object p1, p1, Lads_mobile_sdk/rx2;->a:Ljava/lang/Object;

    .line 59
    check-cast p1, Lads_mobile_sdk/xz1;

    .line 60
    instance-of v2, p1, Lads_mobile_sdk/wz1;

    if-eqz v2, :cond_8

    .line 61
    check-cast p1, Lads_mobile_sdk/wz1;

    .line 62
    iget-object p1, p1, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 63
    const-string v2, "ad"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v2

    iget-object v2, v2, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    if-nez v2, :cond_5

    const/4 v2, -0x1

    goto :goto_1

    :cond_5
    sget-object v6, Lads_mobile_sdk/lm1;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    :goto_1
    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_6

    .line 121
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    .line 122
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    sget-object v5, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    const-string v6, "Invalid native ad response."

    .line 123
    invoke-direct {p1, v5, v6, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 124
    invoke-direct {v2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    goto :goto_3

    .line 125
    :cond_6
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    new-instance v5, Lads_mobile_sdk/nc0;

    invoke-direct {v5, p1}, Lads_mobile_sdk/nc0;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {v2, v5}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V

    goto :goto_3

    .line 126
    :cond_7
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    new-instance v5, Lads_mobile_sdk/l12;

    invoke-direct {v5, p1}, Lads_mobile_sdk/l12;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {v2, v5}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    goto :goto_3

    .line 127
    :cond_8
    instance-of v2, p1, Lads_mobile_sdk/vz1;

    if-eqz v2, :cond_b

    .line 128
    sget-object v2, Lads_mobile_sdk/pm1;->b:Lads_mobile_sdk/nm1;

    check-cast p1, Lads_mobile_sdk/vz1;

    .line 129
    iget-object p1, p1, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    .line 130
    iput-object p2, v0, Lads_mobile_sdk/m12;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput v5, v0, Lads_mobile_sdk/m12;->b:I

    invoke-virtual {v2, p1, v0}, Lads_mobile_sdk/nm1;->a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    goto :goto_4

    :cond_9
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    .line 131
    :goto_2
    move-object v2, p2

    check-cast v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;

    move-object p2, p1

    .line 132
    :goto_3
    iput-object v3, v0, Lads_mobile_sdk/m12;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput v4, v0, Lads_mobile_sdk/m12;->b:I

    invoke-interface {p2, v2, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_4
    return-object v1

    .line 133
    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 142
    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_c
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
