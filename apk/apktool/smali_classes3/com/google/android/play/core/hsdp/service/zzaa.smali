.class final Lcom/google/android/play/core/hsdp/service/zzaa;
.super Lcom/google/android/play/core/hsdp/service/zzag;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzaa;->zza:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/hsdp/service/zzag;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Lcom/google/android/play/core/hsdp/service/zzah;)V

    return-void
.end method


# virtual methods
.method final zzd()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzaa;->zza:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;

    invoke-interface {v1, v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;->onCompleted(Landroid/os/Bundle;)V

    return-void
.end method

.method final zze(ILjava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "errorMessage"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaa;->zza:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;

    .line 4
    invoke-interface {p1, v0}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;->onError(Landroid/os/Bundle;)V

    return-void
.end method
