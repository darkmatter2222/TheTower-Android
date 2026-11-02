.class final Lcom/google/android/play/agesignals/zzf;
.super Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback$Stub;
.source "com.google.android.play:age-signals@@0.0.3"


# instance fields
.field final zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

.field final zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic zzc:Lcom/google/android/play/agesignals/zzg;


# direct methods
.method constructor <init>(Lcom/google/android/play/agesignals/zzg;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzf;->zzc:Lcom/google/android/play/agesignals/zzg;

    invoke-direct {p0}, Lcom/google/android/play/agesignals/protocol/IAgeSignalsServiceCallback$Stub;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    const-string v0, "OnCheckAgeSignalsCallback"

    .line 2
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/play/agesignals/zzf;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    iput-object p2, p0, Lcom/google/android/play/agesignals/zzf;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onCompleteCheckAgeSignals(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/agesignals/zzf;->zzc:Lcom/google/android/play/agesignals/zzg;

    iget-object v0, v0, Lcom/google/android/play/agesignals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    iget-object v1, p0, Lcom/google/android/play/agesignals/zzf;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v0, p0, Lcom/google/android/play/agesignals/zzf;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    const-string v3, "onCompleteCheckAgeSignals"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zzc(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 3
    invoke-static {p1}, Lcom/google/android/play/agesignals/AgeSignalsResult;->zza(Landroid/os/Bundle;)Lcom/google/android/play/agesignals/AgeSignalsResult;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onError(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/agesignals/zzf;->zzc:Lcom/google/android/play/agesignals/zzg;

    iget-object v0, v0, Lcom/google/android/play/agesignals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    iget-object v1, p0, Lcom/google/android/play/agesignals/zzf;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzu(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const-string v0, "error.code"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/play/agesignals/zzf;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzd;

    const-string v3, "onError(%d)"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzd;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 4
    new-instance v0, Lcom/google/android/play/agesignals/AgeSignalsException;

    invoke-direct {v0, p1}, Lcom/google/android/play/agesignals/AgeSignalsException;-><init>(I)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
