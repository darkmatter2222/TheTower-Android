.class final Lcom/google/android/play/core/hsdp/service/zzbl;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbn;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbn;Lcom/google/android/play/core/hsdp/service/zzbm;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x4

    .line 1
    const-string v1, "ServiceConnMgrImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbj;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/hsdp/service/zzbj;-><init>(Lcom/google/android/play/core/hsdp/service/zzbl;Landroid/os/IBinder;)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzr(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x4

    .line 1
    const-string v1, "ServiceConnMgrImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceDisconnected: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbl;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzbk;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/hsdp/service/zzbk;-><init>(Lcom/google/android/play/core/hsdp/service/zzbl;)V

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzr(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    return-void
.end method
