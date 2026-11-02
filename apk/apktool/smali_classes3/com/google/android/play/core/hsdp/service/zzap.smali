.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzap;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzap;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzap;->zza:Lcom/google/android/play/core/hsdp/service/zzar;

    iget-object v0, v0, Lcom/google/android/play/core/hsdp/service/zzar;->zze:Lcom/google/android/play/core/hsdp/service/zzat;

    invoke-virtual {v0}, Lcom/google/android/play/core/hsdp/service/zzat;->zza()V

    return-void
.end method
