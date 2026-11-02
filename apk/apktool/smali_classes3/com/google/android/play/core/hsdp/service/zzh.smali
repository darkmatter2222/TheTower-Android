.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzh;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzp;

.field public final synthetic zzb:Landroid/os/Bundle;

.field public final synthetic zzc:Lcom/google/android/play/core/hsdp/protocol/zzd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;Lcom/google/android/play/core/hsdp/protocol/zzd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzh;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzh;->zzb:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzh;->zzc:Lcom/google/android/play/core/hsdp/protocol/zzd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzh;->zzb:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzh;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzh;->zzc:Lcom/google/android/play/core/hsdp/protocol/zzd;

    :try_start_0
    iget-object v1, v1, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-eqz v1, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/hsdp/protocol/zzc;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v1, v0, v2}, Lcom/google/android/play/core/hsdp/protocol/zzc;->zzf(Landroid/os/Bundle;Lcom/google/android/play/core/hsdp/protocol/zze;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "HpoaClientImpl"

    const-string v2, "Failed to call hpoaService.startSession"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
