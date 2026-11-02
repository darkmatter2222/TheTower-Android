.class public final Lcom/google/android/gms/internal/nearby/zzqa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/nearby/zzqa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zza:Lcom/google/android/gms/internal/nearby/zzpu;

.field private zzb:Lcom/google/android/gms/internal/nearby/zzpu;

.field private zzc:Lcom/google/android/gms/internal/nearby/zzpu;

.field private zzd:J

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzqb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nearby/zzqb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nearby/zzqa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/16 v0, -0x80

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zze:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzpu;Lcom/google/android/gms/internal/nearby/zzpu;Lcom/google/android/gms/internal/nearby/zzpu;JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zza:Lcom/google/android/gms/internal/nearby/zzpu;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzb:Lcom/google/android/gms/internal/nearby/zzpu;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzc:Lcom/google/android/gms/internal/nearby/zzpu;

    iput-wide p4, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzd:J

    iput p6, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zze:I

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
    instance-of v1, p1, Lcom/google/android/gms/internal/nearby/zzqa;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzqa;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zza:Lcom/google/android/gms/internal/nearby/zzpu;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzqa;->zza:Lcom/google/android/gms/internal/nearby/zzpu;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzb:Lcom/google/android/gms/internal/nearby/zzpu;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzqa;->zzb:Lcom/google/android/gms/internal/nearby/zzpu;

    .line 4
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzc:Lcom/google/android/gms/internal/nearby/zzpu;

    iget-object v3, p1, Lcom/google/android/gms/internal/nearby/zzqa;->zzc:Lcom/google/android/gms/internal/nearby/zzpu;

    .line 5
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzd:J

    .line 6
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/nearby/zzqa;->zzd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zze:I

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p1, p1, Lcom/google/android/gms/internal/nearby/zzqa;->zze:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zza:Lcom/google/android/gms/internal/nearby/zzpu;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzb:Lcom/google/android/gms/internal/nearby/zzpu;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzc:Lcom/google/android/gms/internal/nearby/zzpu;

    iget-wide v3, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzd:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zze:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

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

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zza:Lcom/google/android/gms/internal/nearby/zzpu;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzb:Lcom/google/android/gms/internal/nearby/zzpu;

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzc:Lcom/google/android/gms/internal/nearby/zzpu;

    .line 4
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget-wide v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzd:J

    .line 5
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/4 p2, 0x5

    iget v1, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zze:I

    .line 6
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zze:I

    return v0
.end method

.method public final zzb()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzd:J

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/nearby/zzpu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzb:Lcom/google/android/gms/internal/nearby/zzpu;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/nearby/zzpu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zza:Lcom/google/android/gms/internal/nearby/zzpu;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/nearby/zzpu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqa;->zzc:Lcom/google/android/gms/internal/nearby/zzpu;

    return-object v0
.end method
