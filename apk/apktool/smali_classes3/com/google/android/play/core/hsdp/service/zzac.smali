.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzac;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzae;

.field public final synthetic zzb:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzae;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zza:Lcom/google/android/play/core/hsdp/service/zzae;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzae;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    invoke-static {v0}, Lcom/google/android/play/core/hsdp/service/zzai;->zzh(Lcom/google/android/play/core/hsdp/service/zzai;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzac;->zzb:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
