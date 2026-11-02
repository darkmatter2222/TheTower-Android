.class public final Lads_mobile_sdk/pm1;
.super Lads_mobile_sdk/ei1;
.source "SourceFile"


# static fields
.field public static final b:Lads_mobile_sdk/nm1;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/nm1;

    .line 2
    invoke-direct {v0}, Lads_mobile_sdk/nm1;-><init>()V

    .line 3
    sput-object v0, Lads_mobile_sdk/pm1;->b:Lads_mobile_sdk/nm1;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;)V
    .locals 1

    .line 1
    const-string v0, "loadCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lads_mobile_sdk/ei1;-><init>()V

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/xz1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 68
    instance-of v0, p2, Lads_mobile_sdk/om1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/om1;

    iget v1, v0, Lads_mobile_sdk/om1;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/om1;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/om1;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/om1;-><init>(Lads_mobile_sdk/pm1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/om1;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 93
    iget v2, v0, Lads_mobile_sdk/om1;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/om1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 95
    instance-of p2, p1, Lads_mobile_sdk/wz1;

    if-eqz p2, :cond_8

    .line 96
    check-cast p1, Lads_mobile_sdk/wz1;

    .line 97
    iget-object p1, p1, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 98
    const-string p2, "ad"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object p2

    iget-object p2, p2, Lads_mobile_sdk/s02;->b:Lads_mobile_sdk/q02;

    if-nez p2, :cond_3

    const/4 p2, -0x1

    goto :goto_1

    :cond_3
    sget-object v0, Lads_mobile_sdk/lm1;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_1
    const/4 v0, 0x0

    const-string v1, "Invalid native ad response."

    if-eq p2, v3, :cond_5

    const/4 v2, 0x2

    if-eq p2, v2, :cond_4

    .line 105
    new-instance p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;

    .line 106
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 107
    invoke-direct {p2, v2, v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 108
    invoke-direct {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    goto :goto_3

    .line 109
    :cond_4
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    new-instance v2, Lads_mobile_sdk/nc0;

    invoke-direct {v2, p1}, Lads_mobile_sdk/nc0;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {p2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V

    goto :goto_2

    .line 110
    :cond_5
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    new-instance v2, Lads_mobile_sdk/l12;

    invoke-direct {v2, p1}, Lads_mobile_sdk/l12;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-direct {p2, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    :goto_2
    move-object p1, p2

    .line 111
    :goto_3
    nop

    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$NativeAdSuccess;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;)V

    goto :goto_5

    .line 112
    :cond_6
    instance-of p2, p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$CustomNativeAdSuccess;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onCustomNativeAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/nativead/CustomNativeAd;)V

    goto :goto_5

    .line 114
    :cond_7
    iget-object p1, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    .line 115
    new-instance p2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 116
    invoke-direct {p2, v2, v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 117
    invoke-interface {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    goto :goto_5

    .line 122
    :cond_8
    instance-of p2, p1, Lads_mobile_sdk/vz1;

    if-eqz p2, :cond_a

    .line 123
    iget-object p2, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    sget-object v2, Lads_mobile_sdk/pm1;->b:Lads_mobile_sdk/nm1;

    check-cast p1, Lads_mobile_sdk/vz1;

    .line 124
    iget-object p1, p1, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    .line 125
    iput-object p2, v0, Lads_mobile_sdk/om1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    iput v3, v0, Lads_mobile_sdk/om1;->d:I

    invoke-virtual {v2, p1, v0}, Lads_mobile_sdk/nm1;->a(Lads_mobile_sdk/ck1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    .line 126
    :goto_4
    check-cast p2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;

    invoke-virtual {p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoadResult$BannerAdSuccess;->getAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onBannerAdLoaded(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V

    .line 128
    :cond_a
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final bridge synthetic a(Lads_mobile_sdk/zh1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, Lads_mobile_sdk/xz1;

    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/pm1;->a(Lads_mobile_sdk/xz1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 176
    iget-object v0, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdLoadingCompleted()V

    return-void
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V
    .locals 1

    .line 1
    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lads_mobile_sdk/pm1;->a:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdLoaderCallback;->onAdFailedToLoad(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-void
.end method
