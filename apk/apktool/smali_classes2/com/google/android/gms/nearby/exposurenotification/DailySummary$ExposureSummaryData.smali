.class public Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/exposurenotification/DailySummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExposureSummaryData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:D

.field final zzb:D

.field final zzc:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/exposurenotification/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zza:D

    iput-wide p3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzb:D

    iput-wide p5, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzc:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    iget-wide v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zza:D

    .line 3
    iget-wide v4, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zza:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzb:D

    iget-wide v4, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzb:D

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzc:D

    iget-wide v4, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzc:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getMaximumScore()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zza:D

    return-wide v0
.end method

.method public getScoreSum()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzb:D

    return-wide v0
.end method

.method public getWeightedDurationSum()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzc:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zza:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzb:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzc:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zza:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzb:D

    .line 2
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->zzc:D

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ExposureSummaryData<maximumScore: %.3f, scoreSum: %.3f, weightedDurationSum: %.3f>"

    .line 4
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->getMaximumScore()D

    move-result-wide v1

    .line 3
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->getScoreSum()D

    move-result-wide v1

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;->getWeightedDurationSum()D

    move-result-wide v1

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
