.class abstract Lcom/google/android/play/core/hsdp/service/zzaf;
.super Lcom/google/android/play/core/hsdp/protocol/zzi;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field final synthetic zzb:Lcom/google/android/play/core/hsdp/service/zzai;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Lcom/google/android/play/core/hsdp/service/zzah;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaf;->zzb:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/protocol/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaf;->zzb:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzai;->zza()V

    return-void
.end method

.method public final zzc(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    const-string v1, "hsdpStatusCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "HsdpClientImpl"

    if-nez v1, :cond_0

    const-string v1, "HsdpServiceListener.onStateChange: cannot find status code"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "targetPackage"

    const-string v3, ""

    .line 4
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    .line 5
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const-string v4, " for target package: "

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "HsdpServiceListener.onStateChange: "

    .line 6
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "HsdpServiceListener.onStateChange: cannot find target package"

    .line 8
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string v3, "errorMessage"

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring HSDP service unsupported status code: "

    .line 19
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string v2, "HSDP service cancelled"

    .line 9
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/play/core/hsdp/service/zzaf;->zzf(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 11
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/google/android/play/core/hsdp/service/zzaf;->zzd(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string v2, "HSDP service error"

    .line 12
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/play/core/hsdp/service/zzaf;->zzf(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 14
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/google/android/play/core/hsdp/service/zzaf;->zzg(Ljava/lang/String;)V

    return-void

    .line 15
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/google/android/play/core/hsdp/service/zzaf;->zze(Ljava/lang/String;)V

    return-void

    .line 16
    :pswitch_5
    invoke-virtual {p0, v1}, Lcom/google/android/play/core/hsdp/service/zzaf;->zzh(Ljava/lang/String;)V

    :pswitch_6
    return-void

    :pswitch_7
    const-string v2, "HSDP service unknown status"

    .line 17
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/play/core/hsdp/service/zzaf;->zzf(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract zzd(Ljava/lang/String;)V
.end method

.method abstract zze(Ljava/lang/String;)V
.end method

.method abstract zzf(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method abstract zzg(Ljava/lang/String;)V
.end method

.method abstract zzh(Ljava/lang/String;)V
.end method
