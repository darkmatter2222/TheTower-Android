.class public final Lcom/google/android/gms/internal/nearby/zzmb;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzmb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:J

.field private zzb:I

.field private zzc:[B

.field private zzd:Landroid/os/ParcelFileDescriptor;

.field private zze:Ljava/lang/String;

.field private zzf:J

.field private zzg:Landroid/os/ParcelFileDescriptor;

.field private zzh:Landroid/net/Uri;

.field private zzi:J

.field private zzj:Z

.field private zzk:Lcom/google/android/gms/internal/nearby/zzlx;

.field private zzl:J

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzmc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzmc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzmb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    return-void
.end method

.method constructor <init>(JI[BLandroid/os/ParcelFileDescriptor;Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;Landroid/net/Uri;JZLcom/google/android/gms/internal/nearby/zzlx;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zza:J

    iput p3, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzb:I

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzc:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzd:Landroid/os/ParcelFileDescriptor;

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zze:Ljava/lang/String;

    iput-wide p7, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    iput-object p9, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzg:Landroid/os/ParcelFileDescriptor;

    iput-object p10, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzh:Landroid/net/Uri;

    iput-wide p11, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    iput-boolean p13, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    iput-object p14, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzk:Lcom/google/android/gms/internal/nearby/zzlx;

    move-wide p1, p15

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzm:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzn:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzma;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/nearby/zzmb;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzc:[B

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/nearby/zzmb;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzd:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/nearby/zzmb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzm:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/nearby/zzmb;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zza:J

    return-void
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/nearby/zzmb;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/nearby/zzmb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zze:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/nearby/zzmb;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/nearby/zzmb;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    return-void
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/nearby/zzmb;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzn:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/nearby/zzmb;J)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    return-void
.end method

.method static bridge synthetic zzs(Lcom/google/android/gms/internal/nearby/zzmb;Lcom/google/android/gms/internal/nearby/zzlx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzk:Lcom/google/android/gms/internal/nearby/zzlx;

    return-void
.end method

.method static bridge synthetic zzt(Lcom/google/android/gms/internal/nearby/zzmb;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzg:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/internal/nearby/zzmb;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzb:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzmb;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzmb;

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zza:J

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zza:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzb:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzc:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzc:[B

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzd:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzd:Landroid/os/ParcelFileDescriptor;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zze:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zze:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    .line 8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzg:Landroid/os/ParcelFileDescriptor;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzg:Landroid/os/ParcelFileDescriptor;

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzh:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzh:Landroid/net/Uri;

    .line 10
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzk:Lcom/google/android/gms/internal/nearby/zzlx;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzk:Lcom/google/android/gms/internal/nearby/zzlx;

    .line 13
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    .line 14
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzm:Ljava/lang/String;

    .line 15
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzn:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzmb;->zzn:Ljava/lang/String;

    .line 16
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzb:I

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzc:[B

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzd:Landroid/os/ParcelFileDescriptor;

    iget-object v7, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zze:Ljava/lang/String;

    iget-wide v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzg:Landroid/os/ParcelFileDescriptor;

    iget-object v10, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzh:Landroid/net/Uri;

    iget-wide v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iget-boolean v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzk:Lcom/google/android/gms/internal/nearby/zzlx;

    iget-wide v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzm:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gms/internal/nearby/zzmb;->zzn:Ljava/lang/String;

    move-object/from16 v16, v1

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zza:J

    .line 2
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzb:I

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzc:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzd:Landroid/os/ParcelFileDescriptor;

    .line 5
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zze:Ljava/lang/String;

    .line 6
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    .line 7
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzg:Landroid/os/ParcelFileDescriptor;

    .line 8
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzh:Landroid/net/Uri;

    .line 9
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzi:J

    .line 10
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzj:Z

    .line 11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzk:Lcom/google/android/gms/internal/nearby/zzlx;

    .line 12
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 p2, 0xc

    iget-wide v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzl:J

    .line 13
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 p2, 0xd

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzm:Ljava/lang/String;

    .line 14
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 p2, 0xe

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzn:Ljava/lang/String;

    .line 15
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzb:I

    return v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zza:J

    return-wide v0
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzf:J

    return-wide v0
.end method

.method public final zzd()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzh:Landroid/net/Uri;

    return-object v0
.end method

.method public final zze()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public final zzf()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzg:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/nearby/zzlx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzk:Lcom/google/android/gms/internal/nearby/zzlx;

    return-object v0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzv()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmb;->zzc:[B

    return-object v0
.end method
