.class public Lcom/google/android/gms/nearby/uwb/RangingParameters;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/nearby/uwb/RangingParameters$RangingUpdateRate;,
        Lcom/google/android/gms/nearby/uwb/RangingParameters$UwbConfigId;,
        Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    }
.end annotation


# static fields
.field public static final SESSION_ID_UNSET:I

.field public static final SUB_SESSION_ID_UNSET:I

.field private static final zza:[B


# instance fields
.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:[B

.field private final zzf:[B

.field private final zzg:Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

.field private final zzh:Ljava/util/List;

.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zza:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x8t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
    .end array-data
.end method

.method synthetic constructor <init>(III[B[BLcom/google/android/gms/nearby/uwb/UwbComplexChannel;ILjava/util/List;Lcom/google/android/gms/nearby/uwb/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzb:I

    iput p2, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzc:I

    iput p3, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzd:I

    iput-object p4, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zze:[B

    iput-object p5, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzf:[B

    iput-object p6, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzg:Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

    iput p7, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzi:I

    iput-object p8, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzh:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zza()[B
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zza:[B

    return-object v0
.end method


# virtual methods
.method public getComplexChannel()Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzg:Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

    return-object v0
.end method

.method public getPeerDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/nearby/uwb/UwbDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzh:Ljava/util/List;

    return-object v0
.end method

.method public getRangingUpdateRate()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzi:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzc:I

    return v0
.end method

.method public getSessionKeyInfo()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zze:[B

    return-object v0
.end method

.method public getSubSessionId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzd:I

    return v0
.end method

.method public getSubSessionKeyInfo()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzf:[B

    return-object v0
.end method

.method public getUwbConfigId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zzb:I

    return v0
.end method
