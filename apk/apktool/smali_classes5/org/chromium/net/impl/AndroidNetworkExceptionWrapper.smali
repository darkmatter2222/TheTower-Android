.class Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;
.super Lorg/chromium/net/NetworkException;
.source "AndroidNetworkExceptionWrapper.java"


# instance fields
.field private final mBackend:Landroid/net/http/NetworkException;


# direct methods
.method constructor <init>(Landroid/net/http/NetworkException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;-><init>(Landroid/net/http/NetworkException;Z)V

    return-void
.end method

.method constructor <init>(Landroid/net/http/NetworkException;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "backend",
            "expectQuicException"
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Landroid/net/http/NetworkException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/chromium/net/NetworkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->mBackend:Landroid/net/http/NetworkException;

    if-nez p2, :cond_1

    .line 25
    instance-of p2, p1, Landroid/net/http/QuicException;

    if-nez p2, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Translating QuicException as NetworkException results in loss of information. Make sure you handle QuicException first. See the stacktrace for where the translation is being performed, and the cause for the exception being translated."

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCronetInternalErrorCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->mBackend:Landroid/net/http/NetworkException;

    invoke-virtual {v0}, Landroid/net/http/NetworkException;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public immediatelyRetryable()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidNetworkExceptionWrapper;->mBackend:Landroid/net/http/NetworkException;

    invoke-virtual {v0}, Landroid/net/http/NetworkException;->isImmediatelyRetryable()Z

    move-result v0

    return v0
.end method
