.class final Lcom/google/android/gms/internal/playcore_age_signals/zzk;
.super Lcom/google/android/gms/internal/playcore_age_signals/zze;
.source "com.google.android.play:age-signals@@0.0.3"


# instance fields
.field final synthetic zza:Landroid/os/IBinder;

.field final synthetic zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/playcore_age_signals/zzm;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzk;->zza:Landroid/os/IBinder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzk;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzm;

    invoke-direct {p0}, Lcom/google/android/gms/internal/playcore_age_signals/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzk;->zza:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/play/agesignals/protocol/IAgeSignalsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/play/agesignals/protocol/IAgeSignalsService;

    move-result-object v0

    .line 2
    check-cast v0, Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzk;->zzb:Lcom/google/android/gms/internal/playcore_age_signals/zzm;

    iget-object v1, v1, Lcom/google/android/gms/internal/playcore_age_signals/zzm;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzn(Lcom/google/android/gms/internal/playcore_age_signals/zzo;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzr(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)V

    const/4 v0, 0x0

    .line 4
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzm(Lcom/google/android/gms/internal/playcore_age_signals/zzo;Z)V

    invoke-static {v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzh(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 6
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzh(Lcom/google/android/gms/internal/playcore_age_signals/zzo;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
