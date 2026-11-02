.class Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;
.super Ljava/lang/Object;
.source "UrlRequestCallbacks.java"

# interfaces
.implements Lorg/chromium/net/apihelpers/CronetRequestCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/apihelpers/UrlRequestCallbacks;->addResponseFutureListener(Lorg/chromium/net/apihelpers/InMemoryTransformCronetCallback;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/net/apihelpers/CronetRequestCompletionListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$completableFuture:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$completableFuture"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;->val$completableFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/UrlResponseInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 109
    iget-object p1, p0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;->val$completableFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4$1;

    const-string v1, "The request was canceled!"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4$1;-><init>(Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0
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

    .line 104
    iget-object p1, p0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;->val$completableFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/net/UrlResponseInfo;",
            "TT;)V"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/chromium/net/apihelpers/UrlRequestCallbacks$4;->val$completableFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lorg/chromium/net/apihelpers/CronetResponse;

    invoke-direct {v1, p1, p2}, Lorg/chromium/net/apihelpers/CronetResponse;-><init>(Lorg/chromium/net/UrlResponseInfo;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method
