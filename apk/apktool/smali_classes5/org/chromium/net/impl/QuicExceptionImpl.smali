.class public Lorg/chromium/net/impl/QuicExceptionImpl;
.super Lorg/chromium/net/QuicException;
.source "QuicExceptionImpl.java"


# instance fields
.field private final mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

.field private final mQuicDetailedErrorCode:I

.field private final mSource:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "errorCode",
            "netErrorCode",
            "quicDetailedErrorCode"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 20
    invoke-direct/range {v0 .. v5}, Lorg/chromium/net/impl/QuicExceptionImpl;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "message",
            "errorCode",
            "netErrorCode",
            "quicDetailedErrorCode",
            "source"
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lorg/chromium/net/QuicException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    new-instance v0, Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/net/impl/NetworkExceptionImpl;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    .line 50
    iput p4, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    .line 51
    iput p5, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mSource:I

    return-void
.end method


# virtual methods
.method public getConnectionCloseSource()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mSource:I

    return v0
.end method

.method public getCronetInternalErrorCode()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Lorg/chromium/net/impl/NetworkExceptionImpl;->getCronetInternalErrorCode()I

    move-result v0

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Lorg/chromium/net/impl/NetworkExceptionImpl;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v1}, Lorg/chromium/net/impl/NetworkExceptionImpl;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    const-string v1, ", QuicDetailedErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, ", Source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mSource:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuicDetailedErrorCode()I
    .locals 1

    .line 79
    iget v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mQuicDetailedErrorCode:I

    return v0
.end method

.method public immediatelyRetryable()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/chromium/net/impl/QuicExceptionImpl;->mNetworkException:Lorg/chromium/net/impl/NetworkExceptionImpl;

    invoke-virtual {v0}, Lorg/chromium/net/impl/NetworkExceptionImpl;->immediatelyRetryable()Z

    move-result v0

    return v0
.end method
