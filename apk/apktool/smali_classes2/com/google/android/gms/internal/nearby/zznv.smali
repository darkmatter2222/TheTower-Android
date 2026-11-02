.class public final Lcom/google/android/gms/internal/nearby/zznv;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zznv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:J

.field private final zzb:Ljava/lang/String;

.field private final zzc:I

.field private final zzd:Ljava/lang/String;

.field private final zze:J

.field private final zzf:Ljava/lang/String;

.field private final zzg:[B

.field private final zzh:[B

.field private final zzi:Ljava/util/List;

.field private final zzj:I

.field private final zzk:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zznw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zznw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zznv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;ILjava/lang/String;JLjava/lang/String;[B[BLjava/util/List;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zznv;->zza:J

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzb:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzd:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/internal/nearby/zznv;->zze:J

    iput-object p8, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzf:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzg:[B

    iput-object p10, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzh:[B

    iput-object p11, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzi:Ljava/util/List;

    iput p12, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzj:I

    iput-object p13, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzk:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/nearby/zznv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zznv;

    iget-wide v2, p0, Lcom/google/android/gms/internal/nearby/zznv;->zza:J

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zza:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzc:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzd:Ljava/lang/String;

    .line 6
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzf:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzf:Ljava/lang/String;

    .line 7
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzg:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzg:[B

    .line 8
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzh:[B

    iget-object v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzh:[B

    .line 9
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzi:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzi:Ljava/util/List;

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzj:I

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzk:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zznv;->zzk:[B

    .line 12
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzb:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzc:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzg:[B

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzh:[B

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzi:Ljava/util/List;

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzj:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzk:[B

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zza:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzb:Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzc:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzd:Ljava/lang/String;

    iget-wide v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zze:J

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzf:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzg:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v8, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzh:[B

    if-nez v0, :cond_1

    move-object v9, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    .line 3
    :goto_1
    iget-object v10, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzi:Ljava/util/List;

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzj:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzk:[B

    if-nez v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    :goto_2
    move-object v12, v1

    .line 6
    filled-new-array/range {v2 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PresenceDevice:<deviceId: %s, deviceName: %s, deviceType: %s, deviceImageUrl: %s, discoveryTimestampMillis: %s, endpointId: %s, endpointInfo: %s, bluetoothMacAddress hash: %s, actions: %s, identityType: %s, connectivityBytes hash: %s>"

    .line 8
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/nearby/zznv;->zza:J

    .line 2
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzb:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzc:I

    .line 4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zznv;->zze:J

    .line 6
    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzf:Ljava/lang/String;

    .line 7
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zznv;->zzb()[B

    move-result-object v1

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zznv;->zza()[B

    move-result-object v1

    .line 11
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzi:Ljava/util/List;

    if-nez v0, :cond_0

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/nearby/zzsq;->zzl()Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/nearby/zzsq;->zzk(Ljava/util/Collection;)Lcom/google/android/gms/internal/nearby/zzsq;

    move-result-object v0

    :goto_0
    const/16 v1, 0x9

    .line 13
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v0, 0xa

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzj:I

    .line 14
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzk:[B

    .line 15
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 16
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzh:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public final zzb()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zznv;->zzg:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method
