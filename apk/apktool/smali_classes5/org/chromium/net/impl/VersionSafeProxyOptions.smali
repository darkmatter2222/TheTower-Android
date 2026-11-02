.class final Lorg/chromium/net/impl/VersionSafeProxyOptions;
.super Ljava/lang/Object;
.source "VersionSafeProxyOptions.java"


# static fields
.field private static final SET_PROXY_OPTIONS_API_LEVEL:I = 0x26


# instance fields
.field private final mBackend:Lorg/chromium/net/ProxyOptions;


# direct methods
.method constructor <init>(Lorg/chromium/net/ProxyOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lorg/chromium/net/impl/VersionSafeProxyOptions;->apiContainsProxyOptionsClass()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/ProxyOptions;

    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeProxyOptions;->mBackend:Lorg/chromium/net/ProxyOptions;

    .line 37
    invoke-virtual {p1}, Lorg/chromium/net/ProxyOptions;->getProxyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "The list of proxies should never be empty, this is checked in the API layer"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 33
    invoke-static {}, Lorg/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getMaximumAvailableApiLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 30
    const-string v1, "This should have not been created: the Cronet API being used has an ApiLevel of %s, but setProxyOptions was added in ApiLevel %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private static apiContainsProxyOptionsClass()Z
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
.method createProxyCallbackList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/net/impl/VersionSafeProxyCallback;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v1, p0, Lorg/chromium/net/impl/VersionSafeProxyOptions;->mBackend:Lorg/chromium/net/ProxyOptions;

    invoke-virtual {v1}, Lorg/chromium/net/ProxyOptions;->getProxyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/Proxy;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 58
    :cond_0
    new-instance v3, Lorg/chromium/net/impl/VersionSafeProxyCallback;

    .line 59
    invoke-virtual {v2}, Lorg/chromium/net/Proxy;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-virtual {v2}, Lorg/chromium/net/Proxy;->getCallback()Lorg/chromium/net/Proxy$Callback;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/chromium/net/impl/VersionSafeProxyCallback;-><init>(Ljava/util/concurrent/Executor;Lorg/chromium/net/Proxy$Callback;)V

    move-object v2, v3

    .line 55
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method createProxyOptionsProto()Lorg/chromium/net/impl/proto/ProxyOptions;
    .locals 5

    .line 67
    invoke-static {}, Lorg/chromium/net/impl/proto/ProxyOptions;->newBuilder()Lorg/chromium/net/impl/proto/ProxyOptions$Builder;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lorg/chromium/net/impl/VersionSafeProxyOptions;->mBackend:Lorg/chromium/net/ProxyOptions;

    invoke-virtual {v1}, Lorg/chromium/net/ProxyOptions;->getProxyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/Proxy;

    .line 70
    invoke-static {}, Lorg/chromium/net/impl/proto/Proxy;->newBuilder()Lorg/chromium/net/impl/proto/Proxy$Builder;

    move-result-object v3

    if-nez v2, :cond_0

    .line 72
    sget-object v2, Lorg/chromium/net/impl/proto/ProxyScheme;->DIRECT:Lorg/chromium/net/impl/proto/ProxyScheme;

    invoke-virtual {v3, v2}, Lorg/chromium/net/impl/proto/Proxy$Builder;->setScheme(Lorg/chromium/net/impl/proto/ProxyScheme;)Lorg/chromium/net/impl/proto/Proxy$Builder;

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/net/Proxy;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/chromium/net/impl/proto/Proxy$Builder;->setHost(Ljava/lang/String;)Lorg/chromium/net/impl/proto/Proxy$Builder;

    .line 75
    invoke-virtual {v2}, Lorg/chromium/net/Proxy;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/chromium/net/impl/proto/Proxy$Builder;->setPort(I)Lorg/chromium/net/impl/proto/Proxy$Builder;

    .line 76
    invoke-virtual {v2}, Lorg/chromium/net/Proxy;->getScheme()I

    move-result v2

    if-nez v2, :cond_1

    .line 78
    sget-object v2, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTP:Lorg/chromium/net/impl/proto/ProxyScheme;

    invoke-virtual {v3, v2}, Lorg/chromium/net/impl/proto/Proxy$Builder;->setScheme(Lorg/chromium/net/impl/proto/ProxyScheme;)Lorg/chromium/net/impl/proto/Proxy$Builder;

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 80
    sget-object v2, Lorg/chromium/net/impl/proto/ProxyScheme;->HTTPS:Lorg/chromium/net/impl/proto/ProxyScheme;

    invoke-virtual {v3, v2}, Lorg/chromium/net/impl/proto/Proxy$Builder;->setScheme(Lorg/chromium/net/impl/proto/ProxyScheme;)Lorg/chromium/net/impl/proto/Proxy$Builder;

    .line 91
    :goto_1
    invoke-virtual {v3}, Lorg/chromium/net/impl/proto/Proxy$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/impl/proto/Proxy;

    invoke-virtual {v0, v2}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->addProxies(Lorg/chromium/net/impl/proto/Proxy;)Lorg/chromium/net/impl/proto/ProxyOptions$Builder;

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 83
    const-string v2, "Unknown Proxy.Scheme: %s. This should have been caught by the API layer"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 93
    :cond_3
    invoke-virtual {v0}, Lorg/chromium/net/impl/proto/ProxyOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/impl/proto/ProxyOptions;

    return-object v0
.end method
