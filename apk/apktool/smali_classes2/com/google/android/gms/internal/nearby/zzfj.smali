.class public final Lcom/google/android/gms/internal/nearby/zzfj;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzfj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzkj;

.field private zzb:Lcom/google/android/gms/internal/nearby/zzjs;

.field private zzc:Ljava/lang/String;

.field private zzd:[B

.field private zze:Lcom/google/android/gms/internal/nearby/zzkg;

.field private final zzf:I

.field private zzg:Lcom/google/android/gms/internal/nearby/zznv;

.field private zzh:Lcom/google/android/gms/nearby/connection/zzk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzfk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzfj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzf:I

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;ILcom/google/android/gms/internal/nearby/zznv;Lcom/google/android/gms/nearby/connection/zzk;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "com.google.android.gms.nearby.internal.connection.IResultListener"

    .line 2
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/internal/nearby/zzkj;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/nearby/zzkj;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzkh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nearby/zzkh;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez p2, :cond_2

    move-object p1, v0

    goto :goto_1

    .line 10
    :cond_2
    const-string p1, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    .line 5
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    instance-of v2, p1, Lcom/google/android/gms/internal/nearby/zzjs;

    if-eqz v2, :cond_3

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzjs;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/nearby/zzjq;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/nearby/zzjq;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-nez p5, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    const-string p2, "com.google.android.gms.nearby.internal.connection.IPayloadListener"

    .line 8
    invoke-interface {p5, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/nearby/zzkg;

    if-eqz v0, :cond_5

    .line 10
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkg;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzke;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/nearby/zzke;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzd:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zze:Lcom/google/android/gms/internal/nearby/zzkg;

    iput p6, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzf:I

    iput-object p7, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzg:Lcom/google/android/gms/internal/nearby/zznv;

    iput-object p8, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzh:Lcom/google/android/gms/nearby/connection/zzk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzfi;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzf:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzfj;Lcom/google/android/gms/internal/nearby/zzjs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzfj;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzd:[B

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/nearby/zzfj;Lcom/google/android/gms/internal/nearby/zzkg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zze:Lcom/google/android/gms/internal/nearby/zzkg;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/nearby/zzfj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/nearby/zzfj;Lcom/google/android/gms/internal/nearby/zzkj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzfj;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzfj;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zzc:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzd:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zzd:[B

    .line 6
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zze:Lcom/google/android/gms/internal/nearby/zzkg;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zze:Lcom/google/android/gms/internal/nearby/zzkg;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzf:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zzf:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzg:Lcom/google/android/gms/internal/nearby/zznv;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zzg:Lcom/google/android/gms/internal/nearby/zznv;

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzh:Lcom/google/android/gms/nearby/connection/zzk;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzfj;->zzh:Lcom/google/android/gms/nearby/connection/zzk;

    .line 10
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzd:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zze:Lcom/google/android/gms/internal/nearby/zzkg;

    iget v5, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzf:I

    .line 2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzg:Lcom/google/android/gms/internal/nearby/zznv;

    iget-object v7, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzh:Lcom/google/android/gms/nearby/connection/zzk;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzkj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzjs;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzd:[B

    .line 5
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zze:Lcom/google/android/gms/internal/nearby/zzkg;

    if-nez v1, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzkg;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    const/4 v1, 0x5

    .line 6
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzf:I

    .line 7
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzg:Lcom/google/android/gms/internal/nearby/zznv;

    .line 8
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzfj;->zzh:Lcom/google/android/gms/nearby/connection/zzk;

    .line 9
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
