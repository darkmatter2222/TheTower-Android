.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzw;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzai;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:I

.field public final synthetic zzd:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzb:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzc:I

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzd:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zza:Lcom/google/android/play/core/hsdp/service/zzai;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzb:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzc:I

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzw;->zzd:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/play/core/hsdp/service/zzai;->zzm(Lcom/google/android/play/core/hsdp/service/zzai;Ljava/lang/String;ILjava/lang/Runnable;)V

    return-void
.end method
