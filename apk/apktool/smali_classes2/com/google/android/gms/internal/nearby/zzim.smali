.class final Lcom/google/android/gms/internal/nearby/zzim;
.super Lcom/google/android/gms/internal/nearby/zzjh;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzji;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/nearby/zzjh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/nearby/zzjg;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzgy;->zzE()V

    return-void
.end method
