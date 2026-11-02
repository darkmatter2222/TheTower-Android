.class final Lcom/google/android/gms/common/internal/zzb;
.super Lcom/google/android/gms/internal/common/zzh;
.source "com.google.android.gms:play-services-basement@@18.11.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/BaseGmsClient;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/common/zzh;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private static final zza(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/zzc;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzc;->zze()V

    :cond_0
    return-void
.end method

.method private static final zzb(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/os/Message;->what:I

    if-eq v0, v2, :cond_1

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzb;->zza:Lcom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-eq v1, v3, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x7

    if-eq v1, v5, :cond_3

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->enableLocalFallback()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_4

    .line 6
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v1

    if-nez v1, :cond_4

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    return-void

    .line 8
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x8

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v1, v2, :cond_a

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 9
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzr(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzt()I

    move-result v1

    iget-object v2, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 14
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzs()Z

    move-result v3

    .line 11
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzj()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v6, v7, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(ILandroid/os/IInterface;I)Z

    return-void

    .line 13
    :cond_7
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(ILandroid/os/IInterface;)Z

    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_9
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 14
    invoke-direct {p1, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 13
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 15
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 17
    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_c

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzq()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_2

    .line 20
    :cond_b
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    .line 18
    invoke-direct {p1, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 17
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 19
    invoke-interface {v1, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 21
    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v6, :cond_e

    .line 22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_d

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Landroid/app/PendingIntent;

    :cond_d
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    .line 23
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1, v7}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, v0, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzc:Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    .line 24
    invoke-interface {p1, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lcom/google/android/gms/common/ConnectionResult;)V

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    .line 26
    :cond_e
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 27
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v7, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zze(ILandroid/os/IInterface;I)Z

    goto :goto_3

    .line 28
    :cond_f
    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzd(ILandroid/os/IInterface;)Z

    .line 27
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 29
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzo()Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnectionSuspended(I)V

    .line 30
    :cond_10
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzk()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 31
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4, v3, v7, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzg(IILandroid/os/IInterface;I)Z

    return-void

    .line 32
    :cond_11
    invoke-virtual {v0, v4, v3, v7}, Lcom/google/android/gms/common/internal/BaseGmsClient;->zzf(IILandroid/os/IInterface;)Z

    return-void

    .line 33
    :cond_12
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 34
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zza(Landroid/os/Message;)V

    return-void

    .line 35
    :cond_13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzb(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzc;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zzc;->zzd()V

    return-void

    .line 38
    :cond_14
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x22

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
