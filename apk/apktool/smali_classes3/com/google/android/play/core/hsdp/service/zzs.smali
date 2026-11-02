.class final Lcom/google/android/play/core/hsdp/service/zzs;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"


# static fields
.field private static zza:Lcom/google/android/play/core/hsdp/service/zzr;


# direct methods
.method public static declared-synchronized zza(Landroid/content/Intent;Landroid/content/Context;)Lcom/google/android/play/core/hsdp/service/zzr;
    .locals 2

    const-class v0, Lcom/google/android/play/core/hsdp/service/zzs;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/google/android/play/core/hsdp/service/zzs;->zza:Lcom/google/android/play/core/hsdp/service/zzr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzai;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    .line 2
    invoke-virtual {v1}, Lcom/google/android/play/core/hsdp/service/zzai;->zzp()V

    sput-object v1, Lcom/google/android/play/core/hsdp/service/zzs;->zza:Lcom/google/android/play/core/hsdp/service/zzr;

    :cond_0
    sget-object p0, Lcom/google/android/play/core/hsdp/service/zzs;->zza:Lcom/google/android/play/core/hsdp/service/zzr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
