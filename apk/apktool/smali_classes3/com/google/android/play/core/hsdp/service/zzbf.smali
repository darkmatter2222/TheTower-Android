.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzbn;

.field public final synthetic zzb:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zzb:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zza:Lcom/google/android/play/core/hsdp/service/zzbn;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzbf;->zzb:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzbn;->zzm(Lcom/google/android/play/core/hsdp/service/zzbn;Ljava/lang/Runnable;)V

    return-void
.end method
