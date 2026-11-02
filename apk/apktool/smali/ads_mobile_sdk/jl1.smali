.class public abstract Lads_mobile_sdk/jl1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lads_mobile_sdk/ke;
    .locals 3

    .line 58
    sget-object v0, Lads_mobile_sdk/hf;->A:Ljava/util/List;

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;->NOT_STARTED:Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;

    const-string v1, "The Google Mobile Ads SDK has not started initializing, please call MobileAds.initialize."

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lads_mobile_sdk/le;->b(Lcom/google/android/libraries/ads/mobile/sdk/initialization/AdapterStatus$InitializationState;Ljava/lang/String;I)Lads_mobile_sdk/ke;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;Ljava/lang/Integer;)Lads_mobile_sdk/v01;
    .locals 4

    .line 1
    const-string v0, "nativeAdTypes"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customFormatIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Lads_mobile_sdk/m01;

    .line 5
    sget-object p1, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 6
    const-string p2, "Native ad types cannot be empty."

    invoke-direct {p0, p2, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0

    .line 11
    :cond_0
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->CUSTOM_NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    new-instance p0, Lads_mobile_sdk/m01;

    .line 14
    sget-object p1, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 15
    const-string p2, "When requesting custom native ads, you must set at least one custom format ID."

    invoke-direct {p0, p2, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0

    .line 20
    :cond_1
    sget-object v1, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->BANNER:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 21
    new-instance p0, Lads_mobile_sdk/m01;

    .line 23
    sget-object p1, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 24
    const-string p2, "A native ad request for banner ads only is not allowed. Suggested action: Use BannerAd to request banner ads."

    invoke-direct {p0, p2, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0

    .line 29
    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    .line 30
    new-instance p0, Lads_mobile_sdk/m01;

    .line 32
    sget-object p1, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 33
    const-string p2, "When requesting a banner ad, you must set at least one AdSize. Suggested action: Call NativeRequest.setAdSizes() with at least one ad size."

    invoke-direct {p0, p2, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0

    :cond_3
    if-eqz p3, :cond_4

    .line 39
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ge p3, v3, :cond_4

    .line 40
    new-instance p0, Lads_mobile_sdk/m01;

    .line 42
    sget-object p1, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    .line 43
    const-string p2, "Number of ads requested must be greater than 0."

    invoke-direct {p0, p2, p1}, Lads_mobile_sdk/m01;-><init>(Ljava/lang/String;Lads_mobile_sdk/kk1;)V

    return-object p0

    .line 51
    :cond_4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_5

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 52
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p1, "Custom native ad format IDs were provided, but custom native ads were not requested."

    .line 53
    invoke-static {p1, p3}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 54
    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 55
    sget-object p0, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p0, "AdSize was provided, but banner ads were not requested. Suggested action: Update NativeRequest.nativeAdTypes to add NativeAdType.BANNER."

    .line 56
    invoke-static {p0, p3}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :cond_6
    new-instance p0, Lads_mobile_sdk/q01;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-direct {p0, p1}, Lads_mobile_sdk/q01;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
