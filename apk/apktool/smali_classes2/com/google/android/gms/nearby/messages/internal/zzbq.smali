.class final Lcom/google/android/gms/nearby/messages/internal/zzbq;
.super Lcom/google/android/gms/nearby/messages/internal/zzbu;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/nearby/messages/internal/zzbx;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/nearby/messages/internal/zzbu;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzai;

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzbu;->zza()Lcom/google/android/gms/common/api/internal/ListenerHolder;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/zzh;

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzno;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-direct {v1, v3, v2, v0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzh;-><init>(ILandroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzd(Lcom/google/android/gms/nearby/messages/internal/zzh;)V

    return-void
.end method
