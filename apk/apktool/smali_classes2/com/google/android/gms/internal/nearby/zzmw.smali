.class public final Lcom/google/android/gms/internal/nearby/zzmw;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzmw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzkj;

.field private zzb:Ljava/lang/String;

.field private zzc:J

.field private zzd:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

.field private zze:Lcom/google/android/gms/internal/nearby/zzkc;

.field private zzf:Lcom/google/android/gms/internal/nearby/zzjz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzmx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzmx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzmw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;JLcom/google/android/gms/nearby/connection/DiscoveryOptions;Landroid/os/IBinder;)V
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
    const-string p1, "com.google.android.gms.nearby.internal.connection.IDiscoveryCallback"

    .line 5
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    instance-of v2, p1, Lcom/google/android/gms/internal/nearby/zzjz;

    if-eqz v2, :cond_3

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzjz;

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/nearby/zzjz;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/nearby/zzjz;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-nez p7, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    const-string p2, "com.google.android.gms.nearby.internal.connection.IDiscoveryListener"

    .line 8
    invoke-interface {p7, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    .line 9
    instance-of v0, p2, Lcom/google/android/gms/internal/nearby/zzkc;

    if-eqz v0, :cond_5

    .line 10
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkc;

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzka;

    invoke-direct {v0, p7}, Lcom/google/android/gms/internal/nearby/zzka;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzf:Lcom/google/android/gms/internal/nearby/zzjz;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzb:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzc:J

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzd:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zze:Lcom/google/android/gms/internal/nearby/zzkc;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzmv;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzmw;Lcom/google/android/gms/internal/nearby/zzkc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zze:Lcom/google/android/gms/internal/nearby/zzkc;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzmw;J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzc:J

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/nearby/zzmw;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzd:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    return-void
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/nearby/zzmw;Lcom/google/android/gms/internal/nearby/zzkj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/nearby/zzmw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzb:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzmw;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzmw;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmw;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzf:Lcom/google/android/gms/internal/nearby/zzjz;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmw;->zzf:Lcom/google/android/gms/internal/nearby/zzjz;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzb:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmw;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzc:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzmw;->zzc:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzd:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzmw;->zzd:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    .line 7
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zze:Lcom/google/android/gms/internal/nearby/zzkc;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzmw;->zze:Lcom/google/android/gms/internal/nearby/zzkc;

    .line 8
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzf:Lcom/google/android/gms/internal/nearby/zzjz;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzb:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzc:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzd:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    iget-object v5, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zze:Lcom/google/android/gms/internal/nearby/zzkc;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zza:Lcom/google/android/gms/internal/nearby/zzkj;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzkj;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzf:Lcom/google/android/gms/internal/nearby/zzjz;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zza;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    const/4 v3, 0x2

    .line 3
    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzb:Ljava/lang/String;

    .line 4
    invoke-static {p1, v1, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    iget-wide v5, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzc:J

    .line 5
    invoke-static {p1, v1, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zzd:Lcom/google/android/gms/nearby/connection/DiscoveryOptions;

    .line 6
    invoke-static {p1, v1, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/nearby/zzmw;->zze:Lcom/google/android/gms/internal/nearby/zzkc;

    if-nez p2, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {p2}, Lcom/google/android/gms/internal/nearby/zzkc;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2
    const/4 p2, 0x6

    .line 7
    invoke-static {p1, p2, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
