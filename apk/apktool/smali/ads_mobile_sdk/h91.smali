.class public final Lads_mobile_sdk/h91;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;I)Lads_mobile_sdk/px2;
    .locals 6

    .line 8
    sget-object v0, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    .line 9
    check-cast v0, Lads_mobile_sdk/vf0;

    .line 10
    new-instance v1, Lads_mobile_sdk/ai0;

    .line 11
    iget-object v0, v0, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 12
    invoke-direct {v1, v0}, Lads_mobile_sdk/ai0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput-object p0, v1, Lads_mobile_sdk/ai0;->j:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;

    .line 15
    iput-object p0, v1, Lads_mobile_sdk/ai0;->k:Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;

    .line 16
    iput-object p0, v1, Lads_mobile_sdk/ai0;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;

    .line 17
    iput-object p0, v1, Lads_mobile_sdk/ai0;->b:Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;

    .line 18
    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;->NATIVE:Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->isImageLoadingDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 50
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getAdPersistenceEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 51
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setAdPersistenceEnabled()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 54
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-result-object v2

    .line 55
    invoke-interface {v1, v2}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;)Lads_mobile_sdk/vz2;

    move-result-object v1

    .line 56
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->isImageLoadingDisabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->disableImageDownloading()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getAdChoicesPlacement()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setAdChoicesPlacement(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 88
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;->getAdPersistenceEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 89
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->setAdPersistenceEnabled()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;

    .line 92
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;->build()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;

    move-result-object p0

    .line 93
    invoke-interface {v1, p0}, Lads_mobile_sdk/vz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;)Lads_mobile_sdk/vz2;

    move-result-object p0

    .line 94
    sget-object v0, Lads_mobile_sdk/j53;->g:Lads_mobile_sdk/j53;

    invoke-interface {p0, v0}, Lads_mobile_sdk/f03;->a(Lads_mobile_sdk/j53;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/vz2;

    const/4 v0, 0x0

    .line 95
    invoke-interface {p0, v0}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/vz2;

    .line 96
    invoke-interface {p0, v0}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lads_mobile_sdk/vz2;

    .line 97
    invoke-interface {p0, p1}, Lads_mobile_sdk/vz2;->a(I)Lads_mobile_sdk/vz2;

    move-result-object p0

    .line 98
    invoke-interface {p0}, Lads_mobile_sdk/vz2;->a()Lads_mobile_sdk/wz2;

    move-result-object p0

    .line 99
    invoke-interface {p0}, Lads_mobile_sdk/g03;->a()Lads_mobile_sdk/px2;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;ILcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 2

    .line 1
    const-string v0, "adRequest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Lads_mobile_sdk/h91;->a(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;I)Lads_mobile_sdk/px2;

    move-result-object p0

    .line 3
    sget-object p1, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/vf0;

    .line 4
    iget-object p1, p1, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 5
    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/cm1;

    .line 6
    new-instance v0, Lads_mobile_sdk/f91;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lads_mobile_sdk/f91;-><init>(Lads_mobile_sdk/px2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, v0}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
