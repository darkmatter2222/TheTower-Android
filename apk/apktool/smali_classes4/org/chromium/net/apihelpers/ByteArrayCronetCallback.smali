.class public abstract Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;
.super Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;
.source "ByteArrayCronetCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;
    .locals 0
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
            "-[B>;)",
            "Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;"
        }
    .end annotation

    .line 17
    invoke-super {p0, p1}, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;

    return-object p0
.end method

.method public bridge synthetic addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "listener"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1}, Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "info",
            "bodyBytes"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;->transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)[B

    move-result-object p1

    return-object p1
.end method

.method protected final transformBodyBytes(Lorg/chromium/net/UrlResponseInfo;[B)[B
    .locals 0
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

    return-object p2
.end method
