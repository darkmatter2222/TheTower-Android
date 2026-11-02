.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzab;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzae;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:I

.field public final synthetic zzd:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzc:I

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzh(Lcom/google/android/play/core/hsdp/service/zzai;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/hsdp/service/zzay;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No active overlay for target package: "

    .line 2
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Cannot report error."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HsdpClientImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzd:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/play/core/hsdp/service/zzab;->zzc:I

    new-instance v4, Landroid/os/Bundle;

    .line 3
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "targetPackage"

    .line 4
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "errorCode"

    .line 5
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "errorMessage"

    .line 6
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzay;->zza()Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;

    move-result-object v0

    .line 7
    invoke-interface {v0, v4}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;->onError(Landroid/os/Bundle;)V

    return-void
.end method
