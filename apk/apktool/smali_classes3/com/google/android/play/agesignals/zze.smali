.class final Lcom/google/android/play/agesignals/zze;
.super Lcom/google/android/gms/internal/playcore_age_signals/zze;
.source "com.google.android.play:age-signals@@0.0.3"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzb:Lcom/google/android/play/agesignals/AgeSignalsRequest;

.field final synthetic zzc:Lcom/google/android/play/agesignals/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/play/agesignals/zzg;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/agesignals/AgeSignalsRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/agesignals/zze;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lcom/google/android/play/agesignals/zze;->zzb:Lcom/google/android/play/agesignals/AgeSignalsRequest;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/agesignals/zze;->zzc:Lcom/google/android/play/agesignals/zzg;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/playcore_age_signals/zze;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/playcore_age_signals/zzp;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/play/agesignals/AgeSignalsException;

    const/4 v0, -0x5

    invoke-direct {p1, v0}, Lcom/google/android/play/agesignals/AgeSignalsException;-><init>(I)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/playcore_age_signals/zze;->zza(Ljava/lang/Exception;)V

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/playcore_age_signals/zze;->zza(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzb()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/agesignals/zze;->zzc:Lcom/google/android/play/agesignals/zzg;

    iget-object v1, v0, Lcom/google/android/play/agesignals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zze()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;

    invoke-static {v0}, Lcom/google/android/play/agesignals/zzg;->zza(Lcom/google/android/play/agesignals/zzg;)Landroid/content/Context;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Bundle;

    .line 3
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "playcore.version.code"

    const/4 v5, 0x3

    .line 4
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v4, Lcom/google/android/play/agesignals/zzf;

    iget-object v5, p0, Lcom/google/android/play/agesignals/zze;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 5
    invoke-direct {v4, v0, v5}, Lcom/google/android/play/agesignals/zzf;-><init>(Lcom/google/android/play/agesignals/zzg;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 6
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;->checkAgeRange(Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/agesignals/zze;->zzb:Lcom/google/android/play/agesignals/AgeSignalsRequest;

    .line 7
    invoke-static {}, Lcom/google/android/play/agesignals/zzg;->zzc()Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "checkAgeSignals(%s)"

    invoke-virtual {v2, v0, v3, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzb(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/google/android/play/agesignals/zze;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    new-instance v1, Lcom/google/android/play/agesignals/AgeSignalsException;

    const/16 v2, -0x64

    invoke-direct {v1, v2}, Lcom/google/android/play/agesignals/AgeSignalsException;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
