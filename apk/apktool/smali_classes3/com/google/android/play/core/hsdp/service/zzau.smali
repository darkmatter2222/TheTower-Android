.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzau;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/play/core/hsdp/service/zzax;

.field public final synthetic zzb:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zzb:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zza:Lcom/google/android/play/core/hsdp/service/zzax;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzau;->zzb:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/zzax;->zza(Lcom/google/android/play/core/hsdp/service/zzax;Landroid/view/View;)V

    return-void
.end method
