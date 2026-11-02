.class public final synthetic Lcom/google/android/play/core/hsdp/service/zzg;
.super Ljava/lang/Object;
.source "com.google.android.play:hsdp@@2.0.1"

# interfaces
.implements Lcom/google/android/play/core/hsdp/service/zzba;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/google/android/play/core/hsdp/protocol/zzb;->zzb(Landroid/os/IBinder;)Lcom/google/android/play/core/hsdp/protocol/zzc;

    move-result-object p1

    return-object p1
.end method
