.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;

    invoke-direct {v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lads_mobile_sdk/sx2;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;

    invoke-direct {v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;->b:Ljava/lang/Object;

    .line 2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;->b:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/sx2;

    .line 3
    instance-of v1, p1, Lads_mobile_sdk/qx2;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    check-cast p1, Lads_mobile_sdk/qx2;

    .line 4
    iget-object p1, p1, Lads_mobile_sdk/qx2;->a:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 5
    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-object v0

    .line 6
    :cond_2
    instance-of v1, p1, Lads_mobile_sdk/rx2;

    if-eqz v1, :cond_9

    .line 7
    check-cast p1, Lads_mobile_sdk/rx2;

    .line 8
    iget-object p1, p1, Lads_mobile_sdk/rx2;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Lads_mobile_sdk/xz1;

    .line 11
    instance-of v1, p1, Lads_mobile_sdk/wz1;

    if-eqz v1, :cond_6

    .line 12
    check-cast p1, Lads_mobile_sdk/wz1;

    .line 13
    iget-object p1, p1, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 14
    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lads_mobile_sdk/lm1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 72
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    .line 73
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    const-string v2, "Invalid native ad response."

    const/4 v3, 0x0

    .line 74
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 75
    invoke-direct {p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-object p1

    .line 76
    :cond_4
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    new-instance v1, Lads_mobile_sdk/nc0;

    invoke-direct {v1, p1}, Lads_mobile_sdk/nc0;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V

    return-object v0

    .line 77
    :cond_5
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    new-instance v1, Lads_mobile_sdk/l12;

    invoke-direct {v1, p1}, Lads_mobile_sdk/l12;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    return-object v0

    .line 78
    :cond_6
    instance-of v1, p1, Lads_mobile_sdk/vz1;

    if-eqz v1, :cond_8

    .line 79
    sget-object v1, Lads_mobile_sdk/pm1;->b:Lads_mobile_sdk/nm1;

    check-cast p1, Lads_mobile_sdk/vz1;

    .line 80
    iget-object p1, p1, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    .line 81
    iput v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/a;->a:I

    invoke-virtual {v1, p1, p0}, Lads_mobile_sdk/nm1;->a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 82
    :cond_7
    :goto_1
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult;

    return-object p1

    .line 83
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method
