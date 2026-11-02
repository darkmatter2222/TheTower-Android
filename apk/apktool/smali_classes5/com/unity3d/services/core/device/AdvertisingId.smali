.class public Lcom/unity3d/services/core/device/AdvertisingId;
.super Ljava/lang/Object;
.source "AdvertisingId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingServiceConnection;,
        Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingInfo;
    }
.end annotation


# static fields
.field private static final ADVERTISING_ID_SERVICE_NAME:Ljava/lang/String; = "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

.field static BINDER_TIMEOUT_SECONDS:J = 0xaL

.field private static instance:Lcom/unity3d/services/core/device/AdvertisingId;


# instance fields
.field private volatile advertisingIdentifier:Ljava/lang/String;

.field private volatile limitedAdvertisingTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/unity3d/services/core/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/unity3d/services/core/device/AdvertisingId;->limitedAdvertisingTracking:Z

    return-void
.end method

.method private fetchAdvertisingId(Landroid/content/Context;)Z
    .locals 6

    .line 56
    new-instance v0, Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingServiceConnection;

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingServiceConnection;-><init>(Lcom/unity3d/services/core/device/AdvertisingId;)V

    .line 57
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    :try_start_0
    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 63
    const-string v4, "Couldn\'t bind to identifier service intent"

    invoke-static {v4, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 67
    :try_start_1
    invoke-virtual {v0}, Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingServiceConnection;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingInfo$GoogleAdvertisingInfoBinder;->create(Landroid/os/IBinder;)Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingInfo;

    move-result-object v4

    .line 68
    invoke-interface {v4}, Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingInfo;->getId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/unity3d/services/core/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    .line 69
    invoke-interface {v4, v2}, Lcom/unity3d/services/core/device/AdvertisingId$GoogleAdvertisingInfo;->getEnabled(Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/unity3d/services/core/device/AdvertisingId;->limitedAdvertisingTracking:Z
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 75
    :try_start_2
    const-string v4, "Couldn\'t get advertising info"

    invoke-static {v4, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    if-eqz v1, :cond_3

    goto :goto_2

    :catch_2
    move-exception v2

    .line 73
    const-string v4, "Timed out getting advertising ID service connection"

    invoke-static {v4, v2}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 80
    :cond_1
    throw v2

    :cond_2
    if-eqz v1, :cond_3

    .line 78
    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_3
    return v3
.end method

.method public static getAdvertisingTrackingId()Ljava/lang/String;
    .locals 1

    .line 47
    invoke-static {}, Lcom/unity3d/services/core/device/AdvertisingId;->getInstance()Lcom/unity3d/services/core/device/AdvertisingId;

    move-result-object v0

    iget-object v0, v0, Lcom/unity3d/services/core/device/AdvertisingId;->advertisingIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method private static declared-synchronized getInstance()Lcom/unity3d/services/core/device/AdvertisingId;
    .locals 2

    const-class v0, Lcom/unity3d/services/core/device/AdvertisingId;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/unity3d/services/core/device/AdvertisingId;->instance:Lcom/unity3d/services/core/device/AdvertisingId;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/unity3d/services/core/device/AdvertisingId;

    invoke-direct {v1}, Lcom/unity3d/services/core/device/AdvertisingId;-><init>()V

    sput-object v1, Lcom/unity3d/services/core/device/AdvertisingId;->instance:Lcom/unity3d/services/core/device/AdvertisingId;

    .line 39
    :cond_0
    sget-object v1, Lcom/unity3d/services/core/device/AdvertisingId;->instance:Lcom/unity3d/services/core/device/AdvertisingId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getLimitedAdTracking()Z
    .locals 1

    .line 51
    invoke-static {}, Lcom/unity3d/services/core/device/AdvertisingId;->getInstance()Lcom/unity3d/services/core/device/AdvertisingId;

    move-result-object v0

    iget-boolean v0, v0, Lcom/unity3d/services/core/device/AdvertisingId;->limitedAdvertisingTracking:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 1

    .line 43
    invoke-static {}, Lcom/unity3d/services/core/device/AdvertisingId;->getInstance()Lcom/unity3d/services/core/device/AdvertisingId;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/unity3d/services/core/device/AdvertisingId;->fetchAdvertisingId(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
