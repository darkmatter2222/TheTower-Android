.class public final Lcom/google/android/gms/nearby/messages/internal/zze;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/nearby/messages/Distance;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/internal/zze;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zza:I

.field public final zzb:I

.field public final zzc:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ID)V
    .locals 0

    const/4 p1, 0x1

    const-wide/high16 p2, 0x7ff8000000000000L    # Double.NaN

    .line 1
    invoke-direct {p0, p1, p1, p2, p3}, Lcom/google/android/gms/nearby/messages/internal/zze;-><init>(IID)V

    return-void
.end method

.method constructor <init>(IID)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zza:I

    iput p2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzb:I

    iput-wide p3, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzc:D

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzc:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/Distance;->getMeters()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzc:D

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/nearby/messages/Distance;->getMeters()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3
    check-cast p1, Lcom/google/android/gms/nearby/messages/Distance;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/nearby/messages/internal/zze;

    if-nez v2, :cond_2

    return v0

    .line 2
    :cond_2
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zze;

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzb:I

    iget v3, p1, Lcom/google/android/gms/nearby/messages/internal/zze;->zzb:I

    if-ne v2, v3, :cond_3

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/nearby/messages/internal/zze;->compareTo(Lcom/google/android/gms/nearby/messages/Distance;)I

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final getAccuracy()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzb:I

    return v0
.end method

.method public final getMeters()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzc:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzc:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzc:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzb:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const-string v2, "UNKNOWN"

    goto :goto_0

    :cond_0
    const-string v2, "LOW"

    :goto_0
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(%.1fm, %s)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zza:I

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzb:I

    .line 3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/android/gms/nearby/messages/internal/zze;->zzc:D

    .line 4
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
