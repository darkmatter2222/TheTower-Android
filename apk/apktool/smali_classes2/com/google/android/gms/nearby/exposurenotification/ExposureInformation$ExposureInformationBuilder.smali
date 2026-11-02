.class public final Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExposureInformationBuilder"
.end annotation


# instance fields
.field private zza:J

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zza:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzb:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzc:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzd:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zze:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzf:[I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation;

    iget-wide v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zza:J

    iget v3, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzb:I

    iget v4, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzc:I

    iget v5, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzd:I

    iget v6, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zze:I

    iget-object v7, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzf:[I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation;-><init>(JIIII[I)V

    return-object v0
.end method

.method public setAttenuationDurations([I)Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ltz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 2
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "attenuationDuration (%s) must be >= 0"

    .line 3
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzf:[I

    return-object p0
.end method

.method public setAttenuationValue(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0xff

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "attenuationValue (%s) must be >= 0 and <= 255"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzc:I

    return-object p0
.end method

.method public setDateMillisSinceEpoch(J)Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "dateMillisSinceEpoch (%s) must be >= 0"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-wide p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zza:J

    return-object p0
.end method

.method public setDurationMinutes(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;
    .locals 6

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    rem-int/lit8 v2, p1, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const-string v5, "durationMinutes (%s) must be an increment of 5"

    .line 2
    invoke-static {v2, v5, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x1e

    if-gt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string v1, "durationMinutes (%s) must be <= 30"

    .line 3
    invoke-static {v3, v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzb:I

    return-object p0
.end method

.method public setTotalRiskScore(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0x1000

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "totalRiskScore (%s) must be >= 0 and <= 4096"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zze:I

    return-object p0
.end method

.method public setTransmissionRiskLevel(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;
    .locals 3

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/16 v1, 0x8

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "transmissionRiskLevel (%s) must be >= 0 and <= 8"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureInformation$ExposureInformationBuilder;->zzd:I

    return-object p0
.end method
