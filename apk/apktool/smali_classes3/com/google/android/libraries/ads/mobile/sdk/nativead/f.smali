.class public final Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/xz1;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xz1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;->b:Lads_mobile_sdk/xz1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;->b:Lads_mobile_sdk/xz1;

    invoke-direct {p1, v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;-><init>(Lads_mobile_sdk/xz1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;

    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;->b:Lads_mobile_sdk/xz1;

    invoke-direct {p1, v0, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;-><init>(Lads_mobile_sdk/xz1;Lkotlin/coroutines/Continuation;)V

    .line 2
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;->a:I

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

    .line 3
    sget-object p1, Lads_mobile_sdk/pm1;->b:Lads_mobile_sdk/nm1;

    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;->b:Lads_mobile_sdk/xz1;

    check-cast v1, Lads_mobile_sdk/vz1;

    .line 4
    iget-object v1, v1, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    .line 5
    iput v2, p0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/f;->a:I

    invoke-virtual {p1, v1, p0}, Lads_mobile_sdk/nm1;->a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V

    return-object v0
.end method
