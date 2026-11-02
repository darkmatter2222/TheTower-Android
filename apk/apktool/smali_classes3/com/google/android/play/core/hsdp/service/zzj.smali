.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzp;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zza:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzj;->zzb:Landroid/os/Bundle;

    :try_start_0
    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-eqz v0, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/google/android/play/core/hsdp/service/zzbc;

    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzb()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/protocol/zzc;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, v1}, Lcom/google/android/play/core/hsdp/protocol/zzc;->zzc(Landroid/os/Bundle;)V

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

    const-string v2, "Failed to call hpoaService.endSession"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
