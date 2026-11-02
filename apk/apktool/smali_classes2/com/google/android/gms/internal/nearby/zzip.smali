.class final Lcom/google/android/gms/internal/nearby/zzip;
.super Lcom/google/android/gms/internal/nearby/zzjh;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:[B

.field final synthetic zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

.field final synthetic zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzji;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zzip;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zzip;->zzb:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zzip;->zzc:[B

    iput-object p6, p0, Lcom/google/android/gms/internal/nearby/zzip;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p7, p0, Lcom/google/android/gms/internal/nearby/zzip;->zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/nearby/zzjh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/nearby/zzjg;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgy;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzip;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zzip;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzip;->zzc:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/nearby/zzip;->zzd:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iget-object v4, p0, Lcom/google/android/gms/internal/nearby/zzip;->zze:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v5

    .line 3
    check-cast v5, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v6, Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-direct {v6}, Lcom/google/android/gms/internal/nearby/zzmi;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v7, p0}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/nearby/zzmi;->zzi(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 5
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/nearby/zzmi;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 6
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/nearby/zzmi;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 7
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/nearby/zzmi;->zze([B)Lcom/google/android/gms/internal/nearby/zzmi;

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzgn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzgy;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 8
    invoke-direct {v0, p1, v4}, Lcom/google/android/gms/internal/nearby/zzgn;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 9
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/nearby/zzmi;->zza(Lcom/google/android/gms/internal/nearby/zzjs;)Lcom/google/android/gms/internal/nearby/zzmi;

    new-instance p1, Lcom/google/android/gms/internal/nearby/zzgb;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/nearby/zzgb;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 10
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/nearby/zzmi;->zzc(Lcom/google/android/gms/internal/nearby/zzjy;)Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/nearby/zzmi;->zzj()Lcom/google/android/gms/internal/nearby/zzmk;

    move-result-object p1

    .line 11
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzi(Lcom/google/android/gms/internal/nearby/zzmk;)V

    return-void
.end method
