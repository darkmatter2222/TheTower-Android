.class Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;
.super Lorg/chromium/net/UploadDataSink;
.source "AndroidUploadDataSinkWrapper.java"


# instance fields
.field private final mBackend:Landroid/net/http/UploadDataSink;


# direct methods
.method constructor <init>(Landroid/net/http/UploadDataSink;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backend"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lorg/chromium/net/UploadDataSink;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    return-void
.end method


# virtual methods
.method public onReadError(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-virtual {v0, p1}, Landroid/net/http/UploadDataSink;->onReadError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onReadSucceeded(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalChunk"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-virtual {v0, p1}, Landroid/net/http/UploadDataSink;->onReadSucceeded(Z)V

    return-void
.end method

.method public onRewindError(Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-virtual {v0, p1}, Landroid/net/http/UploadDataSink;->onRewindError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onRewindSucceeded()V
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/chromium/net/impl/AndroidUploadDataSinkWrapper;->mBackend:Landroid/net/http/UploadDataSink;

    invoke-virtual {v0}, Landroid/net/http/UploadDataSink;->onRewindSucceeded()V

    return-void
.end method
