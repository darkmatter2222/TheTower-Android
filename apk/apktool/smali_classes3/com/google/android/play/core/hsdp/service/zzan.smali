.class final Lcom/google/android/play/core/hsdp/service/zzan;
.super Lcom/google/android/play/core/hsdp/service/zzas;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field final synthetic zza:Landroid/app/Activity;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/hsdp/service/zzat;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zza:Landroid/app/Activity;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzc:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzd:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/hsdp/service/zzas;-><init>(Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpDeepLinkServiceListener;)V

    return-void
.end method


# virtual methods
.method public final onAffordanceEnded()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HPOA service should not be called in service based HSDP."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAffordanceStarted()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HPOA service should not be called in service based HSDP."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onDeepLinkStarted()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "HSDP Activity should not be started in service based HSDP."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onError(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zza:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/play/core/hsdp/service/zzam;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzc:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/hsdp/service/zzan;->zzd:Ljava/util/Map;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/play/core/hsdp/service/zzam;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/play/core/hsdp/service/zzas;->onError(Landroid/os/Bundle;)V

    return-void
.end method
