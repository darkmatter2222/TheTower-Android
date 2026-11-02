.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzy;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Ljava/util/List;

.field public final synthetic zzc:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzb:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzc:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzb:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzy;->zzc:Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzl(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/util/List;Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkService$HsdpPrewarmListener;)V

    return-void
.end method
