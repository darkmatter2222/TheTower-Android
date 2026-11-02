.class public final Lads_mobile_sdk/l01;
.super Lads_mobile_sdk/i01;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;)V
    .locals 2

    .line 1
    const-string v0, "mediationAdError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    sget-object v0, Lads_mobile_sdk/kk1;->g:Lads_mobile_sdk/kk1;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lads_mobile_sdk/i01;-><init>(Lads_mobile_sdk/kk1;I)V

    .line 111
    iput-object p1, p0, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;
    .locals 1

    .line 109
    iget-object v0, p0, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lads_mobile_sdk/l01;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lads_mobile_sdk/l01;

    iget-object v1, p0, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    iget-object p1, p1, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

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
    iget-object v0, p0, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lads_mobile_sdk/l01;->c:Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "InternalMediationAdError(mediationAdError="

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
