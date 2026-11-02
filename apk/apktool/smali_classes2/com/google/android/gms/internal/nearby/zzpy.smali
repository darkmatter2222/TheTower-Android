.class public final Lcom/google/android/gms/internal/nearby/zzpy;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzpy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:[B

.field private zzd:Lcom/google/android/gms/internal/nearby/zzqv;

.field private zze:I

.field private zzf:[Lcom/google/android/gms/internal/nearby/zzrv;

.field private zzg:I

.field private zzh:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzpz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzpz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzpy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(II[BLcom/google/android/gms/internal/nearby/zzqv;I[Lcom/google/android/gms/internal/nearby/zzrv;I[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzc:[B

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzd:Lcom/google/android/gms/internal/nearby/zzqv;

    iput p5, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzf:[Lcom/google/android/gms/internal/nearby/zzrv;

    iput p7, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzg:I

    iput-object p8, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzh:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzpx;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzpy;Lcom/google/android/gms/internal/nearby/zzqv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzd:Lcom/google/android/gms/internal/nearby/zzqv;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzpy;[Lcom/google/android/gms/internal/nearby/zzrv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzf:[Lcom/google/android/gms/internal/nearby/zzrv;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/nearby/zzpy;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zze:I

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/nearby/zzpy;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzb:I

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/nearby/zzpy;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzc:[B

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/nearby/zzpy;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zza:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzpy;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzpy;

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zza:I

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zza:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzb:I

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zzb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzc:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zzc:[B

    .line 5
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzd:Lcom/google/android/gms/internal/nearby/zzqv;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zzd:Lcom/google/android/gms/internal/nearby/zzqv;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zze:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zze:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzf:[Lcom/google/android/gms/internal/nearby/zzrv;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zzf:[Lcom/google/android/gms/internal/nearby/zzrv;

    .line 8
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzg:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zzg:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzh:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzpy;->zzh:[B

    .line 10
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzb:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzc:[B

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzd:Lcom/google/android/gms/internal/nearby/zzqv;

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zze:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzf:[Lcom/google/android/gms/internal/nearby/zzrv;

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzg:I

    .line 6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzh:[B

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zza:I

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzb:I

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzc:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzd:Lcom/google/android/gms/internal/nearby/zzqv;

    .line 5
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zze:I

    .line 6
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzf:[Lcom/google/android/gms/internal/nearby/zzrv;

    .line 7
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 p2, 0x7

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzg:I

    .line 8
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 p2, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpy;->zzh:[B

    .line 9
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
