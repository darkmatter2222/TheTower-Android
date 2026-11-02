.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbl;

.field public final synthetic zzb:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbl;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zzb:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zza:Lcom/google/android/play/core/hsdp/service/zzbl;

    iget-object v1, v0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzh(Lcom/google/android/play/core/hsdp/service/zzbn;)Lcom/google/android/play/core/hsdp/service/zzba;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzbj;->zzb:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/google/android/play/core/hsdp/service/zzba;->zza(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IInterface;

    invoke-static {v1, v2}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzo(Lcom/google/android/play/core/hsdp/service/zzbn;Landroid/os/IInterface;)V

    const-string v2, "ServiceConnMgrImpl"

    const-string v3, "notifyOnConnected"

    .line 2
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzp(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    const-string v2, "ServiceConnMgrImpl"

    const/4 v3, 0x4

    .line 4
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ServiceConnMgrImpl"

    const-string v3, "linkToDeath"

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    move-object v4, v3

    check-cast v4, Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 13
    const-string v3, "ServiceConnMgrImpl"

    const-string v4, "linkToDeath failed"

    .line 8
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzn(Lcom/google/android/play/core/hsdp/service/zzbn;Z)V

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 11
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
