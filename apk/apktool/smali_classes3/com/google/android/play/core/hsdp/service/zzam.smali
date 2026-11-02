.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzam;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Landroid/app/Activity;

.field public final synthetic zzb:Ljava/lang/String;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zza:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzd:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzb:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzc:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zza:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/play/core/hsdp/service/zzam;->zzd:Ljava/util/Map;

    invoke-static {v0, v1, v3}, Lcom/google/android/play/core/hsdp/service/zzq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
