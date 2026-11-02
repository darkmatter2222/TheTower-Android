.class public final Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;
.super Lorg/chromium/net/BidirectionalStream$Callback;
.source "VersionSafeCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/impl/VersionSafeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BidirectionalStreamCallback"
.end annotation


# instance fields
.field private final mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;


# direct methods
.method public constructor <init>(Lorg/chromium/net/BidirectionalStream$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lorg/chromium/net/BidirectionalStream$Callback;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "info"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/BidirectionalStream$Callback;->onCanceled(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public onFailed(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "info",
            "error"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/BidirectionalStream$Callback;->onFailed(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "info",
            "buffer",
            "endOfStream"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/net/BidirectionalStream$Callback;->onReadCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public onResponseHeadersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "info"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/BidirectionalStream$Callback;->onResponseHeadersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public onResponseTrailersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlResponseInfo$HeaderBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "info",
            "trailers"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/net/BidirectionalStream$Callback;->onResponseTrailersReceived(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/UrlResponseInfo$HeaderBlock;)V

    return-void
.end method

.method public onStreamReady(Lorg/chromium/net/BidirectionalStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1}, Lorg/chromium/net/BidirectionalStream$Callback;->onStreamReady(Lorg/chromium/net/BidirectionalStream;)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "info"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/net/BidirectionalStream$Callback;->onSucceeded(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;)V

    return-void
.end method

.method public onWriteCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "stream",
            "info",
            "buffer",
            "endOfStream"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/chromium/net/impl/VersionSafeCallbacks$BidirectionalStreamCallback;->mWrappedCallback:Lorg/chromium/net/BidirectionalStream$Callback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/net/BidirectionalStream$Callback;->onWriteCompleted(Lorg/chromium/net/BidirectionalStream;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method
