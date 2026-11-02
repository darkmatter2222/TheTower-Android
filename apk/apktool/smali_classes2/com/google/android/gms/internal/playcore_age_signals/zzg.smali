.class public final synthetic Lcom/google/android/gms/internal/playcore_age_signals/zzg;
.super Ljava/lang/Object;
.source "com.google.android.play:age-signals@@0.0.3"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

.field public final synthetic zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/playcore_age_signals/zzo;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    iput-object p2, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzg;->zza:Lcom/google/android/gms/internal/playcore_age_signals/zzo;

    iget-object v1, p0, Lcom/google/android/gms/internal/playcore_age_signals/zzg;->zzb:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/playcore_age_signals/zzo;->zzk(Lcom/google/android/gms/internal/playcore_age_signals/zzo;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
