.class final Lcom/google/android/gms/internal/nearby/zzgg;
.super Lcom/google/android/gms/internal/nearby/zzkb;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field private final zzb:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzkb;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zzb:Ljava/util/Set;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/nearby/zzle;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzgg;->zzg(Lcom/google/android/gms/internal/nearby/zzle;)Z

    move-result p0

    return p0
.end method

.method private static zzg(Lcom/google/android/gms/internal/nearby/zzle;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzle;->zza()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzle;->zzb()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzle;->zzb()Ljava/lang/String;

    move-result-object p0

    const-string v0, "__UNRECOGNIZED_BLUETOOTH_DEVICE__"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public final declared-synchronized zzb(Lcom/google/android/gms/internal/nearby/zzlc;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzgc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nearby/zzgc;-><init>(Lcom/google/android/gms/internal/nearby/zzgg;Lcom/google/android/gms/internal/nearby/zzlc;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/nearby/zzle;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzgg;->zzg(Lcom/google/android/gms/internal/nearby/zzle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zzb:Ljava/util/Set;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzle;->zzb()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzgd;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nearby/zzgd;-><init>(Lcom/google/android/gms/internal/nearby/zzgg;Lcom/google/android/gms/internal/nearby/zzle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/nearby/zzlg;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zzb:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzlg;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzge;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/nearby/zzge;-><init>(Lcom/google/android/gms/internal/nearby/zzgg;Lcom/google/android/gms/internal/nearby/zzlg;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final declared-synchronized zze()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zzb:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zza:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/nearby/zzgf;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/nearby/zzgf;-><init>(Lcom/google/android/gms/internal/nearby/zzgg;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->notifyListener(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgg;->zzb:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
