.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/playcore_hsdp/zzg;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zza:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zzb:Z

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zza:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/google/android/play/core/hsdp/service/zzaj;->zzb:Z

    invoke-static {v0, v1}, Lcom/google/android/play/core/hsdp/service/HsdpDeepLinkServiceFactory;->lambda$createInternal$0(Landroid/content/Context;Z)Lcom/google/android/play/core/hsdp/service/zze;

    move-result-object v0

    return-object v0
.end method
