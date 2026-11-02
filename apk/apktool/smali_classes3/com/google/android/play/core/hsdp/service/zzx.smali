.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzx;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zzb:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzx;->zzb:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzai;->zzk(Lcom/google/android/play/core/hsdp/service/zzai;Landroid/os/Bundle;)V

    return-void
.end method
