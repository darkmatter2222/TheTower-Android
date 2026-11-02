.class public Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zza:J

.field private zzb:Ljava/util/List;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zza:J

    invoke-static {}, Lcom/google/android/gms/internal/nearby/zzsq;->zzl()Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzb:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzc:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzd:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zze:I

    iput v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzf:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow;
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow;

    iget-wide v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zza:J

    iget-object v3, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzb:Ljava/util/List;

    iget v4, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzc:I

    iget v5, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzd:I

    iget v6, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zze:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzf:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow;-><init>(JLjava/util/List;IIILjava/lang/String;I)V

    return-object v0
.end method

.method public setCalibrationConfidence(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/nearby/exposurenotification/zzh;->zza(I)Lcom/google/android/gms/nearby/exposurenotification/zzh;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "calibrationConfidence (%d) is invalid"

    .line 3
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zze:I

    return-object p0
.end method

.method public setDateMillisSinceEpoch(J)Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zza:J

    return-object p0
.end method

.method public setInfectiousness(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/nearby/exposurenotification/zzj;->zza(I)Lcom/google/android/gms/nearby/exposurenotification/zzj;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "infectiousness (%d) is invalid"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzd:I

    return-object p0
.end method

.method public setReportType(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    .line 1
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "reportType (%d) is not allowed"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzc:I

    return-object p0
.end method

.method public setScanInstances(Ljava/util/List;)Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/nearby/exposurenotification/ScanInstance;",
            ">;)",
            "Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzb:Ljava/util/List;

    return-object p0
.end method

.method public setVariantOfConcern(I)Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;
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

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureWindow$Builder;->zzf:I

    return-object p0
.end method
