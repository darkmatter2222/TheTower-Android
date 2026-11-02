.class public final Lcom/google/android/gms/internal/nearby/zzmk;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzmk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzkj;

.field private zzb:Lcom/google/android/gms/internal/nearby/zzjs;

.field private zzc:Lcom/google/android/gms/internal/nearby/zzjy;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:[B

.field private zzg:Lcom/google/android/gms/internal/nearby/zzjv;

.field private zzh:[B

.field private zzi:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

.field private final zzj:I

.field private zzk:Lcom/google/android/gms/internal/nearby/zznv;

.field private zzl:Lcom/google/android/gms/nearby/connection/zzk;

.field private zzm:[B

.field private zzn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzml;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzml;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzmk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzj:I

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;[BLcom/google/android/gms/nearby/connection/ConnectionOptions;ILcom/google/android/gms/internal/nearby/zznv;Lcom/google/android/gms/nearby/connection/zzk;[BLjava/lang/String;)V
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
    if-nez p3, :cond_4

    move-object p2, v0

    goto :goto_2

    .line 13
    :cond_4
    const-string p2, "com.google.android.gms.nearby.internal.connection.IConnectionResponseListener"

    .line 8
    invoke-interface {p3, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 9
    instance-of v2, p2, Lcom/google/android/gms/internal/nearby/zzjy;

    if-eqz v2, :cond_5

    .line 10
    check-cast p2, Lcom/google/android/gms/internal/nearby/zzjy;

    goto :goto_2

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/nearby/zzjw;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/nearby/zzjw;-><init>(Landroid/os/IBinder;)V

    :goto_2
    if-nez p7, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    const-string p3, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    .line 11
    invoke-interface {p7, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 12
    instance-of v0, p3, Lcom/google/android/gms/internal/nearby/zzjv;

    if-eqz v0, :cond_7

    .line 13
    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzjv;

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzjt;

    invoke-direct {v0, p7}, Lcom/google/android/gms/internal/nearby/zzjt;-><init>(Landroid/os/IBinder;)V

    .line 14
    :goto_3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzc:Lcom/google/android/gms/internal/nearby/zzjy;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zze:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzf:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    iput-object p8, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzh:[B

    iput-object p9, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzi:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    iput p10, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzj:I

    iput-object p11, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzk:Lcom/google/android/gms/internal/nearby/zznv;

    iput-object p12, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzl:Lcom/google/android/gms/nearby/connection/zzk;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzm:[B

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzn:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzmj;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzj:I

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzmk;Lcom/google/android/gms/internal/nearby/zzjs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzmk;Lcom/google/android/gms/internal/nearby/zzjv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/nearby/zzmk;Lcom/google/android/gms/internal/nearby/zzjy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzc:Lcom/google/android/gms/internal/nearby/zzjy;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/nearby/zzmk;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzh:[B

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/nearby/zzmk;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzf:[B

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/nearby/zzmk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzd:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/nearby/zzmk;Lcom/google/android/gms/nearby/connection/ConnectionOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzi:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/nearby/zzmk;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zze:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/nearby/zzmk;Lcom/google/android/gms/internal/nearby/zzkj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzmk;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzmk;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzc:Lcom/google/android/gms/internal/nearby/zzjy;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzc:Lcom/google/android/gms/internal/nearby/zzjy;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzd:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zze:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zze:Ljava/lang/String;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzf:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzf:[B

    .line 8
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzh:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzh:[B

    .line 10
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzi:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzi:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 11
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzj:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzj:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzk:Lcom/google/android/gms/internal/nearby/zznv;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzk:Lcom/google/android/gms/internal/nearby/zznv;

    .line 13
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzl:Lcom/google/android/gms/nearby/connection/zzk;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzl:Lcom/google/android/gms/nearby/connection/zzk;

    .line 14
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzm:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzm:[B

    .line 15
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzn:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzmk;->zzn:Ljava/lang/String;

    .line 16
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzc:Lcom/google/android/gms/internal/nearby/zzjy;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzf:[B

    invoke-static {v5}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    iget-object v7, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzh:[B

    .line 2
    invoke-static {v7}, Ljava/util/Arrays;->hashCode([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzi:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    iget v9, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzj:I

    .line 3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzk:Lcom/google/android/gms/internal/nearby/zznv;

    iget-object v11, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzl:Lcom/google/android/gms/nearby/connection/zzk;

    iget-object v12, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzm:[B

    .line 4
    invoke-static {v12}, Ljava/util/Arrays;->hashCode([B)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzn:Ljava/lang/String;

    filled-new-array/range {v0 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzkj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzb:Lcom/google/android/gms/internal/nearby/zzjs;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 16
    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzjs;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzc:Lcom/google/android/gms/internal/nearby/zzjy;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_2

    .line 16
    :cond_2
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzjy;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2
    const/4 v3, 0x3

    .line 4
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zze:Ljava/lang/String;

    .line 6
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzf:[B

    .line 7
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    if-nez v1, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzjv;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_3
    const/4 v1, 0x7

    .line 8
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzh:[B

    .line 9
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzi:Lcom/google/android/gms/nearby/connection/ConnectionOptions;

    .line 10
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xa

    iget v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzj:I

    .line 11
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzk:Lcom/google/android/gms/internal/nearby/zznv;

    .line 12
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzm:[B

    .line 13
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzn:Ljava/lang/String;

    .line 14
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmk;->zzl:Lcom/google/android/gms/nearby/connection/zzk;

    .line 15
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 16
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
