.class public final Lorg/chromium/net/impl/CronetManifest;
.super Ljava/lang/Object;
.source "CronetManifest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ENABLE_TELEMETRY_META_DATA_KEY:Ljava/lang/String; = "android.net.http.EnableTelemetry"

.field static final META_DATA_HOLDER_SERVICE_NAME:Ljava/lang/String; = "android.net.http.MetaDataHolder"

.field public static final READ_HTTP_FLAGS_META_DATA_KEY:Ljava/lang/String; = "android.net.http.ReadHttpFlags"

.field public static final USE_PERFETTO_META_DATA_KEY:Ljava/lang/String; = "android.net.http.UsePerfetto"

.field private static sLastContext:Landroid/content/Context;

.field private static final sLock:Ljava/lang/Object;

.field private static sMetaData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/chromium/net/impl/CronetManifest;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMetaData(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 124
    sget-object v0, Lorg/chromium/net/impl/CronetManifest;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lorg/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;

    if-eq p0, v1, :cond_2

    .line 131
    const-string v1, "CronetManifest#getMetaData fetching info"

    .line 132
    invoke-static {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 136
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "android.net.http.MetaDataHolder"

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0xc0280

    .line 137
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 150
    :try_start_2
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 151
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    goto :goto_1

    .line 152
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :goto_1
    sput-object v2, Lorg/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    .line 153
    sput-object p0, Lorg/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 154
    :try_start_3
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :goto_2
    if-eqz v1, :cond_1

    .line 131
    :try_start_4
    invoke-virtual {v1}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_3
    throw p0

    .line 157
    :cond_2
    :goto_4
    sget-object p0, Lorg/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    .line 158
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public static isAppOptedInForTelemetry(Landroid/content/Context;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    :try_start_0
    const-string v2, "org.chromium.net.impl.NativeCronetEngineBuilderImpl"

    const-class v3, Lorg/chromium/net/impl/CronetManifest;

    .line 86
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 83
    invoke-static {v2, v0, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 90
    :catch_0
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    xor-int/2addr v0, v1

    .line 91
    const-string v1, "android.net.http.EnableTelemetry"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isAppOptedInForTelemetry(Landroid/content/Context;Lorg/chromium/net/impl/CronetLogger$CronetSource;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "source"
        }
    .end annotation

    .line 62
    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLATFORM:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    if-eq p1, v0, :cond_1

    sget-object v0, Lorg/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_PLAY_SERVICES:Lorg/chromium/net/impl/CronetLogger$CronetSource;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 65
    :goto_1
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.net.http.EnableTelemetry"

    .line 66
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static resetCache()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    sput-object v0, Lorg/chromium/net/impl/CronetManifest;->sMetaData:Landroid/os/Bundle;

    .line 164
    sput-object v0, Lorg/chromium/net/impl/CronetManifest;->sLastContext:Landroid/content/Context;

    return-void
.end method

.method public static shouldReadHttpFlags(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 100
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.net.http.ReadHttpFlags"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static shouldUsePerfetto(Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 104
    invoke-static {p0}, Lorg/chromium/net/impl/CronetManifest;->getMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.net.http.UsePerfetto"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
