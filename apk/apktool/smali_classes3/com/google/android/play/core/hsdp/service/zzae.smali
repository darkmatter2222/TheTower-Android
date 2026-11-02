.class final Lcom/google/android/play/core/hsdp/service/zzae;
.super Lcom/google/android/play/core/hsdp/service/zzaf;
.source "com.google.android.play:hsdp@@2.0.1"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/hsdp/service/zzaf;-><init>(Lcom/google/android/play/core/hsdp/service/zzai;Lcom/google/android/play/core/hsdp/service/zzah;)V

    return-void
.end method


# virtual methods
.method final zzd(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzad;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzad;-><init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v2, 0x5

    invoke-static {v1, p1, v2, v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method final zze(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method final zzf(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzab;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/play/core/hsdp/service/zzab;-><init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 p3, 0x4

    invoke-static {p2, p1, p3, v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method final zzg(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/play/core/hsdp/service/zzac;

    invoke-direct {v0, p0, p1}, Lcom/google/android/play/core/hsdp/service/zzac;-><init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v2, 0x4

    invoke-static {v1, p1, v2, v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method

.method final zzh(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzo(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method
