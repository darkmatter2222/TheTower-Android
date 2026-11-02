.class final Lcom/google/android/gms/internal/nearby/zzko;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/nearby/zzkp;

.field private final zzb:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzkp;Ljava/lang/ref/WeakReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzko;->zza:Lcom/google/android/gms/internal/nearby/zzkp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzko;->zzb:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzko;->zzb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzko;->zza:Lcom/google/android/gms/internal/nearby/zzkp;

    const/4 v0, 0x1

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nearby/zzkp;->zzc(Lcom/google/android/gms/internal/nearby/zzkp;Z)V

    const-string p1, "NearbyConnections"

    const-string v0, "Activity is visible."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzko;->zza:Lcom/google/android/gms/internal/nearby/zzkp;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzkp;->zzd(Lcom/google/android/gms/internal/nearby/zzkp;)V

    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzko;->zzb:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzko;->zza:Lcom/google/android/gms/internal/nearby/zzkp;

    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/nearby/zzkp;->zzc(Lcom/google/android/gms/internal/nearby/zzkp;Z)V

    const-string p1, "NearbyConnections"

    const-string v0, "Activity is hidden."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/android/gms/internal/nearby/zzko;->zza:Lcom/google/android/gms/internal/nearby/zzkp;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzkp;->zzd(Lcom/google/android/gms/internal/nearby/zzkp;)V

    :cond_0
    return-void
.end method
