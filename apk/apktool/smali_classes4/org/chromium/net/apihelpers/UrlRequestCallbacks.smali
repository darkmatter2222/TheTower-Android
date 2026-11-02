.class public Lorg/chromium/net/apihelpers/UrlRequestCallbacks;
.super Ljava/lang/Object;
.source "UrlRequestCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addResponseFutureListener(Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "Lorg/chromium/net/apihelpers/CronetResponse<",
            "TT;>;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 99
    new-instance v1, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;

    invoke-direct {v1, v0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v1}, Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ImplicitFlowControlCallback;

    return-object v0
.end method

.method public static forByteArrayBody(Lorg/chromium/net/apihelpers/RedirectHandler;Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "redirectHandler",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/RedirectHandler;",
            "Lorg/chromium/net/apihelpers/CronetRequestCompletionListener<",
            "[B>;)",
            "Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;"
        }
    .end annotation

    .line 32
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->newByteArrayCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;

    move-result-object p0

    return-object p0
.end method

.method public static forByteArrayBody(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/RedirectHandler;",
            ")",
            "Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair<",
            "[B",
            "Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;",
            ">;"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->newByteArrayCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;

    move-result-object p0

    .line 38
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->addResponseFutureListener(Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 39
    new-instance v1, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;

    invoke-direct {v1, v0, p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;-><init>(Ljava/util/concurrent/Future;Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)V

    return-object v1
.end method

.method public static forJsonBody(Lorg/chromium/net/apihelpers/RedirectHandler;Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/JsonCronetCallback;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "redirectHandler",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/RedirectHandler;",
            "Lorg/chromium/net/apihelpers/CronetRequestCompletionListener<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lorg/chromium/net/apihelpers/JsonCronetCallback;"
        }
    .end annotation

    .line 56
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->newJsonCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/JsonCronetCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/net/apihelpers/JsonCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/JsonCronetCallback;

    move-result-object p0

    return-object p0
.end method

.method public static forJsonBody(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/RedirectHandler;",
            ")",
            "Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair<",
            "Lorg/json/JSONObject;",
            "Lorg/chromium/net/apihelpers/JsonCronetCallback;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->newJsonCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/JsonCronetCallback;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->addResponseFutureListener(Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 63
    new-instance v1, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;

    invoke-direct {v1, v0, p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;-><init>(Ljava/util/concurrent/Future;Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)V

    return-object v1
.end method

.method public static forStringBody(Lorg/chromium/net/apihelpers/RedirectHandler;Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/StringCronetCallback;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "redirectHandler",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/RedirectHandler;",
            "Lorg/chromium/net/apihelpers/CronetRequestCompletionListener<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/chromium/net/apihelpers/StringCronetCallback;"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->newStringCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/StringCronetCallback;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/chromium/net/apihelpers/StringCronetCallback;->addCompletionListener(Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;)Lorg/chromium/net/apihelpers/StringCronetCallback;

    move-result-object p0

    return-object p0
.end method

.method public static forStringBody(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectHandler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/apihelpers/RedirectHandler;",
            ")",
            "Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/apihelpers/StringCronetCallback;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->newStringCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/StringCronetCallback;

    move-result-object p0

    .line 50
    invoke-static {p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->addResponseFutureListener(Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 51
    new-instance v1, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;

    invoke-direct {v1, v0, p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$CallbackAndResponseFuturePair;-><init>(Ljava/util/concurrent/Future;Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)V

    return-object v1
.end method

.method private static newByteArrayCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/ByteArrayCronetCallback;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectHandler"
        }
    .end annotation

    .line 67
    new-instance v0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$1;

    invoke-direct {v0, p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$1;-><init>(Lorg/chromium/net/apihelpers/RedirectHandler;)V

    return-object v0
.end method

.method private static newJsonCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/JsonCronetCallback;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectHandler"
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$3;

    invoke-direct {v0, p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$3;-><init>(Lorg/chromium/net/apihelpers/RedirectHandler;)V

    return-object v0
.end method

.method private static newStringCallback(Lorg/chromium/net/apihelpers/RedirectHandler;)Lorg/chromium/net/apihelpers/StringCronetCallback;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "redirectHandler"
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$2;

    invoke-direct {v0, p0}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$2;-><init>(Lorg/chromium/net/apihelpers/RedirectHandler;)V

    return-object v0
.end method
