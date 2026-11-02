.class public final Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExposureSummaryBuilder"
.end annotation


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:[I

.field private zze:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zza:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzb:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzc:I

    filled-new-array {v0, v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzd:[I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zze:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary;

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zza:I

    iget v2, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzb:I

    iget v3, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzc:I

    iget-object v4, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzd:[I

    iget v5, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zze:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary;-><init>(III[II)V

    return-object v0
.end method

.method public setAttenuationDurations([I)Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2
    aget v4, p1, v1

    if-ltz v4, :cond_1

    move v5, v2

    goto :goto_2

    :cond_1
    move v5, v3

    .line 3
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "attenuationDuration (%s) must be >= 0"

    .line 4
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5
    :cond_2
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzd:[I

    return-object p0
.end method

.method public setDaysSinceLastExposure(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;
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
    const-string v2, "daysSinceLastExposure (%s) must be >= 0"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zza:I

    return-object p0
.end method

.method public setMatchedKeyCount(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;
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
    const-string v2, "matchedKeyCount (%s) must be >= 0"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzb:I

    return-object p0
.end method

.method public setMaximumRiskScore(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;
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

    const-string v2, "maximumRiskScore (%s) must be >= 0 and <= 4096"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zzc:I

    return-object p0
.end method

.method public setSummationRiskScore(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;
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
    const-string v2, "summationRiskScore (%s) must be >= 0"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureSummary$ExposureSummaryBuilder;->zze:I

    return-object p0
.end method
