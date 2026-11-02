.class public final Lcom/google/android/gms/internal/nearby/zzgy;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private zze:J

.field private final zzf:Ljava/util/Set;

.field private final zzg:Ljava/util/Set;

.field private final zzh:Ljava/util/Set;

.field private final zzi:Ljava/util/Set;

.field private final zzj:Ljava/util/Set;

.field private zzk:Lcom/google/android/gms/internal/nearby/zzlt;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/nearby/connection/ConnectionsOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    const/16 v3, 0x36

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 2
    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/nearby/zzgy;->zzf:Ljava/util/Set;

    new-instance p1, Landroidx/collection/ArraySet;

    .line 3
    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/nearby/zzgy;->zzg:Ljava/util/Set;

    new-instance p1, Landroidx/collection/ArraySet;

    .line 4
    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/nearby/zzgy;->zzh:Ljava/util/Set;

    new-instance p1, Landroidx/collection/ArraySet;

    .line 5
    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    new-instance p1, Landroidx/collection/ArraySet;

    .line 6
    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/internal/nearby/zzgy;->zzj:Ljava/util/Set;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/nearby/zzmd;->zzc(Ljava/io/File;)V

    return-void
.end method

.method private static zzG(I)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lcom/google/android/gms/nearby/connection/ConnectionsStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private final zzH()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzf:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nearby/zzgg;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzgg;->zze()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzg:Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nearby/zzgk;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzgk;->zzf()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzh:Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nearby/zzgk;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzgk;->zzf()V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nearby/zzgk;

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzgk;->zzf()V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzj:Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/nearby/zzgk;

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/nearby/zzgk;->zzf()V

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzf:Ljava/util/Set;

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzg:Ljava/util/Set;

    .line 12
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzh:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzj:Ljava/util/Set;

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzk:Lcom/google/android/gms/internal/nearby/zzlt;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzlt;->zzd()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzk:Lcom/google/android/gms/internal/nearby/zzlt;

    :cond_5
    return-void
.end method

.method static bridge synthetic zzp(I)Lcom/google/android/gms/common/api/Status;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->zzG(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    return-object p0
.end method

.method public static zzq(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/nearby/connection/ConnectionsOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/internal/nearby/zzgy;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzgy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/nearby/zzgy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/nearby/connection/ConnectionsOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    iput-wide p0, v0, Lcom/google/android/gms/internal/nearby/zzgy;->zze:J

    return-object v0
.end method


# virtual methods
.method protected final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/internal/nearby/zzkd;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzkd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nearby/zzkd;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzfp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzfp;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzf(Lcom/google/android/gms/internal/nearby/zzfp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    const-string v1, "NearbyConnectionsClient"

    const-string v2, "Failed to notify client disconnect."

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->zzH()V

    .line 6
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void
.end method

.method public final getApiFeatures()[Lcom/google/android/gms/common/Feature;
    .locals 3

    const/16 v0, 0x8

    .line 1
    new-array v0, v0, [Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzf:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzD:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzH:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzF:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzI:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzE:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzg:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/nearby/zza;->zzG:Lcom/google/android/gms/common/Feature;

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "clientId"

    iget-wide v2, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zze:J

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.internal.connection.INearbyConnectionService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.connection.service.START"

    return-object v0
.end method

.method protected final bridge synthetic onConnectedLocked(Landroid/os/IInterface;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/nearby/zzkd;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectedLocked(Landroid/os/IInterface;)V

    new-instance p1, Lcom/google/android/gms/internal/nearby/zzlt;

    .line 3
    invoke-direct {p1}, Lcom/google/android/gms/internal/nearby/zzlt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzk:Lcom/google/android/gms/internal/nearby/zzlt;

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->zzH()V

    move p1, v0

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/GmsClient;->onConnectionSuspended(I)V

    return-void
.end method

.method public final requiresGooglePlayServices()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/nearby/Nearby;->zza(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final usesClientTelemetry()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zzA(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfx;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/nearby/zzfx;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmq;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgx;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgx;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmq;->zzg(Lcom/google/android/gms/internal/nearby/zzkm;)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmq;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/nearby/zzmq;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 7
    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/nearby/zzmq;->zzf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzmq;->zzb(Lcom/google/android/gms/internal/nearby/zzjv;)Lcom/google/android/gms/internal/nearby/zzmq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmq;->zzi()Lcom/google/android/gms/internal/nearby/zzms;

    move-result-object p1

    .line 9
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzk(Lcom/google/android/gms/internal/nearby/zzms;)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[BLjava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfx;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/nearby/zzfx;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmq;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgx;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgx;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmq;->zzg(Lcom/google/android/gms/internal/nearby/zzkm;)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmq;->zzd([B)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/nearby/zzmq;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 7
    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/nearby/zzmq;->zzf(Lcom/google/android/gms/nearby/connection/AdvertisingOptions;)Lcom/google/android/gms/internal/nearby/zzmq;

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzmq;->zzb(Lcom/google/android/gms/internal/nearby/zzjv;)Lcom/google/android/gms/internal/nearby/zzmq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmq;->zzi()Lcom/google/android/gms/internal/nearby/zzms;

    move-result-object p1

    .line 9
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzk(Lcom/google/android/gms/internal/nearby/zzms;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzgg;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/nearby/zzgg;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzf:Ljava/util/Set;

    .line 2
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmu;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmu;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmu;->zzd(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmu;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmu;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmu;

    .line 6
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/nearby/zzmu;->zzc(Lcom/google/android/gms/nearby/connection/DiscoveryOptions;)Lcom/google/android/gms/internal/nearby/zzmu;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzmu;->zza(Lcom/google/android/gms/internal/nearby/zzkc;)Lcom/google/android/gms/internal/nearby/zzmu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmu;->zzf()Lcom/google/android/gms/internal/nearby/zzmw;

    move-result-object p1

    .line 8
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzl(Lcom/google/android/gms/internal/nearby/zzmw;)V

    return-void
.end method

.method public final zzD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmy;-><init>()V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzm(Lcom/google/android/gms/internal/nearby/zzmy;)V

    return-void
.end method

.method public final zzE()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzna;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzna;-><init>()V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzn(Lcom/google/android/gms/internal/nearby/zzna;)V

    return-void
.end method

.method public final zzF()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/nearby/zznc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zznc;-><init>()V

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzo(Lcom/google/android/gms/internal/nearby/zznc;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzgu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzk:Lcom/google/android/gms/internal/nearby/zzlt;

    invoke-direct {v0, v1, p3, v2}, Lcom/google/android/gms/internal/nearby/zzgu;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/internal/nearby/zzlt;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzg:Ljava/util/Set;

    .line 2
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzfh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzfh;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzfh;->zze(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzfh;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzfh;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzfh;

    .line 6
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzfh;->zzc(Lcom/google/android/gms/internal/nearby/zzkg;)Lcom/google/android/gms/internal/nearby/zzfh;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzfh;->zzf()Lcom/google/android/gms/internal/nearby/zzfj;

    move-result-object p1

    .line 7
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzd(Lcom/google/android/gms/internal/nearby/zzfj;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzfl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzfl;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzfl;->zzb(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzfl;

    .line 3
    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/nearby/zzfl;->zza(J)Lcom/google/android/gms/internal/nearby/zzfl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzfl;->zzc()Lcom/google/android/gms/internal/nearby/zzfn;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zze(Lcom/google/android/gms/internal/nearby/zzfn;)V

    return-void
.end method

.method public final zzt(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzjj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzjj;-><init>()V

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/nearby/zzjj;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzjj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzjj;->zzb()Lcom/google/android/gms/internal/nearby/zzjl;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzg(Lcom/google/android/gms/internal/nearby/zzjl;)V

    return-void
.end method

.method public final zzu(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzme;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzme;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzme;->zzb(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzme;

    .line 3
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzme;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzme;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzme;->zzc()Lcom/google/android/gms/internal/nearby/zzmg;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzh(Lcom/google/android/gms/internal/nearby/zzmg;)V

    return-void
.end method

.method public final zzv(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfx;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/nearby/zzfx;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmi;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzi(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/nearby/zzmi;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzmi;->zzb(Lcom/google/android/gms/internal/nearby/zzjv;)Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmi;->zzj()Lcom/google/android/gms/internal/nearby/zzmk;

    move-result-object p1

    .line 8
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzi(Lcom/google/android/gms/internal/nearby/zzmk;)V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[BLjava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfx;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/nearby/zzfx;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmi;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzi(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzd([B)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/nearby/zzmi;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzmi;->zzb(Lcom/google/android/gms/internal/nearby/zzjv;)Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmi;->zzj()Lcom/google/android/gms/internal/nearby/zzmk;

    move-result-object p1

    .line 8
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzi(Lcom/google/android/gms/internal/nearby/zzmk;)V

    return-void
.end method

.method public final zzx(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/connection/ConnectionOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfx;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/nearby/zzfx;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmi;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzi(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/nearby/zzmi;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzmi;->zzb(Lcom/google/android/gms/internal/nearby/zzjv;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 8
    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/nearby/zzmi;->zzg(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmi;->zzj()Lcom/google/android/gms/internal/nearby/zzmk;

    move-result-object p1

    .line 9
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzi(Lcom/google/android/gms/internal/nearby/zzmk;)V

    return-void
.end method

.method public final zzy(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[BLjava/lang/String;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/connection/ConnectionOptions;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzfx;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/nearby/zzfx;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p4, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzi:Ljava/util/Set;

    .line 2
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmi;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzi(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 5
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmi;->zzd([B)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 6
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/nearby/zzmi;->zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzmi;->zzb(Lcom/google/android/gms/internal/nearby/zzjv;)Lcom/google/android/gms/internal/nearby/zzmi;

    .line 8
    invoke-virtual {v1, p5}, Lcom/google/android/gms/internal/nearby/zzmi;->zzg(Lcom/google/android/gms/nearby/connection/ConnectionOptions;)Lcom/google/android/gms/internal/nearby/zzmi;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmi;->zzj()Lcom/google/android/gms/internal/nearby/zzmk;

    move-result-object p1

    .line 9
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzi(Lcom/google/android/gms/internal/nearby/zzmk;)V

    return-void
.end method

.method public final zzz(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;[Ljava/lang/String;Lcom/google/android/gms/nearby/connection/Payload;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-eq p4, v1, :cond_1

    const/4 v1, 0x3

    const-string v4, "NearbyConnections"

    if-ne p4, v1, :cond_0

    .line 2
    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object p4

    .line 3
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/nearby/zzlz;

    .line 8
    invoke-direct {v4}, Lcom/google/android/gms/internal/nearby/zzlz;-><init>()V

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/nearby/zzlz;->zzd(J)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzlz;->zzm(I)Lcom/google/android/gms/internal/nearby/zzlz;

    const/4 v5, 0x0

    aget-object v6, p4, v5

    .line 11
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/nearby/zzlz;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/internal/nearby/zzlz;

    aget-object v5, v1, v5

    .line 12
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/nearby/zzlz;->zzl(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 13
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getOffset()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/nearby/zzlz;->zzh(J)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 14
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/nearby/zzlz;->zzj(J)Lcom/google/android/gms/internal/nearby/zzlz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/nearby/zzlz;->zzn()Lcom/google/android/gms/internal/nearby/zzmb;

    move-result-object v2

    .line 15
    aget-object p4, p4, v0

    aget-object v0, v1, v0

    .line 16
    invoke-static {p4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/gms/internal/nearby/zzsc;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/nearby/zzsc;

    move-result-object p4

    .line 8
    invoke-static {v2, p4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p4

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 53
    const-string p4, "Unable to create PFD pipe for streaming payload %d from client to service."

    .line 4
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 6
    invoke-static {v4, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    throw p2

    .line 35
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Outgoing Payload %d has unknown type %d"

    .line 50
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, p3}, [Ljava/lang/Object;

    move-result-object p3

    .line 51
    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const-string p3, "Unknown payload type!"

    .line 52
    invoke-static {v4, p3, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    throw p2

    .line 17
    :cond_1
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->asFile()Lcom/google/android/gms/nearby/connection/Payload$File;

    move-result-object p4

    const-string v0, "File cannot be null for Payload.Type.FILE"

    .line 18
    invoke-static {p4, v0}, Lcom/google/android/gms/internal/nearby/zzsg;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p4}, Lcom/google/android/gms/nearby/connection/Payload$File;->asJavaFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/nearby/zzlz;

    .line 21
    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzlz;-><init>()V

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/nearby/zzlz;->zzd(J)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/nearby/zzlz;->zzm(I)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 24
    invoke-virtual {p4}, Lcom/google/android/gms/nearby/connection/Payload$File;->asParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/nearby/zzlz;->zzb(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzlz;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 26
    invoke-virtual {p4}, Lcom/google/android/gms/nearby/connection/Payload$File;->getSize()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/nearby/zzlz;->zzg(J)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getOffset()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/nearby/zzlz;->zzh(J)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->zzf()Z

    move-result p4

    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/nearby/zzlz;->zze(Z)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 29
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/nearby/zzlz;->zzj(J)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 30
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->zzd()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/nearby/zzlz;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 31
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->zze()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/nearby/zzlz;->zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzlz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzlz;->zzn()Lcom/google/android/gms/internal/nearby/zzmb;

    move-result-object p4

    invoke-static {}, Lcom/google/android/gms/internal/nearby/zzsc;->zzc()Lcom/google/android/gms/internal/nearby/zzsc;

    move-result-object v0

    .line 21
    invoke-static {p4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p4

    goto :goto_2

    .line 20
    :cond_3
    new-instance p4, Lcom/google/android/gms/internal/nearby/zzlz;

    .line 32
    invoke-direct {p4}, Lcom/google/android/gms/internal/nearby/zzlz;-><init>()V

    .line 33
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/google/android/gms/internal/nearby/zzlz;->zzd(J)Lcom/google/android/gms/internal/nearby/zzlz;

    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getType()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/nearby/zzlz;->zzm(I)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 34
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->asBytes()[B

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    const v2, 0x8000

    if-le v1, v2, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzlv;

    .line 36
    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzlv;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzlv;->zza([B)Lcom/google/android/gms/internal/nearby/zzlv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzlv;->zzb()Lcom/google/android/gms/internal/nearby/zzlx;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/google/android/gms/internal/nearby/zzlz;->zzk(Lcom/google/android/gms/internal/nearby/zzlx;)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 37
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/nearby/zzlz;->zza([B)Lcom/google/android/gms/internal/nearby/zzlz;

    goto :goto_1

    .line 35
    :cond_4
    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/nearby/zzlz;->zza([B)Lcom/google/android/gms/internal/nearby/zzlz;

    .line 37
    :goto_1
    invoke-virtual {p4}, Lcom/google/android/gms/internal/nearby/zzlz;->zzn()Lcom/google/android/gms/internal/nearby/zzmb;

    move-result-object p4

    invoke-static {}, Lcom/google/android/gms/internal/nearby/zzsc;->zzc()Lcom/google/android/gms/internal/nearby/zzsc;

    move-result-object v0

    .line 38
    invoke-static {p4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 39
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/nearby/zzgy;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/nearby/zzkd;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzmm;

    invoke-direct {v1}, Lcom/google/android/gms/internal/nearby/zzmm;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/nearby/zzgv;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/nearby/zzgv;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 40
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/nearby/zzmm;->zzc(Lcom/google/android/gms/internal/nearby/zzkj;)Lcom/google/android/gms/internal/nearby/zzmm;

    .line 41
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzmm;->zzb([Ljava/lang/String;)Lcom/google/android/gms/internal/nearby/zzmm;

    iget-object p1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzmb;

    .line 42
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/nearby/zzmm;->zza(Lcom/google/android/gms/internal/nearby/zzmb;)Lcom/google/android/gms/internal/nearby/zzmm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/nearby/zzmm;->zzd()Lcom/google/android/gms/internal/nearby/zzmo;

    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzkd;->zzj(Lcom/google/android/gms/internal/nearby/zzmo;)V

    .line 44
    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzsc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzsc;->zzb()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 45
    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/nearby/zzsc;

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/nearby/zzsc;->zza()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/nearby/zzgy;->zzk:Lcom/google/android/gms/internal/nearby/zzlt;

    if-eqz v0, :cond_5

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->asStream()Lcom/google/android/gms/nearby/connection/Payload$Stream;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/nearby/connection/Payload$Stream;

    invoke-virtual {p2}, Lcom/google/android/gms/nearby/connection/Payload$Stream;->asInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 46
    check-cast p1, Landroid/util/Pair;

    .line 47
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v3, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-object p1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/nearby/zzmb;

    .line 48
    invoke-virtual {p3}, Lcom/google/android/gms/nearby/connection/Payload;->getId()J

    move-result-wide v5

    .line 49
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/nearby/zzlt;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/OutputStream;Lcom/google/android/gms/internal/nearby/zzmb;J)V

    :cond_5
    return-void

    :catch_1
    move-exception v0

    move-object p2, v0

    .line 7
    const-string p3, "NearbyConnectionsClient"

    const-string p4, "Failed to create a Parcelable Payload."

    .line 54
    invoke-static {p3, p4, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x1f4d

    .line 55
    invoke-static {p2}, Lcom/google/android/gms/internal/nearby/zzgy;->zzG(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    return-void
.end method
