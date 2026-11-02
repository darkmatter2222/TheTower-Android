.class abstract Lcom/google/android/play/core/hsdp/service/zzm;
.super Lcom/google/android/play/core/hsdp/protocol/zzd;
.source "com.google.android.play:hsdp@@2.0.1"


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/hsdp/protocol/zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "statusCode"

    const/16 v1, 0x2436

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x2438

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2441

    if-eq p1, v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzm;->zzc(I)V

    return-void

    :cond_0
    const-string p1, "HpoaClientImpl"

    const-string v0, "onStateChange: HPOA_SERVICE_NO_OP"

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/play/core/hsdp/service/zzm;->zzd()V

    return-void
.end method

.method abstract zzc(I)V
.end method

.method abstract zzd()V
.end method
