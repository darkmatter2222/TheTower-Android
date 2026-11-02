.class public final Lads_mobile_sdk/wz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/xz1;
.implements Lads_mobile_sdk/zh1;


# instance fields
.field public final a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .locals 1

    .line 1
    const-string v0, "internalNativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    return-void
.end method


# virtual methods
.method public final a()Lads_mobile_sdk/ks3;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->a()Lads_mobile_sdk/ks3;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;
    .locals 1

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/ci1;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;)V
    .locals 2

    .line 5
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, v1, Lads_mobile_sdk/ci1;->k:Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    return-void
.end method

.method public final b()Lads_mobile_sdk/i2;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->b()Lads_mobile_sdk/i2;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lads_mobile_sdk/eo2;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->c()Lads_mobile_sdk/eo2;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lads_mobile_sdk/st2;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->d()Lads_mobile_sdk/st2;

    move-result-object v0

    return-object v0
.end method

.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->destroy()V

    return-void
.end method

.method public final e()D
    .locals 2

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->e()D

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/gson/JsonObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->g()Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/wz1;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    invoke-virtual {v0}, Lads_mobile_sdk/ci1;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object v0

    return-object v0
.end method
