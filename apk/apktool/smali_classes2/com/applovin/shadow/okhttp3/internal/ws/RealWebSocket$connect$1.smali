.class public final Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;
.super Ljava/lang/Object;
.source "RealWebSocket.kt"

# interfaces
.implements Lcom/applovin/shadow/okhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->connect(Lcom/applovin/shadow/okhttp3/OkHttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1",
        "Lcom/applovin/shadow/okhttp3/Callback;",
        "onFailure",
        "",
        "call",
        "Lcom/applovin/shadow/okhttp3/Call;",
        "e",
        "Ljava/io/IOException;",
        "onResponse",
        "response",
        "Lcom/applovin/shadow/okhttp3/Response;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $request:Lcom/applovin/shadow/okhttp3/Request;

.field final synthetic this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;Lcom/applovin/shadow/okhttp3/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lcom/applovin/shadow/okhttp3/Request;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/applovin/shadow/okhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "e"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    check-cast p2, Ljava/lang/Exception;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/applovin/shadow/okhttp3/Response;)V

    return-void
.end method

.method public onResponse(Lcom/applovin/shadow/okhttp3/Call;Lcom/applovin/shadow/okhttp3/Response;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Lcom/applovin/shadow/okhttp3/Response;->exchange()Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;

    move-result-object p1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v0, p2, p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->checkUpgradeSuccess$okhttp(Lcom/applovin/shadow/okhttp3/Response;Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;)V

    .line 171
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;->newWebSocketStreams()Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 181
    sget-object v0, Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;->Companion:Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions$Companion;

    invoke-virtual {p2}, Lcom/applovin/shadow/okhttp3/Response;->headers()Lcom/applovin/shadow/okhttp3/Headers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions$Companion;->parse(Lcom/applovin/shadow/okhttp3/Headers;)Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    invoke-static {v1, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->access$setExtensions$p(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;)V

    .line 183
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    invoke-static {v1, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->access$isValid(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;Lcom/applovin/shadow/okhttp3/internal/ws/WebSocketExtensions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    monitor-enter v0

    .line 185
    :try_start_1
    invoke-static {v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->access$getMessageAndCloseQueue$p(Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 186
    const-string v1, "unexpected Sec-WebSocket-Extensions in response header"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v2, v1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 192
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/applovin/shadow/okhttp3/internal/Util;->okHttpName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WebSocket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->$request:Lcom/applovin/shadow/okhttp3/Request;

    invoke-virtual {v1}, Lcom/applovin/shadow/okhttp3/Request;->url()Lcom/applovin/shadow/okhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/shadow/okhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {v1, v0, p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->initReaderAndWriter(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$Streams;)V

    .line 194
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->getListener$okhttp()Lcom/applovin/shadow/okhttp3/WebSocketListener;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    check-cast v0, Lcom/applovin/shadow/okhttp3/WebSocket;

    invoke-virtual {p1, v0, p2}, Lcom/applovin/shadow/okhttp3/WebSocketListener;->onOpen(Lcom/applovin/shadow/okhttp3/WebSocket;Lcom/applovin/shadow/okhttp3/Response;)V

    .line 195
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->loopReader()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 197
    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/applovin/shadow/okhttp3/Response;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket$connect$1;->this$0:Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0, p2}, Lcom/applovin/shadow/okhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lcom/applovin/shadow/okhttp3/Response;)V

    .line 174
    check-cast p2, Ljava/io/Closeable;

    invoke-static {p2}, Lcom/applovin/shadow/okhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/internal/connection/Exchange;->webSocketUpgradeFailed()V

    :cond_1
    :goto_1
    return-void
.end method
