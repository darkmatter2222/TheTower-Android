.class public final Lcom/google/android/gms/internal/nearby/zzbe;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzbe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzcs;

.field private zzb:Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzbf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzbf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzbe;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.nearby.exposurenotification.internal.IDailySummaryListCallback"

    .line 2
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/nearby/zzcs;

    if-eqz v1, :cond_1

    .line 4
    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzcs;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzcq;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nearby/zzcq;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    .line 5
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zza:Lcom/google/android/gms/internal/nearby/zzcs;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zzb:Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzbd;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/nearby/zzbe;Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zzb:Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/nearby/zzbe;Lcom/google/android/gms/internal/nearby/zzcs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zza:Lcom/google/android/gms/internal/nearby/zzcs;

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzbe;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzbe;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zza:Lcom/google/android/gms/internal/nearby/zzcs;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzbe;->zza:Lcom/google/android/gms/internal/nearby/zzcs;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zzb:Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

    iget-object p1, p1, Lcom/google/android/gms/internal/nearby/zzbe;->zzb:Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zza:Lcom/google/android/gms/internal/nearby/zzcs;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zzb:Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zza:Lcom/google/android/gms/internal/nearby/zzcs;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzcs;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzbe;->zzb:Lcom/google/android/gms/nearby/exposurenotification/DailySummariesConfig;

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
