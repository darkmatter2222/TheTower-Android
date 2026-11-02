.class final Lcom/google/android/gms/internal/playcore_age_signals/zzh;
.super Lcom/google/android/gms/internal/playcore_age_signals/zze;
.source "com.google.android.play:age-signals@@0.0.3"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/gms/internal/playcore_age_signals/zze;

.field final synthetic zzc:Lcom/google/android/gms/internal/playcore_age_signals/zzo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/playcore_age_signals/zzo;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/playcore_age_signals/zze;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzh;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zze;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzh;->zzc:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/playcore_age_signals/zze;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzh;->zzc:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    invoke-static {v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzg(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzh;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzo(Lcom/google/android/gms/internal/playcore_age_signals/zzo;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzi(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzf(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    move-result-object v2

    const-string v3, "Already connected to the service."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzh;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zze;

    .line 4
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzq(Lcom/google/android/gms/internal/playcore_age_signals/zzo;Lcom/google/android/gms/internal/playcore_age_signals/zze;)V

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
