.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzt;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzt;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzt;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzt;->zzc:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzt;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzt;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzt;->zzc:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/google/android/play/core/hsdp/service/zzai;->zzn(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
