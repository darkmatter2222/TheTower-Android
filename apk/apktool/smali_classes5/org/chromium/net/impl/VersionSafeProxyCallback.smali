.class final Lorg/chromium/net/impl/VersionSafeProxyCallback;
.super Ljava/lang/Object;
.source "VersionSafeProxyCallback.java"


# static fields
.field private static final PROXY_CALLBACK_API_LEVEL:I = 0x26


# instance fields
.field private final mBackend:Lorg/chromium/net/Proxy$Callback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lorg/chromium/net/Proxy$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "executor",
            "backend"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-direct {p0}, Lorg/chromium/net/impl/VersionSafeProxyCallback;->apiContainsProxyCallbackClass()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeProxyCallback;->mExecutor:Ljava/util/concurrent/Executor;

    .line 38
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/Proxy$Callback;

    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeProxyCallback;->mBackend:Lorg/chromium/net/Proxy$Callback;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 34
    invoke-static {}, Lorg/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getMaximumAvailableApiLevel()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v0, 0x26

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    .line 31
    const-string v0, "This should not have been created: the Cronet API being used has an ApiLevel of %s, but ProxyCallback was added in ApiLevel %s"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private apiContainsProxyCallbackClass()Z
    .locals 2

    .line 21
    invoke-static {}, Lorg/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getMaximumAvailableApiLevel()I

    move-result v0

    const/16 v1, 0x26

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeProxyCallback;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method onBeforeTunnelRequest(Lorg/chromium/net/Proxy$Callback$Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "request"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeProxyCallback;->mBackend:Lorg/chromium/net/Proxy$Callback;

    invoke-virtual {v0, p1}, Lorg/chromium/net/Proxy$Callback;->onBeforeTunnelRequest(Lorg/chromium/net/Proxy$Callback$Request;)V

    return-void
.end method

.method onTunnelHeadersReceived(Ljava/util/List;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "responseHeaders",
            "statusCode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I)Z"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeProxyCallback;->mBackend:Lorg/chromium/net/Proxy$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/Proxy$Callback;->onTunnelHeadersReceived(Ljava/util/List;I)Z

    move-result p1

    return p1
.end method
