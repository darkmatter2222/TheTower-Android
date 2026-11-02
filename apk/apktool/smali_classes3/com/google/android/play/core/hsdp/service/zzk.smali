.class final Lcom/google/android/play/core/hsdp/service/zzk;
.super Lcom/google/android/play/core/hsdp/service/zzn;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Landroid/os/IBinder;

.field final synthetic zzd:I

.field final synthetic zze:I

.field final synthetic zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

.field final synthetic zzg:Ljava/util/Map;

.field final synthetic zzh:Lcom/google/android/play/core/hsdp/service/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/hsdp/service/zzp;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;IILcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzc:Landroid/os/IBinder;

    iput p5, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzd:I

    iput p6, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zze:I

    iput-object p7, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    iput-object p8, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzg:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzn;-><init>(Lcom/google/android/play/core/hsdp/service/zzo;)V

    return-void
.end method


# virtual methods
.method public final zzc()V
    .locals 2

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI attached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onAffordanceStarted()V

    return-void
.end method

.method public final zzd()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzg:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/hsdp/service/zzp;->zzd(Lcom/google/android/play/core/hsdp/service/zzp;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI detached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    .line 2
    invoke-interface {v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onAffordanceEnded()V

    return-void
.end method

.method public final zzf(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HPOA error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HpoaClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x243e

    const-string v2, "errorMessage"

    if-ne p1, v1, :cond_0

    const-string p1, "HPOA internal error"

    .line 3
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x243f

    if-ne p1, v1, :cond_1

    .line 8
    const-string p1, "HPOA authentication error"

    .line 4
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2440

    if-ne p1, v1, :cond_2

    const-string p1, "HPOA invalid parameter"

    .line 5
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "HPOA unknown error"

    .line 6
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzf:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onError(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/play/core/hsdp/service/zzp;->zza()V

    return-void
.end method

.method public final zzg()V
    .locals 6

    .line 1
    const-string v0, "HPOA service requests to be disconnected"

    const-string v1, "HpoaClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v2, v0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-nez v2, :cond_0

    const-string v0, "HPOA service is not available"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    .line 3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "appId"

    .line 4
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "callerId"

    .line 5
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzj;

    invoke-direct {v1, v0, v4}, Lcom/google/android/play/core/hsdp/service/zzj;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;)V

    .line 6
    invoke-interface {v2, v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh()V
    .locals 2

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA session ended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzp;->zza()V

    return-void
.end method

.method public final zzi()V
    .locals 9

    .line 1
    const-string v0, "HPOA session started"

    const-string v1, "HpoaClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzh:Lcom/google/android/play/core/hsdp/service/zzp;

    iget-object v2, v0, Lcom/google/android/play/core/hsdp/service/zzp;->zza:Lcom/google/android/play/core/hsdp/service/zzbc;

    if-nez v2, :cond_0

    const-string v0, "HPOA service is not available"

    .line 2
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v1, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zze:I

    iget v3, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzd:I

    iget-object v4, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzc:Landroid/os/IBinder;

    iget-object v5, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zzb:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/play/core/hsdp/service/zzk;->zza:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    .line 3
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "appId"

    .line 4
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "callerId"

    .line 5
    invoke-virtual {v7, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "windowToken"

    .line 6
    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string v4, "clientWindowWidthPx"

    .line 7
    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "clientWindowHeightPx"

    .line 8
    invoke-virtual {v7, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzi;

    invoke-direct {v1, v0, v7}, Lcom/google/android/play/core/hsdp/service/zzi;-><init>(Lcom/google/android/play/core/hsdp/service/zzp;Landroid/os/Bundle;)V

    .line 9
    invoke-interface {v2, v1}, Lcom/google/android/play/core/hsdp/service/zzbc;->zzd(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final zzj()V
    .locals 2

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI to be added"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected final zzk()V
    .locals 2

    .line 1
    const-string v0, "HpoaClientImpl"

    const-string v1, "HPOA UI to be removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
