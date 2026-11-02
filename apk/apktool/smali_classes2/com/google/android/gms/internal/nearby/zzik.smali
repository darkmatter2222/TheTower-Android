.class final Lcom/google/android/gms/internal/nearby/zzik;
.super Lcom/google/android/gms/internal/nearby/zzjh;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzji;Lcom/google/android/gms/common/api/GoogleApiClient;J)V
    .locals 0

    .line 1
    iput-wide p3, p0, Lcom/google/android/gms/internal/nearby/zzik;->zza:J

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/nearby/zzjh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/nearby/zzjg;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgy;

    iget-wide v0, p0, Lcom/google/android/gms/internal/nearby/zzik;->zza:J

    .line 2
    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/nearby/zzgy;->zzs(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;J)V

    return-void
.end method
