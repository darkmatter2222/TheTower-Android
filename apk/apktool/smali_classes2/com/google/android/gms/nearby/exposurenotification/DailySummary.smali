.class public Lcom/google/android/gms/nearby/exposurenotification/DailySummary;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/exposurenotification/DailySummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:I

.field final zzb:Ljava/util/List;

.field final zzc:Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

.field final zzd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/exposurenotification/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    iput-object p4, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zza:I

    .line 3
    iget v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zza:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzb:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzb:Ljava/util/List;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    iget-object v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    .line 5
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzd:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzd:Ljava/lang/String;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getDaysSinceEpoch()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zza:I

    return v0
.end method

.method public getSummaryData()Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    return-object v0
.end method

.method public getSummaryDataForReportType(I)Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzb:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    iget-object v3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzd:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzb:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzc:Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    iget-object v4, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzd:Ljava/lang/String;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DailySummary<daysSinceEpoch: %d, reportSummaries: %s, daySummary: %s, deviceName: %s>"

    .line 2
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->getDaysSinceEpoch()I

    move-result v2

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzb:Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->getSummaryData()Lcom/google/android/gms/nearby/exposurenotification/DailySummary$ExposureSummaryData;

    move-result-object v2

    .line 6
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummary;->zzd:Ljava/lang/String;

    .line 7
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
