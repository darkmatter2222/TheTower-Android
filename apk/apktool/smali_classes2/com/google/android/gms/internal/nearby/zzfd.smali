.class public final Lcom/google/android/gms/internal/nearby/zzfd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method public static zza(Lcom/google/android/gms/tasks/Task;J)Lcom/google/android/gms/tasks/Task;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzfb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/nearby/zzfb;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    new-instance p0, Lcom/google/android/gms/internal/nearby/zzh;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/nearby/zzh;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzfc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/nearby/zzfc;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gms/internal/nearby/zzh;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method
