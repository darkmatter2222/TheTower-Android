.class public Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/uwb/RangingParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:I

.field private zze:[B

.field private zzf:[B

.field private zzg:Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

.field private final zzh:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzb:I

    iput v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzc:I

    iput v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzd:I

    invoke-static {}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->zza()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zze:[B

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzh:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zza:I

    return-void
.end method


# virtual methods
.method public addPeerDevice(Lcom/google/android/gms/nearby/uwb/UwbDevice;)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 1

    .line 1
    const-string v0, "peerDevice cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzh:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/nearby/uwb/RangingParameters;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzh:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "At least 1 peer device must be set."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzb:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zza:I

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 3
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzb:I

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zze:[B

    if-eqz v0, :cond_3

    array-length v0, v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 4
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzd:I

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    .line 5
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzf:[B

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    .line 6
    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    :cond_6
    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzb:I

    const/4 v3, 0x4

    const/16 v4, 0x20

    const/16 v5, 0x10

    if-eq v0, v3, :cond_7

    const/4 v3, 0x5

    if-eq v0, v3, :cond_7

    const/4 v3, 0x6

    if-ne v0, v3, :cond_c

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zze:[B

    if-eqz v0, :cond_9

    array-length v0, v0

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_9

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v2

    .line 7
    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzd:I

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v2

    .line 8
    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzf:[B

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_7

    :cond_b
    move v0, v2

    .line 9
    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    :cond_c
    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzb:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_12

    iget v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzd:I

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_8

    :cond_d
    move v0, v2

    .line 10
    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zze:[B

    if-eqz v0, :cond_f

    array-length v0, v0

    if-eq v0, v5, :cond_e

    if-ne v0, v4, :cond_f

    :cond_e
    move v0, v1

    goto :goto_9

    :cond_f
    move v0, v2

    .line 11
    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzf:[B

    if-eqz v0, :cond_10

    array-length v0, v0

    if-eq v0, v5, :cond_11

    if-ne v0, v4, :cond_10

    goto :goto_a

    :cond_10
    move v1, v2

    .line 12
    :cond_11
    :goto_a
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 13
    :cond_12
    new-instance v2, Lcom/google/android/gms/nearby/uwb/RangingParameters;

    iget v3, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzb:I

    iget v4, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzc:I

    iget v5, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzd:I

    iget-object v6, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zze:[B

    iget-object v7, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzf:[B

    iget-object v8, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzg:Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

    iget v9, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zza:I

    iget-object v10, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzh:Ljava/util/List;

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/nearby/uwb/RangingParameters;-><init>(III[B[BLcom/google/android/gms/nearby/uwb/UwbComplexChannel;ILjava/util/List;Lcom/google/android/gms/nearby/uwb/zza;)V

    return-object v2
.end method

.method public setComplexChannel(Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzg:Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

    return-object p0
.end method

.method public setRangingUpdateRate(I)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zza:I

    return-object p0
.end method

.method public setSessionId(I)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzc:I

    return-object p0
.end method

.method public setSessionKeyInfo([B)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zze:[B

    return-object p0
.end method

.method public setSubSessionId(I)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzd:I

    return-object p0
.end method

.method public setSubSessionKeyInfo([B)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzf:[B

    return-object p0
.end method

.method public setUwbConfigId(I)Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/nearby/uwb/RangingParameters$Builder;->zzb:I

    return-object p0
.end method
