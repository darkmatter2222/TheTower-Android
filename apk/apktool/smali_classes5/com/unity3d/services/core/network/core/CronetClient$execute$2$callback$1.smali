.class public final Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;
.super Lcom/unity3d/services/core/network/core/UnityAdsUrlRequestCallback;
.source "CronetClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/network/core/CronetClient;->execute(Lcom/unity3d/services/core/network/model/HttpRequest;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J&\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u001c\u0010\r\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J \u0010\u000e\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0010H\u0016\u00a8\u0006\u0011"
    }
    d2 = {
        "com/unity3d/services/core/network/core/CronetClient$execute$2$callback$1",
        "Lcom/unity3d/services/core/network/core/UnityAdsUrlRequestCallback;",
        "onSucceeded",
        "",
        "request",
        "Lorg/chromium/net/UrlRequest;",
        "info",
        "Lorg/chromium/net/UrlResponseInfo;",
        "bodyBytes",
        "",
        "onFailed",
        "error",
        "Lorg/chromium/net/CronetException;",
        "onCanceled",
        "onReadCompleted",
        "byteBuffer",
        "Ljava/nio/ByteBuffer;",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $hasReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic $outputStream:Ljava/io/PipedOutputStream;

.field final synthetic $withInputStream:Z

.field final synthetic this$0:Lcom/unity3d/services/core/network/core/CronetClient;


# direct methods
.method constructor <init>(ZLjava/io/PipedOutputStream;Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlinx/coroutines/CancellableContinuation;Lcom/unity3d/services/core/network/core/CronetClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/io/PipedOutputStream;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lcom/unity3d/services/core/network/model/HttpResponse;",
            ">;",
            "Lcom/unity3d/services/core/network/core/CronetClient;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$withInputStream:Z

    iput-object p2, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$outputStream:Ljava/io/PipedOutputStream;

    iput-object p3, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$hasReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    iput-object p5, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->this$0:Lcom/unity3d/services/core/network/core/CronetClient;

    .line 50
    invoke-direct {p0}, Lcom/unity3d/services/core/network/core/UnityAdsUrlRequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V
    .locals 10

    .line 98
    invoke-super {p0, p1, p2}, Lcom/unity3d/services/core/network/core/UnityAdsUrlRequestCallback;->onCanceled(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;)V

    .line 99
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$outputStream:Ljava/io/PipedOutputStream;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/PipedOutputStream;->close()V

    .line 101
    :cond_0
    new-instance v0, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    if-eqz p2, :cond_2

    .line 104
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v5, p1

    const/16 v8, 0x26

    const/4 v9, 0x0

    .line 101
    const-string v1, "Network request timed out"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-string v7, "cronet"

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/ads/core/data/model/exception/NetworkTimeoutException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 107
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$hasReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public onFailed(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 11

    .line 80
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$outputStream:Ljava/io/PipedOutputStream;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/PipedOutputStream;->close()V

    .line 82
    :cond_0
    instance-of p1, p3, Lorg/chromium/net/NetworkException;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    check-cast p3, Lorg/chromium/net/NetworkException;

    goto :goto_0

    :cond_1
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lorg/chromium/net/NetworkException;->getCronetInternalErrorCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v7, p1

    goto :goto_1

    :cond_2
    move-object v7, v0

    .line 83
    :goto_1
    new-instance v1, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;

    if-eqz p2, :cond_3

    .line 85
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v4, p1

    goto :goto_2

    :cond_3
    move-object v4, v0

    :goto_2
    if-eqz p2, :cond_4

    .line 86
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object p1

    move-object v5, p1

    goto :goto_3

    :cond_4
    move-object v5, v0

    :goto_3
    if-eqz p2, :cond_5

    .line 87
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v6, v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 83
    const-string v2, "Network request failed"

    const/4 v3, 0x0

    const-string v8, "cronet"

    invoke-direct/range {v1 .. v10}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 92
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$hasReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_6

    .line 93
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V
    .locals 10

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteBuffer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$outputStream:Ljava/io/PipedOutputStream;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$hasReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 116
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v3

    .line 117
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v4

    const-string v1, "getAllHeaders(...)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v1, "getUrl(...)"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v2, Ljava/io/PipedInputStream;

    iget-object v1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$outputStream:Ljava/io/PipedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    .line 120
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v1, "getNegotiatedProtocol(...)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->this$0:Lcom/unity3d/services/core/network/core/CronetClient;

    invoke-static {v1, p2}, Lcom/unity3d/services/core/network/core/CronetClient;->access$getContentSize(Lcom/unity3d/services/core/network/core/CronetClient;Lorg/chromium/net/UrlResponseInfo;)J

    move-result-wide v8

    .line 115
    new-instance v1, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 121
    const-string v7, "cronet"

    .line 115
    invoke-direct/range {v1 .. v9}, Lcom/unity3d/services/core/network/model/HttpResponse;-><init>(Ljava/lang/Object;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 126
    :cond_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 128
    :try_start_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    .line 129
    new-array p2, p2, [B

    .line 130
    invoke-virtual {p3, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 131
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$outputStream:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/PipedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p2, v0

    .line 133
    const-string v0, "IOException during ByteBuffer read. Details: "

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/unity3d/services/core/log/DeviceLog;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_0
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 136
    invoke-virtual {p1, p3}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    return-void

    .line 138
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/services/core/network/core/UnityAdsUrlRequestCallback;->onReadCompleted(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public onSucceeded(Lorg/chromium/net/UrlRequest;Lorg/chromium/net/UrlResponseInfo;[B)V
    .locals 9

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "info"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bodyBytes"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-boolean p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$withInputStream:Z

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$outputStream:Ljava/io/PipedOutputStream;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/PipedOutputStream;->close()V

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$hasReturned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->$cont:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    .line 63
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v2

    .line 64
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getAllHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v0, "getAllHeaders(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    const-string v0, "getUrl(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Lorg/chromium/net/UrlResponseInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v5

    const-string v0, "getNegotiatedProtocol(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/unity3d/services/core/network/core/CronetClient$execute$2$callback$1;->this$0:Lcom/unity3d/services/core/network/core/CronetClient;

    invoke-static {v0, p2}, Lcom/unity3d/services/core/network/core/CronetClient;->access$getContentSize(Lcom/unity3d/services/core/network/core/CronetClient;Lorg/chromium/net/UrlResponseInfo;)J

    move-result-wide v7

    .line 62
    new-instance v0, Lcom/unity3d/services/core/network/model/HttpResponse;

    .line 68
    const-string v6, "cronet"

    move-object v1, p3

    .line 62
    invoke-direct/range {v0 .. v8}, Lcom/unity3d/services/core/network/model/HttpResponse;-><init>(Ljava/lang/Object;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 61
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
