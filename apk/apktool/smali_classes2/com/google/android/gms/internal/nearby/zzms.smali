.class public final Lcom/google/android/gms/internal/nearby/zzms;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzms;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzkm;

.field private zzb:Lcom/google/android/gms/internal/nearby/zzjp;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:J

.field private zzf:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

.field private zzg:Lcom/google/android/gms/internal/nearby/zzjv;

.field private zzh:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzmt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzms;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/AdvertisingOptions;Landroid/os/IBinder;[B)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "com.google.android.gms.nearby.internal.connection.IStartAdvertisingResultListener"

    .line 2
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/internal/nearby/zzkm;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/nearby/zzkm;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzkk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nearby/zzkk;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez p2, :cond_2

    move-object p1, v0

    goto :goto_1

    .line 10
    :cond_2
    const-string p1, "com.google.android.gms.nearby.internal.connection.IAdvertisingCallback"

    .line 5
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    instance-of v2, p1, Lcom/google/android/gms/internal/nearby/zzjp;

    if-eqz v2, :cond_3

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzjp;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/nearby/zzjn;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/nearby/zzjn;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-nez p8, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    const-string p2, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    .line 8
    invoke-interface {p8, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/nearby/zzjv;

    if-eqz v0, :cond_5

    .line 10
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzjv;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzjt;

    invoke-direct {v0, p8}, Lcom/google/android/gms/internal/nearby/zzjt;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zza:Lcom/google/android/gms/internal/nearby/zzkm;

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzb:Lcom/google/android/gms/internal/nearby/zzjp;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/nearby/zzms;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzf:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    iput-object p9, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzh:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzmr;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzms;Lcom/google/android/gms/internal/nearby/zzjp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzb:Lcom/google/android/gms/internal/nearby/zzjp;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzms;Lcom/google/android/gms/internal/nearby/zzjv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/nearby/zzms;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zze:J

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/nearby/zzms;[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzh:[B

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/nearby/zzms;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzc:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/nearby/zzms;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzf:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/nearby/zzms;Lcom/google/android/gms/internal/nearby/zzkm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zza:Lcom/google/android/gms/internal/nearby/zzkm;

    return-void
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/nearby/zzms;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzd:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzms;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzms;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zza:Lcom/google/android/gms/internal/nearby/zzkm;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzms;->zza:Lcom/google/android/gms/internal/nearby/zzkm;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzb:Lcom/google/android/gms/internal/nearby/zzjp;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzms;->zzb:Lcom/google/android/gms/internal/nearby/zzjp;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzms;->zzc:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzms;->zzd:Ljava/lang/String;

    .line 6
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzms;->zze:J

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzms;->zze:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzf:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzms;->zzf:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 8
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzms;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    .line 9
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzh:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzms;->zzh:[B

    .line 10
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzms;->zza:Lcom/google/android/gms/internal/nearby/zzkm;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzb:Lcom/google/android/gms/internal/nearby/zzjp;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzc:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/nearby/zzms;->zze:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzf:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    iget-object v6, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    iget-object v7, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzh:[B

    .line 2
    invoke-static {v7}, Ljava/util/Arrays;->hashCode([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zza:Lcom/google/android/gms/internal/nearby/zzkm;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzkm;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzb:Lcom/google/android/gms/internal/nearby/zzjp;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 10
    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzjp;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    iget-wide v5, p0, Lcom/google/android/gms/internal/nearby/zzms;->zze:J

    .line 6
    invoke-static {p1, v1, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzf:Lcom/google/android/gms/nearby/connection/AdvertisingOptions;

    .line 7
    invoke-static {p1, v1, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzg:Lcom/google/android/gms/internal/nearby/zzjv;

    if-nez p2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/nearby/zzjv;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    const/4 p2, 0x7

    .line 8
    invoke-static {p1, p2, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/16 p2, 0x8

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzms;->zzh:[B

    .line 9
    invoke-static {p1, p2, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
