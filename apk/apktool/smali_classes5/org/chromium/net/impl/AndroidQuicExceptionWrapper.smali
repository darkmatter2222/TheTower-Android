.class Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;
.super Lorg/chromium/net/QuicException;
.source "AndroidQuicExceptionWrapper.java"


# instance fields
.field private final mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;


# direct methods
.method constructor <init>(Landroid/net/http/QuicException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 19
    invoke-virtual {p1}, Landroid/net/http/QuicException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/chromium/net/QuicException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    new-instance v0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;-><init>(Landroid/net/http/NetworkException;Z)V

    iput-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    return-void
.end method


# virtual methods
.method public getConnectionCloseSource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCronetInternalErrorCode()I
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->getCronetInternalErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getQuicDetailedErrorCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public immediatelyRetryable()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidQuicExceptionWrapper;->mBackend:Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;

    invoke-virtual {v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->immediatelyRetryable()Z

    move-result v0

    return v0
.end method
