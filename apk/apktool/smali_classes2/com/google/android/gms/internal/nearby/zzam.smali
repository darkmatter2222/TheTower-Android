.class final Lcom/google/android/gms/internal/nearby/zzam;
.super Lcom/google/android/gms/internal/nearby/zzdo;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzax;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/nearby/zzam;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzdo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/common/api/Status;J)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/nearby/exposurenotification/ExposureNotificationStatus;->zza(J)Lcom/google/android/gms/internal/nearby/zzss;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zzam;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/TaskUtil;->trySetResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    return-void
.end method
