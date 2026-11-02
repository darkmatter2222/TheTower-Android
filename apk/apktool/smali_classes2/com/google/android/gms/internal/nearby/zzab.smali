.class public final synthetic Lcom/google/android/gms/internal/nearby/zzab;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-nearby@@18.5.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/nearby/zzax;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/nearby/zzax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzab;->zza:Lcom/google/android/gms/internal/nearby/zzax;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzab;->zza:Lcom/google/android/gms/internal/nearby/zzax;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzn;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzal;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/nearby/zzal;-><init>(Lcom/google/android/gms/internal/nearby/zzax;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzn;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzdr;

    new-instance p2, Lcom/google/android/gms/internal/nearby/zzbg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/nearby/zzbg;-><init>()V

    .line 3
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/nearby/zzbg;->zza(Lcom/google/android/gms/internal/nearby/zzcy;)Lcom/google/android/gms/internal/nearby/zzbg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/nearby/zzbg;->zzb()Lcom/google/android/gms/internal/nearby/zzbi;

    move-result-object p2

    .line 4
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/nearby/zzdr;->zzf(Lcom/google/android/gms/internal/nearby/zzbi;)V

    return-void
.end method
