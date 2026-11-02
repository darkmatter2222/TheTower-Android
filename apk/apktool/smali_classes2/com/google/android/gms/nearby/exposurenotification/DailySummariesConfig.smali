.class public Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig$DailySummariesConfigBuilder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:Ljava/util/List;

.field final zzb:Ljava/util/List;

.field final zzc:Ljava/util/List;

.field final zzd:Ljava/util/List;

.field final zze:I

.field final zzf:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/exposurenotification/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ID)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzc:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzd:Ljava/util/List;

    iput p5, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zze:I

    iput-wide p6, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzf:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzc:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzc:Ljava/util/List;

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzd:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzd:Ljava/util/List;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zze:I

    iget v2, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zze:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzf:D

    iget-wide v4, p1, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzf:D

    cmpl-double p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getAttenuationBucketThresholdDb()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzc:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAttenuationBucketWeights()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzd:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDaysSinceExposureThreshold()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zze:I

    return v0
.end method

.method public getInfectiousnessWeights()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMinimumWindowScore()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzf:D

    return-wide v0
.end method

.method public getReportTypeWeights()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzc:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzd:Ljava/util/List;

    iget v4, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zze:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzf:D

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzc:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzd:Ljava/util/List;

    iget v5, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zze:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzf:D

    .line 2
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DailySummariesConfig<reportTypeWeights: %s, infectiousnessWeights: %s, attenuationBucketThresholdDb: %s, attenuationBucketWeights: %sdaysSinceExposureThreshold: %d,minimumWindowScore: %.3f>"

    .line 3
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zza:Ljava/util/List;

    .line 2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->zzb:Ljava/util/List;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x2

    .line 5
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->getAttenuationBucketThresholdDb()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->getAttenuationBucketWeights()Ljava/util/List;

    move-result-object v1

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDoubleList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v0, 0x5

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->getDaysSinceExposureThreshold()I

    move-result v1

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;->getMinimumWindowScore()D

    move-result-wide v1

    .line 13
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 14
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
