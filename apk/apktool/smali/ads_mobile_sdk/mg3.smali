.class public final Lads_mobile_sdk/mg3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lads_mobile_sdk/i01;)Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;
    .locals 2

    .line 2
    instance-of v0, p0, Lads_mobile_sdk/r01;

    if-eqz v0, :cond_0

    .line 3
    new-instance p0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;

    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;->TIMEOUT:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;

    sget-object v1, Lads_mobile_sdk/ir0;->b:Lads_mobile_sdk/ir0;

    .line 4
    const-string v1, "Operation timed out."

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;Ljava/lang/String;)V

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lads_mobile_sdk/i01;->a()Lads_mobile_sdk/kk1;

    move-result-object v0

    sget-object v1, Lads_mobile_sdk/kk1;->b:Lads_mobile_sdk/kk1;

    if-ne v0, v1, :cond_1

    .line 9
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;->INVALID_REQUEST:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;->INTERNAL_ERROR:Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;

    .line 13
    :goto_0
    new-instance v1, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;

    invoke-static {p0}, Lads_mobile_sdk/h01;->a(Lads_mobile_sdk/i01;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalError$ErrorCode;Ljava/lang/String;)V

    return-object v1
.end method
