.class public abstract Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;
.super Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;
.source "InMemoryTransformCronetCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;"
    }
.end annotation


# static fields
.field private static final CONTENT_LENGTH_HEADER_NAME:Ljava/lang/String; = "Content-Length"

.field private static final MAX_ARRAY_SIZE:I = 0x7ffffff7


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/net/apihelpers/CronetRequestCompletionListener<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field private mResponseBodyChannel:Ljava/nio/channels/WritableByteChannel;

.field private mResponseBodyStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mListeners:Ljava/util/Set;

    return-void
.end method

.method private static getBodyLength(Lorg/chromium/net/UrlResponseInfo;)J
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object p0

    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_1

    .line 111
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 115
    :try_start_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/CronetRequestCompletionListener<",
            "-TT;>;)",
            "Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected final onBodyChunkRead(Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "bodyChunk"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object p1, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mResponseBodyChannel:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p1, p2}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method protected final onCanceled(Lorg/chromium/net/UrlResponseInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;

    .line 104
    invoke-interface {v1, p1}, Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;->onCanceled(Lorg/chromium/net/UrlResponseInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final onFailed(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "exception"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;

    .line 97
    invoke-interface {v1, p1, p2}, Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;->onFailed(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final onResponseStarted(Lorg/chromium/net/UrlResponseInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 66
    invoke-static {p1}, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->getBodyLength(Lorg/chromium/net/UrlResponseInfo;)J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    .line 73
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    long-to-int v0, v0

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object p1, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mResponseBodyStream:Ljava/io/ByteArrayOutputStream;

    goto :goto_0

    .line 75
    :cond_0
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mResponseBodyStream:Ljava/io/ByteArrayOutputStream;

    .line 77
    :goto_0
    iget-object p1, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mResponseBodyStream:Ljava/io/ByteArrayOutputStream;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mResponseBodyChannel:Ljava/nio/channels/WritableByteChannel;

    return-void

    .line 68
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The body is too large and wouldn\'t fit in a byte array!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onSucceeded(Lorg/chromium/net/UrlResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mResponseBodyStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)Ljava/lang/Object;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;

    .line 90
    invoke-interface {v2, p1, v0}, Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;->onSucceeded(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected abstract transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "bodyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/UrlResponseInfo;",
            "[B)TT;"
        }
    .end annotation
.end method
