.class public final Lads_mobile_sdk/xi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/oe3;


# instance fields
.field public final a:Lads_mobile_sdk/m13;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/m13;)V
    .locals 1

    .line 1
    const-string v0, "recursiveAdData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/xi2;->a:Lads_mobile_sdk/m13;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;)V
    .locals 2

    .line 1
    const-string v0, "signals"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lads_mobile_sdk/xi2;->a:Lads_mobile_sdk/m13;

    .line 31
    iget-object v1, v0, Lads_mobile_sdk/m13;->a:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    .line 32
    iput-object v1, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->parentAdConfig:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;

    .line 33
    iget-object v0, v0, Lads_mobile_sdk/m13;->b:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;

    .line 34
    iput-object v0, p1, Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;->parentCommonConfig:Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/xi2;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/xi2;

    iget-object v1, p0, Lads_mobile_sdk/xi2;->a:Lads_mobile_sdk/m13;

    iget-object p1, p1, Lads_mobile_sdk/xi2;->a:Lads_mobile_sdk/m13;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/xi2;->a:Lads_mobile_sdk/m13;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/xi2;->a:Lads_mobile_sdk/m13;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ParentAdConfigSignal(recursiveAdData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
