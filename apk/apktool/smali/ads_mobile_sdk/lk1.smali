.class public final Lads_mobile_sdk/lk1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lads_mobile_sdk/xz1;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;
    .locals 4

    .line 1
    const-string v0, "internalAd"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v1, p0, Lads_mobile_sdk/vz1;

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;

    .line 4
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 5
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 7
    check-cast p0, Lads_mobile_sdk/vz1;

    .line 8
    iget-object p0, p0, Lads_mobile_sdk/vz1;->a:Lads_mobile_sdk/ck1;

    .line 9
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object p0

    .line 10
    const-string v3, "Invalid native ad response, icon ad requests should never return a banner ad."

    invoke-direct {v1, v2, v3, p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-object v0

    .line 19
    :cond_0
    instance-of v1, p0, Lads_mobile_sdk/wz1;

    if-eqz v1, :cond_2

    .line 20
    check-cast p0, Lads_mobile_sdk/wz1;

    .line 21
    iget-object v1, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v1

    iget-object v1, v1, Lads_mobile_sdk/s02;->g:Lads_mobile_sdk/km1;

    if-nez v1, :cond_1

    .line 24
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;

    .line 25
    iget-object p0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 26
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;

    .line 164
    sget-object v2, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;->INVALID_AD_RESPONSE:Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;

    .line 166
    invoke-virtual {p0}, Lads_mobile_sdk/ci1;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object p0

    .line 167
    const-string v3, "Icon ad response does not contain icon"

    invoke-direct {v0, v2, v3, p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError$ErrorCode;Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V

    .line 168
    invoke-direct {v1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Failure;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/LoadAdError;)V

    return-object v1

    .line 170
    :cond_1
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;

    .line 171
    new-instance v2, Lads_mobile_sdk/j91;

    new-instance v3, Lads_mobile_sdk/l12;

    .line 172
    iget-object p0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 173
    invoke-direct {v3, p0}, Lads_mobile_sdk/l12;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    invoke-virtual {v1}, Lads_mobile_sdk/km1;->a()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;

    move-result-object p0

    invoke-direct {v2, v3, p0}, Lads_mobile_sdk/j91;-><init>(Lads_mobile_sdk/l12;Lcom/google/android/libraries/ads/mobile/sdk/common/Image;)V

    .line 174
    invoke-direct {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;)V

    return-object v0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
