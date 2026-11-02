.class final synthetic Lcom/google/android/gms/internal/cloudmessaging/zzk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@17.4.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/cloudmessaging/zzm;

.field private final synthetic zzb:Lcom/google/android/gms/cloudmessaging/UnregisterRequest;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/cloudmessaging/UnregisterRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cloudmessaging/zzk;->zza:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    iput-object p2, p0, Lcom/google/android/gms/internal/cloudmessaging/zzk;->zzb:Lcom/google/android/gms/cloudmessaging/UnregisterRequest;

    return-void
.end method


# virtual methods
.method public final synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cloudmessaging/zzk;->zza:Lcom/google/android/gms/internal/cloudmessaging/zzm;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lcom/google/android/gms/internal/cloudmessaging/zzd;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/cloudmessaging/zzj;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/cloudmessaging/zzj;-><init>(Lcom/google/android/gms/internal/cloudmessaging/zzm;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cloudmessaging/zzd;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cloudmessaging/zze;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cloudmessaging/zzd;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/cloudmessaging/zzq;->zza(Landroid/content/Context;)Lcom/google/android/gms/common/api/ApiMetadata;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/cloudmessaging/zzk;->zzb:Lcom/google/android/gms/cloudmessaging/UnregisterRequest;

    .line 4
    invoke-virtual {p2, v1, v0, p1}, Lcom/google/android/gms/internal/cloudmessaging/zze;->zzd(Lcom/google/android/gms/common/api/internal/IStatusCallback;Lcom/google/android/gms/cloudmessaging/UnregisterRequest;Lcom/google/android/gms/common/api/ApiMetadata;)V

    return-void
.end method
