.class public final synthetic Lcom/google/android/gms/internal/nearby/zzqx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzrs;

.field public final synthetic zzb:Lcom/google/android/gms/nearby/uwb/RangingParameters;

.field public final synthetic zzc:Lcom/google/android/gms/internal/nearby/zzrr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/nearby/uwb/RangingParameters;Lcom/google/android/gms/internal/nearby/zzrr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzqx;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzqx;->zzb:Lcom/google/android/gms/nearby/uwb/RangingParameters;

    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzqx;->zzc:Lcom/google/android/gms/internal/nearby/zzrr;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzqx;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzqx;->zzb:Lcom/google/android/gms/nearby/uwb/RangingParameters;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzqx;->zzc:Lcom/google/android/gms/internal/nearby/zzrr;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzqs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqs;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzos;

    new-instance v3, Lcom/google/android/gms/internal/nearby/zzqg;

    invoke-direct {v3}, Lcom/google/android/gms/internal/nearby/zzqg;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/nearby/zzpw;

    .line 2
    invoke-direct {v4}, Lcom/google/android/gms/internal/nearby/zzpw;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getSessionId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzpw;->zzd(I)Lcom/google/android/gms/internal/nearby/zzpw;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getUwbConfigId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzpw;->zzf(I)Lcom/google/android/gms/internal/nearby/zzpw;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getRangingUpdateRate()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzpw;->zzc(I)Lcom/google/android/gms/internal/nearby/zzpw;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getPeerDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    new-array v5, v6, [Lcom/google/android/gms/internal/nearby/zzrv;

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getPeerDevices()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/nearby/zzrv;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getPeerDevices()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/nearby/uwb/UwbDevice;

    add-int/lit8 v9, v6, 0x1

    new-instance v10, Lcom/google/android/gms/internal/nearby/zzrt;

    .line 9
    invoke-direct {v10}, Lcom/google/android/gms/internal/nearby/zzrt;-><init>()V

    new-instance v11, Lcom/google/android/gms/internal/nearby/zzqo;

    invoke-direct {v11}, Lcom/google/android/gms/internal/nearby/zzqo;-><init>()V

    .line 10
    invoke-virtual {v8}, Lcom/google/android/gms/nearby/uwb/UwbDevice;->getAddress()Lcom/google/android/gms/nearby/uwb/UwbAddress;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/nearby/uwb/UwbAddress;->getAddress()[B

    move-result-object v8

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/nearby/zzqo;->zza([B)Lcom/google/android/gms/internal/nearby/zzqo;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/nearby/zzqo;->zzb()Lcom/google/android/gms/internal/nearby/zzqq;

    move-result-object v8

    .line 11
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/nearby/zzrt;->zza(Lcom/google/android/gms/internal/nearby/zzqq;)Lcom/google/android/gms/internal/nearby/zzrt;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/nearby/zzrt;->zzb()Lcom/google/android/gms/internal/nearby/zzrv;

    move-result-object v8

    .line 12
    aput-object v8, v5, v6

    move v6, v9

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzpw;->zzb([Lcom/google/android/gms/internal/nearby/zzrv;)Lcom/google/android/gms/internal/nearby/zzpw;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getSessionKeyInfo()[B

    move-result-object v5

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzpw;->zze([B)Lcom/google/android/gms/internal/nearby/zzpw;

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/RangingParameters;->getComplexChannel()Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/nearby/zzqt;

    .line 17
    invoke-direct {v5}, Lcom/google/android/gms/internal/nearby/zzqt;-><init>()V

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;->getChannel()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/nearby/zzqt;->zza(I)Lcom/google/android/gms/internal/nearby/zzqt;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/UwbComplexChannel;->getPreambleIndex()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/nearby/zzqt;->zzb(I)Lcom/google/android/gms/internal/nearby/zzqt;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/nearby/zzqt;->zzc()Lcom/google/android/gms/internal/nearby/zzqv;

    move-result-object v1

    .line 17
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/nearby/zzpw;->zza(Lcom/google/android/gms/internal/nearby/zzqv;)Lcom/google/android/gms/internal/nearby/zzpw;

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/nearby/zzpw;->zzg()Lcom/google/android/gms/internal/nearby/zzpy;

    move-result-object v1

    .line 20
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/nearby/zzqg;->zzb(Lcom/google/android/gms/internal/nearby/zzpy;)Lcom/google/android/gms/internal/nearby/zzqg;

    .line 21
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/nearby/zzqg;->zza(Lcom/google/android/gms/internal/nearby/zzoy;)Lcom/google/android/gms/internal/nearby/zzqg;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzrk;

    .line 22
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/nearby/zzrk;-><init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 23
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/nearby/zzqg;->zzc(Lcom/google/android/gms/internal/nearby/zzpb;)Lcom/google/android/gms/internal/nearby/zzqg;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/nearby/zzqg;->zzd()Lcom/google/android/gms/internal/nearby/zzqi;

    move-result-object p2

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzos;->zzk(Lcom/google/android/gms/internal/nearby/zzqi;)V

    return-void
.end method
