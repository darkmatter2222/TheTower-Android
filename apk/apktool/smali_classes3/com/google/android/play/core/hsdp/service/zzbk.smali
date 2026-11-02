.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbk;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbk;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbk;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    const-string v3, "ServiceConnMgrImpl"

    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "unlinkToDeath"

    .line 2
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v4, v1

    check-cast v4, Landroid/os/IInterface;

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzo(Lcom/google/android/play/core/hsdp/service/zzbn;Landroid/os/IInterface;)V

    const-string v1, "notifyOnDisconnected in onServiceDisconnected()"

    .line 5
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzq(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    .line 8
    :cond_1
    invoke-static {v0, v2}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzn(Lcom/google/android/play/core/hsdp/service/zzbn;Z)V

    return-void
.end method
