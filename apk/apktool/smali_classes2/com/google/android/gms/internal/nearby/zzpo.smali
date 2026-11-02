.class public final Lcom/google/android/gms/internal/nearby/zzpo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzpo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzrv;

.field private zzb:Lcom/google/android/gms/internal/nearby/zzqa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzpp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzpp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzpo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzrv;Lcom/google/android/gms/internal/nearby/zzqa;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zzb:Lcom/google/android/gms/internal/nearby/zzqa;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzpo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzpo;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zzb:Lcom/google/android/gms/internal/nearby/zzqa;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzpo;->zzb:Lcom/google/android/gms/internal/nearby/zzqa;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zzb:Lcom/google/android/gms/internal/nearby/zzqa;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zzb:Lcom/google/android/gms/internal/nearby/zzqa;

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/nearby/zzqa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zzb:Lcom/google/android/gms/internal/nearby/zzqa;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/nearby/zzrv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzpo;->zza:Lcom/google/android/gms/internal/nearby/zzrv;

    return-object v0
.end method
