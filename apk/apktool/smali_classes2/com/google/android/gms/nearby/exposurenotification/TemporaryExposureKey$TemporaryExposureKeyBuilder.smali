.class public final Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TemporaryExposureKeyBuilder"
.end annotation


# instance fields
.field private zza:[B

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zza:[B

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzb:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzc:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzd:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zze:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzf:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzg:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zza:[B

    iget v2, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzb:I

    iget v3, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzc:I

    iget v4, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzd:I

    iget v5, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zze:I

    iget v6, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzf:I

    iget v7, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzg:I

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey;-><init>([BIIIIII)V

    return-object v0
.end method

.method public setDaysSinceOnsetOfSymptoms(I)Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
    .locals 3

    const/16 v0, -0xe

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/16 v0, 0xe

    if-gt p1, v0, :cond_0

    const/4 v1, 0x1

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "daysSinceOnsetOfSymptoms (%d) must be >= -14 and <= 14"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzf:I

    return-object p0
.end method

.method public setKeyData([B)Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
    .locals 1

    .line 1
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zza:[B

    return-object p0
.end method

.method public setReportType(I)Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "reportType (%d) is invalid"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zze:I

    return-object p0
.end method

.method public setRollingPeriod(I)Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "rollingPeriod (%s) must be > 0"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzd:I

    return-object p0
.end method

.method public setRollingStartIntervalNumber(I)Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "rollingStartIntervalNumber (%s) must be >= 0"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzb:I

    return-object p0
.end method

.method public setTransmissionRiskLevel(I)Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
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

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzc:I

    return-object p0
.end method

.method public setVariantOfConcern(I)Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "variantOfConcern (%d) is not allowed"

    .line 2
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/TemporaryExposureKey$TemporaryExposureKeyBuilder;->zzg:I

    return-object p0
.end method
