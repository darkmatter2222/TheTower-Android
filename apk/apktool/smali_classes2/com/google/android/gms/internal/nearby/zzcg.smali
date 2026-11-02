.class public final Lcom/google/android/gms/internal/nearby/zzcg;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzcg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzdy;

.field private zzb:Lcom/google/android/gms/internal/nearby/zzdv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzcg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 7
    :cond_0
    const-string v1, "com.google.android.gms.nearby.exposurenotification.internal.ITemporaryExposureKeyHistoryResultListener"

    .line 2
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/gms/internal/nearby/zzdv;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/nearby/zzdv;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzdv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nearby/zzdv;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    const-string p1, "com.google.android.gms.nearby.exposurenotification.internal.ITemporaryExposureKeyListCallback"

    .line 5
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    instance-of v0, p1, Lcom/google/android/gms/internal/nearby/zzdy;

    if-eqz v0, :cond_3

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzdy;

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzdw;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/nearby/zzdw;-><init>(Landroid/os/IBinder;)V

    .line 8
    :goto_1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zzb:Lcom/google/android/gms/internal/nearby/zzdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zza:Lcom/google/android/gms/internal/nearby/zzdy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzcf;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzcg;Lcom/google/android/gms/internal/nearby/zzdy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zza:Lcom/google/android/gms/internal/nearby/zzdy;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzcg;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zzb:Lcom/google/android/gms/internal/nearby/zzdv;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzcg;->zzb:Lcom/google/android/gms/internal/nearby/zzdv;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zza:Lcom/google/android/gms/internal/nearby/zzdy;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzcg;->zza:Lcom/google/android/gms/internal/nearby/zzdy;

    .line 4
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zzb:Lcom/google/android/gms/internal/nearby/zzdv;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zza:Lcom/google/android/gms/internal/nearby/zzdy;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zzb:Lcom/google/android/gms/internal/nearby/zzdv;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zza;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzcg;->zza:Lcom/google/android/gms/internal/nearby/zzdy;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/nearby/zzdy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
