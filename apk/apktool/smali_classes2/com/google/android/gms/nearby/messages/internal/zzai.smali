.class public final Lcom/google/android/gms/nearby/messages/internal/zzai;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-nearby@@18.5.0"


# instance fields
.field private final zze:Lcom/google/android/gms/internal/nearby/zzns;

.field private final zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

.field private final zzg:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V
    .locals 8

    const/16 v3, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v4, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    new-instance p1, Lcom/google/android/gms/internal/nearby/zzns;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/nearby/zzns;-><init>()V

    iput-object p1, v0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/ClientSettings;->getRealClientPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzp(Landroid/content/Context;)I

    move-result v6

    if-eqz p6, :cond_0

    .line 5
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 6
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;-><init>(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget p1, p6, Lcom/google/android/gms/nearby/messages/MessagesOptions;->zzc:I

    iput p1, v0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzg:I

    return-void

    .line 7
    :cond_0
    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;-><init>(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    const/4 p1, -0x1

    iput p1, v0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzg:I

    return-void
.end method

.method static zzp(Landroid/content/Context;)I
    .locals 1

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    instance-of v0, p0, Landroid/app/Application;

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 3
    :cond_1
    instance-of p0, p0, Landroid/app/Service;

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static zzq(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/nearby/messages/MessagesOptions;)Lcom/google/android/gms/nearby/messages/internal/zzai;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzai;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzai;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/nearby/messages/MessagesOptions;)V

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzp(Landroid/content/Context;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastIceCreamSandwich()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    move-object p0, v1

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x2

    .line 5
    const-string p2, "NearbyMessagesClient"

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Registering ClientLifecycleSafetyNet\'s ActivityLifecycleCallbacks for %s"

    .line 7
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/nearby/messages/internal/zzah;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v0, p3}, Lcom/google/android/gms/nearby/messages/internal/zzah;-><init>(Landroid/app/Activity;Lcom/google/android/gms/nearby/messages/internal/zzai;Lcom/google/android/gms/nearby/messages/internal/zzag;)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_1
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
    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzs;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final disconnect()V
    .locals 3

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2
    const-string v2, "NearbyMessagesClient"

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Failed to emit CLIENT_DISCONNECTED from override of GmsClient#disconnect(): %s"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/nearby/zzns;->zzb()V

    .line 6
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    return-void
.end method

.method protected final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->getGetServiceRequestExtraArgs()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NearbyPermissions"

    iget v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzg:I

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ClientAppContext"

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.messages.internal.INearbyMessagesService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.nearby.messages.service.NearbyMessagesService.START"

    return-object v0
.end method

.method public final requiresGooglePlayServices()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getContext()Landroid/content/Context;

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

.method final zzA(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzno;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzns;->zze(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzno;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/nearby/messages/internal/zzcb;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 6
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/nearby/zzns;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzcb;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    iput-boolean v1, p1, Lcom/google/android/gms/nearby/messages/internal/zzcb;->zzd:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzg(Lcom/google/android/gms/nearby/messages/internal/zzcb;)V

    iget-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzns;->zzd(Ljava/lang/Object;)V

    return-void
.end method

.method final zzB(Lcom/google/android/gms/common/api/internal/ListenerHolder;Landroid/app/PendingIntent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzcg;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzno;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    const/4 p1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzcg;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzj(Lcom/google/android/gms/nearby/messages/internal/zzcg;)V

    return-void
.end method

.method final zzC(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/nearby/zzno;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzns;->zze(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/nearby/zzno;->zzd(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/nearby/messages/internal/zzcg;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 6
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/nearby/zzns;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Lcom/google/android/gms/nearby/messages/internal/zzcg;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzj(Lcom/google/android/gms/nearby/messages/internal/zzcg;)V

    iget-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/nearby/zzns;->zzd(Ljava/lang/Object;)V

    return-void
.end method

.method final zzr(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 1
    const-string v1, "CLIENT_DISCONNECTED"

    goto :goto_0

    .line 9
    :cond_0
    const-string v1, "ACTIVITY_STOPPED"

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->isConnected()Z

    move-result v2

    const/4 v3, 0x3

    const-string v4, "NearbyMessagesClient"

    if-eqz v2, :cond_2

    .line 2
    new-instance v2, Lcom/google/android/gms/nearby/messages/internal/zzj;

    const/4 v5, 0x0

    .line 3
    invoke-direct {v2, v0, v5, p1}, Lcom/google/android/gms/nearby/messages/internal/zzj;-><init>(ILcom/google/android/gms/nearby/messages/internal/ClientAppContext;I)V

    .line 4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Emitting client lifecycle event %s"

    .line 5
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zze(Lcom/google/android/gms/nearby/messages/internal/zzj;)V

    return-void

    .line 7
    :cond_2
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Failed to emit client lifecycle event %s due to GmsClient being disconnected"

    .line 8
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method final zzs(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzae;Lcom/google/android/gms/nearby/messages/internal/zzu;Lcom/google/android/gms/nearby/messages/PublishOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget v6, v0, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zze:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzt(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzae;Lcom/google/android/gms/nearby/messages/internal/zzu;Lcom/google/android/gms/nearby/messages/PublishOptions;I)V

    return-void
.end method

.method final zzt(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzae;Lcom/google/android/gms/nearby/messages/internal/zzu;Lcom/google/android/gms/nearby/messages/PublishOptions;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbz;

    .line 2
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/nearby/messages/PublishOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/nearby/zzno;

    invoke-direct {v4, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object v8, p3

    move/from16 v11, p5

    .line 3
    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/nearby/messages/internal/zzbz;-><init>(ILcom/google/android/gms/nearby/messages/internal/zzae;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzf(Lcom/google/android/gms/nearby/messages/internal/zzbz;)V

    return-void
.end method

.method final zzu(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzns;->zze(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    new-instance v2, Lcom/google/android/gms/internal/nearby/zznr;

    .line 3
    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/nearby/zznr;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/nearby/zzns;->zzc(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_1
    new-instance p2, Lcom/google/android/gms/nearby/messages/internal/zzcb;

    new-instance v1, Lcom/google/android/gms/internal/nearby/zzno;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    iget-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/nearby/zzns;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    invoke-direct {p2, v1, p1}, Lcom/google/android/gms/nearby/messages/internal/zzcb;-><init>(Landroid/os/IBinder;Landroid/os/IBinder;)V

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/google/android/gms/nearby/messages/internal/zzcb;->zzd:Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzg(Lcom/google/android/gms/nearby/messages/internal/zzcb;)V

    return-void
.end method

.method final zzv(Lcom/google/android/gms/common/api/internal/ListenerHolder;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzaa;Lcom/google/android/gms/nearby/messages/SubscribeOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget v6, v0, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zze:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzaa;Lcom/google/android/gms/nearby/messages/SubscribeOptions;I)V

    return-void
.end method

.method final zzw(Lcom/google/android/gms/common/api/internal/ListenerHolder;Landroid/app/PendingIntent;Lcom/google/android/gms/nearby/messages/internal/zzaa;Lcom/google/android/gms/nearby/messages/SubscribeOptions;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    .line 2
    invoke-virtual {p4}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/nearby/zzno;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 3
    invoke-virtual {p4}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getFilter()Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-result-object v4

    iget-boolean p1, p4, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zza:Z

    iget p1, p4, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zzb:I

    iget-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget v10, p1, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zze:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZII)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzh(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;)V

    return-void
.end method

.method final zzx(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzaa;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p5, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzf:Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;

    iget v6, p5, Lcom/google/android/gms/nearby/messages/internal/ClientAppContext;->zze:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/internal/zzai;->zzy(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzaa;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[BI)V

    return-void
.end method

.method final zzy(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzaa;Lcom/google/android/gms/nearby/messages/SubscribeOptions;[BI)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->getListenerKey()Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzns;->zze(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    new-instance v2, Lcom/google/android/gms/internal/nearby/zznm;

    move-object/from16 v3, p2

    .line 3
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/nearby/zznm;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/nearby/zzns;->zzc(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    :cond_1
    new-instance v3, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/internal/zzai;->zze:Lcom/google/android/gms/internal/nearby/zzns;

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/nearby/zzns;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    .line 6
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getStrategy()Lcom/google/android/gms/nearby/messages/Strategy;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/nearby/zzno;

    invoke-direct {v6, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 7
    invoke-virtual/range {p4 .. p4}, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->getFilter()Lcom/google/android/gms/nearby/messages/MessageFilter;

    move-result-object v7

    move-object/from16 p1, p4

    iget-boolean p1, p1, Lcom/google/android/gms/nearby/messages/SubscribeOptions;->zza:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p3

    move/from16 v13, p6

    .line 8
    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;-><init>(Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/Strategy;Landroid/os/IBinder;Lcom/google/android/gms/nearby/messages/MessageFilter;Landroid/app/PendingIntent;[BLandroid/os/IBinder;ZII)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzh(Lcom/google/android/gms/nearby/messages/internal/SubscribeRequest;)V

    return-void
.end method

.method final zzz(Lcom/google/android/gms/common/api/internal/ListenerHolder;Lcom/google/android/gms/nearby/messages/internal/zzae;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzce;

    new-instance v3, Lcom/google/android/gms/internal/nearby/zzno;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/nearby/zzno;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/internal/zzce;-><init>(ILcom/google/android/gms/nearby/messages/internal/zzae;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/nearby/messages/internal/ClientAppContext;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/internal/zzai;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/nearby/messages/internal/zzs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/internal/zzs;->zzi(Lcom/google/android/gms/nearby/messages/internal/zzce;)V

    return-void
.end method
