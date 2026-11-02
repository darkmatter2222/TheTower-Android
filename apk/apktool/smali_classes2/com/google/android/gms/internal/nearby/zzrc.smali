.class public final synthetic Lcom/google/android/gms/internal/nearby/zzrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzrs;

.field public final synthetic zzb:Lcom/google/android/gms/nearby/uwb/UwbAddress;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/nearby/uwb/UwbAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzrc;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzrc;->zzb:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzrc;->zza:Lcom/google/android/gms/internal/nearby/zzrs;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzrc;->zzb:Lcom/google/android/gms/nearby/uwb/UwbAddress;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzqs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzqs;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzos;

    new-instance v2, Lcom/google/android/gms/internal/nearby/zznx;

    invoke-direct {v2}, Lcom/google/android/gms/internal/nearby/zznx;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/nearby/zzqo;

    invoke-direct {v3}, Lcom/google/android/gms/internal/nearby/zzqo;-><init>()V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/nearby/uwb/UwbAddress;->getAddress()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/nearby/zzqo;->zza([B)Lcom/google/android/gms/internal/nearby/zzqo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/nearby/zzqo;->zzb()Lcom/google/android/gms/internal/nearby/zzqq;

    move-result-object v1

    .line 3
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/nearby/zznx;->zza(Lcom/google/android/gms/internal/nearby/zzqq;)Lcom/google/android/gms/internal/nearby/zznx;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzrk;

    .line 4
    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/nearby/zzrk;-><init>(Lcom/google/android/gms/internal/nearby/zzrs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/nearby/zznx;->zzb(Lcom/google/android/gms/internal/nearby/zzpb;)Lcom/google/android/gms/internal/nearby/zznx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/nearby/zznx;->zzc()Lcom/google/android/gms/internal/nearby/zznz;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzos;->zzd(Lcom/google/android/gms/internal/nearby/zznz;)V

    return-void
.end method
