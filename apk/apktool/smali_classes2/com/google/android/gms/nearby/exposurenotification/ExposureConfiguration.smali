.class public final Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration$ExposureConfigurationBuilder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:I

.field final zzb:[I

.field final zzc:I

.field final zzd:[I

.field final zze:I

.field final zzf:[I

.field final zzg:I

.field final zzh:[I

.field final zzi:I

.field final zzj:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/exposurenotification/zze;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/exposurenotification/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[II[II[II[II[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzb:[I

    iput p3, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzc:I

    iput-object p4, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzd:[I

    iput p5, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzf:[I

    iput p7, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzg:I

    iput-object p8, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzh:[I

    iput p9, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzi:I

    iput-object p10, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzj:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zza:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getMinimumRiskScore()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzb:[I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getAttenuationScores()[I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzc:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getAttenuationWeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzd:[I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDaysSinceLastExposureScores()[I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zze:I

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDaysSinceLastExposureWeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzf:[I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDurationScores()[I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzg:I

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDurationWeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzh:[I

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getTransmissionRiskScores()[I

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzi:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getTransmissionRiskWeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzj:[I

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDurationAtAttenuationThresholds()[I

    move-result-object p1

    .line 13
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getAttenuationScores()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzb:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getAttenuationWeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzc:I

    return v0
.end method

.method public getDaysSinceLastExposureScores()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzd:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getDaysSinceLastExposureWeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zze:I

    return v0
.end method

.method public getDurationAtAttenuationThresholds()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzj:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getDurationScores()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzf:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getDurationWeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzg:I

    return v0
.end method

.method public getMinimumRiskScore()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zza:I

    return v0
.end method

.method public getTransmissionRiskScores()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzh:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public getTransmissionRiskWeight()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzi:I

    return v0
.end method

.method public hashCode()I
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzb:[I

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzc:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzd:[I

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zze:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzf:[I

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzg:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzh:[I

    iget v0, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzi:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzj:[I

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zza:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzb:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzc:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzd:[I

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zze:I

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzf:[I

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzg:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzh:[I

    .line 8
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    iget v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzi:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v1, p0, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->zzj:[I

    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "ExposureConfiguration<minimumRiskScore: %d, attenuationScores: %s, attenuationWeight: %d, daysSinceLastExposureScores: %s, daysSinceLastExposureWeight: %d, durationScores: %s, durationWeight: %d, transmissionRiskScores: %s, transmissionRiskWeight: %d, durationAtAttenuationThresholds: %s>"

    .line 11
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

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getMinimumRiskScore()I

    move-result v1

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getAttenuationScores()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getAttenuationWeight()I

    move-result v1

    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDaysSinceLastExposureScores()[I

    move-result-object v1

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDaysSinceLastExposureWeight()I

    move-result v1

    .line 8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDurationScores()[I

    move-result-object v1

    .line 10
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDurationWeight()I

    move-result v1

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getTransmissionRiskScores()[I

    move-result-object v1

    .line 13
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getTransmissionRiskWeight()I

    move-result v1

    .line 14
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v0, 0xa

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/exposurenotification/ExposureConfiguration;->getDurationAtAttenuationThresholds()[I

    move-result-object v1

    .line 16
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
