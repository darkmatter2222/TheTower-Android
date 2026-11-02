.class Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;
.super Lorg/chromium/net/UrlResponseInfo;
.source "AndroidUrlResponseInfoWrapper.java"


# instance fields
.field private final mBackend:Landroid/net/http/UrlResponseInfo;

.field private final mProxyServerCompat:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backend",
            "proxyServerCompat"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lorg/chromium/net/UrlResponseInfo;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    .line 30
    iput-object p2, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mProxyServerCompat:Ljava/lang/String;

    return-void
.end method

.method public static createForBidirectionalStream(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 45
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->isResponseInfoNull(Landroid/net/http/UrlResponseInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 47
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;-><init>(Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createForUrlRequest(Landroid/net/http/UrlResponseInfo;)Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->isResponseInfoNull(Landroid/net/http/UrlResponseInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance v0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;

    const-string v1, ":0"

    invoke-direct {v0, p0, v1}, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;-><init>(Landroid/net/http/UrlResponseInfo;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isResponseInfoNull(Landroid/net/http/UrlResponseInfo;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 59
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/http/UrlResponseInfo;->getUrl()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public getAllHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/HeaderBlock;->getAsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeadersAsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getHeaders()Landroid/net/http/HeaderBlock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/http/HeaderBlock;->getAsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    return v0
.end method

.method public getHttpStatusText()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNegotiatedProtocol()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProxyServer()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mProxyServerCompat:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivedByteCount()J
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getReceivedByteCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlChain()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->getUrlChain()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public wasCached()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUrlResponseInfoWrapper;->mBackend:Landroid/net/http/UrlResponseInfo;

    invoke-virtual {v0}, Landroid/net/http/UrlResponseInfo;->wasCached()Z

    move-result v0

    return v0
.end method
