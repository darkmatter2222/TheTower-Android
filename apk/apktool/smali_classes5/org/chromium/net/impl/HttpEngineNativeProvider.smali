.class public Lorg/chromium/net/impl/HttpEngineNativeProvider;
.super Lorg/chromium/net/CronetProvider;
.source "HttpEngineNativeProvider.java"


# static fields
.field static final EXT_API_LEVEL:I = 0x1f

.field static final EXT_VERSION:I = 0x7

.field public static final PROVIDER_NAME_HTTPENGINE_NATIVE:Ljava/lang/String; = "HttpEngine-Native-Provider"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/net/CronetProvider;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static isHttpEngineAvailable()Z
    .locals 2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1f

    .line 73
    invoke-static {v0}, Landroid/os/ext/SdkExtensions;->getExtensionVersion(I)I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public createBuilder()Lorg/chromium/net/CronetEngine$Builder;
    .locals 5

    .line 48
    const-string v0, "HttpEngineNativeProvider#createBuilder"

    .line 49
    invoke-static {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Lorg/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0

    .line 50
    :try_start_0
    new-instance v1, Lorg/chromium/net/ExperimentalCronetEngine$Builder;

    new-instance v2, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;

    new-instance v3, Landroid/net/http/HttpEngine$Builder;

    iget-object v4, p0, Lorg/chromium/net/impl/HttpEngineNativeProvider;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/net/http/HttpEngine$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lorg/chromium/net/impl/AndroidHttpEngineBuilderWrapper;-><init>(Landroid/net/http/HttpEngine$Builder;)V

    invoke-direct {v1, v2}, Lorg/chromium/net/ExperimentalCronetEngine$Builder;-><init>(Lorg/chromium/net/ICronetEngineBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 48
    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "HttpEngine-Native-Provider"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 63
    invoke-static {}, Landroid/net/http/HttpEngine;->getVersionString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 68
    invoke-static {}, Lorg/chromium/net/impl/HttpEngineNativeProvider;->isHttpEngineAvailable()Z

    move-result v0

    return v0
.end method
