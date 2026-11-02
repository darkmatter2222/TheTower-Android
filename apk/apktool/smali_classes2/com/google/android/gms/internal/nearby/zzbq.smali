.class public final Lcom/google/android/gms/internal/nearby/zzbq;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzbq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzdf;

.field private zzb:Ljava/lang/String;

.field private zzc:Lcom/google/android/gms/internal/nearby/zzdg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzbr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzbr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzbq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "com.google.android.gms.nearby.exposurenotification.internal.IExposureSummaryResultListener"

    .line 2
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/internal/nearby/zzdg;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/nearby/zzdg;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzdg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nearby/zzdg;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    const-string p1, "com.google.android.gms.nearby.exposurenotification.internal.IExposureSummaryCallback"

    .line 5
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    instance-of v0, p1, Lcom/google/android/gms/internal/nearby/zzdf;

    if-eqz v0, :cond_3

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdf;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzdd;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/nearby/zzdd;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzc:Lcom/google/android/gms/internal/nearby/zzdg;

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zza:Lcom/google/android/gms/internal/nearby/zzdf;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzb:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzbp;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzbq;Lcom/google/android/gms/internal/nearby/zzdf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zza:Lcom/google/android/gms/internal/nearby/zzdf;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzbq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzb:Ljava/lang/String;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzbq;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzbq;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzc:Lcom/google/android/gms/internal/nearby/zzdg;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzbq;->zzc:Lcom/google/android/gms/internal/nearby/zzdg;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zza:Lcom/google/android/gms/internal/nearby/zzdf;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzbq;->zza:Lcom/google/android/gms/internal/nearby/zzdf;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzb:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzbq;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzc:Lcom/google/android/gms/internal/nearby/zzdg;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zza:Lcom/google/android/gms/internal/nearby/zzdf;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzb:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzc:Lcom/google/android/gms/internal/nearby/zzdg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zza;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zza:Lcom/google/android/gms/internal/nearby/zzdf;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/nearby/zzdf;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbq;->zzb:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
