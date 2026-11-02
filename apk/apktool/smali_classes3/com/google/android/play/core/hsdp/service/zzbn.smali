.class final Lcom/google/android/play/core/hsdp/service/zzbn;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/service/zzbc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/List;

.field private final zze:Ljava/util/List;

.field private zzf:Z

.field private final zzg:Landroid/content/Intent;

.field private final zzh:Lcom/google/android/play/core/hsdp/service/zzba;

.field private final zzi:Landroid/os/IBinder$DeathRecipient;

.field private zzj:Landroid/content/ServiceConnection;

.field private zzk:Landroid/os/IInterface;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/hsdp/service/zzba;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg:Landroid/content/Intent;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzh:Lcom/google/android/play/core/hsdp/service/zzba;

    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzbh;

    invoke-direct {p1, p2}, Lcom/google/android/play/core/hsdp/service/zzbh;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/playcore_hsdp/zzj;->zza(Lcom/google/android/gms/internal/playcore_hsdp/zzg;)Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zza:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzbi;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/hsdp/service/zzbi;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzi:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/play/core/hsdp/service/zzbn;)Landroid/os/IInterface;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/play/core/hsdp/service/zzbn;)Lcom/google/android/play/core/hsdp/service/zzba;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzh:Lcom/google/android/play/core/hsdp/service/zzba;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/play/core/hsdp/service/zzbn;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic zzj(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    if-eqz v0, :cond_1

    const-string v0, "ServiceConnMgrImpl"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "Unbind from service."

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzj:Landroid/content/ServiceConnection;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v2, v1

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzj:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "notifyOnDisconnected in unbind()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzs()V

    return-void

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public static synthetic zzk(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "notifyOnDisconnected in reportBinderDeath()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzs()V

    :cond_0
    return-void
.end method

.method public static synthetic zzl(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .locals 3

    .line 1
    const-string v0, "ServiceConnMgrImpl"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzc:Ljava/lang/String;

    const-string v1, "Binder has died: "

    const-string v2, "ServiceConnMgrImpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbe;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzbe;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static synthetic zzm(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    const/4 v1, 0x4

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    if-nez v0, :cond_3

    const-string v0, "ServiceConnMgrImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ServiceConnMgrImpl"

    const-string v2, "Initiate binding to the service."

    .line 2
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Lcom/google/android/play/core/hsdp/service/zzbl;

    const/4 v0, 0x0

    .line 5
    invoke-direct {p1, p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbl;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;Lcom/google/android/play/core/hsdp/service/zzbm;)V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzj:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzg:Landroid/content/Intent;

    const/16 v3, 0x41

    .line 6
    invoke-virtual {v0, v2, p1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ServiceConnMgrImpl"

    .line 7
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ServiceConnMgrImpl"

    const-string v0, "Failed to bind to the service."

    .line 8
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter p0

    .line 9
    :try_start_1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    return-void

    :catchall_1
    move-exception p0

    .line 4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 10
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    if-eqz v0, :cond_5

    const-string v0, "ServiceConnMgrImpl"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "ServiceConnMgrImpl"

    const-string v1, "Waiting to bind to the service."

    .line 12
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzd:Ljava/util/List;

    monitor-enter p0

    .line 13
    :try_start_3
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 15
    :cond_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static bridge synthetic zzn(Lcom/google/android/play/core/hsdp/service/zzbn;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzf:Z

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/play/core/hsdp/service/zzbn;Landroid/os/IInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzbb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/zzbb;->zzq()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static bridge synthetic zzq(Lcom/google/android/play/core/hsdp/service/zzbn;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzs()V

    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/core/hsdp/service/zzbb;

    .line 2
    invoke-interface {v1}, Lcom/google/android/play/core/hsdp/service/zzbb;->zzr()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final zzt(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zza()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzbg;

    invoke-direct {v1, p1}, Lcom/google/android/play/core/hsdp/service/zzbg;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final zza()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zza:Lcom/google/android/gms/internal/playcore_hsdp/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/playcore_hsdp/zzg;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    return-object v0
.end method

.method public final zzb()Landroid/os/IInterface;
    .locals 1

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zzk:Landroid/os/IInterface;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/play/core/hsdp/service/zzbb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbn;->zze:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzd(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbf;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzbf;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbd;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzbd;-><init>(Lcom/google/android/play/core/hsdp/service/zzbn;)V

    invoke-direct {p0, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzt(Ljava/lang/Runnable;)V

    return-void
.end method
