.class final Lcom/google/android/gms/internal/nearby/zziq;
.super Lcom/google/android/gms/internal/nearby/zzjh;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:[B

.field final synthetic zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/nearby/zzji;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;[BLcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/nearby/zziq;->zza:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nearby/zziq;->zzb:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/nearby/zziq;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/nearby/zzjh;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/nearby/zzjg;)V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzgy;

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zziq;->zza:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/nearby/zziq;->zzb:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zziq;->zzc:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v3

    .line 3
    check-cast v3, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v4, Lcom/google/android/gms/internal/nearby/zzfh;

    invoke-direct {v4}, Lcom/google/android/gms/internal/nearby/zzfh;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzfh;->zze(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzfh;

    .line 5
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/nearby/zzfh;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzfh;

    .line 6
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/nearby/zzfh;->zzb([B)Lcom/google/android/gms/internal/nearby/zzfh;

    new-instance v0, Lcom/google/android/gms/internal/nearby/zzgn;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzgy;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/nearby/zzgn;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 8
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/nearby/zzfh;->zza(Lcom/google/android/gms/internal/nearby/zzjs;)Lcom/google/android/gms/internal/nearby/zzfh;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/nearby/zzfh;->zzf()Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object p1

    .line 9
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzd(Lcom/google/android/gms/internal/nearby/zzfj;)V

    return-void
.end method
