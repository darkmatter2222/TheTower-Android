.class Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;
.super Ljava/lang/Object;
.source "OkHttpServerTransport.java"

# interfaces
.implements Lio/grpc/okhttp/internal/framed/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameHandler"
.end annotation


# instance fields
.field private connectionUnacknowledgedBytesRead:I

.field private final frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

.field private final frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

.field private receivedSettings:Z

.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerTransport;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/FrameReader;)V
    .locals 2

    .line 560
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    new-instance p1, Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-class v1, Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-direct {p1, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;-><init>(Ljava/util/logging/Level;Ljava/lang/Class;)V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    .line 561
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    return-void
.end method

.method private connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 3

    .line 1021
    iget v0, p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v0

    const-string v1, "HTTP2 connection error: %s \'%s\'"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v2

    .line 1022
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v0, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void
.end method

.method private headerBlockSize(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)I"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 810
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 811
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/framed/Header;

    .line 812
    iget-object v4, v3, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    iget-object v3, v3, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    add-int/2addr v4, v3

    int-to-long v3, v4

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    .line 814
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method private respondWithGrpcError(IZLio/grpc/Status$Code;Ljava/lang/String;)V
    .locals 2

    .line 1089
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 1090
    sget-object v1, Lio/grpc/InternalStatus;->CODE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p3}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1091
    sget-object p3, Lio/grpc/InternalStatus;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, p3, p4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 1092
    invoke-static {v0, p3}, Lio/grpc/okhttp/Headers;->createResponseTrailers(Lio/grpc/Metadata;Z)Ljava/util/List;

    move-result-object p3

    .line 1094
    iget-object p4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 1095
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->synReply(ZILjava/util/List;)V

    if-nez p2, :cond_0

    .line 1097
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    sget-object p3, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p2, p1, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1099
    :cond_0
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 1100
    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V
    .locals 4

    .line 1050
    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    .line 1051
    sget-object v1, Lio/grpc/InternalStatus;->CODE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {p4}, Lio/grpc/Status$Code;->toStatus()Lio/grpc/Status;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1052
    sget-object p4, Lio/grpc/InternalStatus;->MESSAGE_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, p4, p5}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 1053
    const-string p4, "text/plain; charset=utf-8"

    .line 1054
    invoke-static {p3, p4, v0}, Lio/grpc/okhttp/Headers;->createHttpResponseHeaders(ILjava/lang/String;Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object p3

    .line 1055
    new-instance p4, Lokio/Buffer;

    invoke-direct {p4}, Lokio/Buffer;-><init>()V

    invoke-virtual {p4, p5}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p4

    .line 1057
    iget-object p5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p5

    monitor-enter p5

    .line 1058
    :try_start_0
    new-instance v0, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 1059
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v3

    iget v3, v3, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    invoke-direct {v0, p1, v1, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;-><init>(ILjava/lang/Object;Lio/grpc/okhttp/OutboundFlowController;I)V

    .line 1060
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportActive()V

    .line 1062
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportActive()V

    .line 1066
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1068
    new-instance p2, Lokio/Buffer;

    invoke-direct {p2}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v2, v1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->inboundDataReceived(Lokio/Buffer;IIZ)V

    .line 1070
    :cond_1
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->headers(ILjava/util/List;)V

    .line 1071
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p1

    .line 1072
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p2

    .line 1071
    invoke-virtual {p1, v1, p2, p4, v1}, Lio/grpc/okhttp/OutboundFlowController;->data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V

    .line 1073
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p1

    .line 1074
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p2

    new-instance p3, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler$$ExternalSyntheticLambda0;-><init>(Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    .line 1073
    invoke-virtual {p1, p2, p3}, Lio/grpc/okhttp/OutboundFlowController;->notifyWhenNoPendingData(Lio/grpc/okhttp/OutboundFlowController$StreamState;Ljava/lang/Runnable;)V

    .line 1075
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private rstOkAtEndOfHttpError(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 4

    .line 1079
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1080
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->hasReceivedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1081
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->access$3700(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)I

    move-result v2

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2, v3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1083
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;->access$3700(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 1084
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    .locals 4

    .line 1031
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    if-ne p2, v0, :cond_0

    .line 1032
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Responding with RST_STREAM {0}: {1}"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1035
    :cond_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 1037
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 1038
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-eqz v1, :cond_1

    .line 1040
    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v3, "Responded with RST_STREAM %s: %s"

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 1042
    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1041
    invoke-virtual {v2, p2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 1040
    invoke-interface {v1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->transportReportStatus(Lio/grpc/Status;)V

    .line 1043
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 1045
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0

    return-void
.end method

.method public data(ZILokio/BufferedSource;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 825
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    .line 826
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v3

    move v5, p1

    move v2, p2

    move v4, p4

    .line 825
    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpFrameLogger;->logData(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILokio/Buffer;IZ)V

    if-nez v2, :cond_0

    .line 828
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "Stream 0 is reserved for control messages. RFC7540 section 5.1.1"

    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_0
    and-int/lit8 p1, v2, 0x1

    if-nez p1, :cond_1

    .line 834
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "Clients cannot open even numbered streams. RFC7540 section 5.1.1"

    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_1
    int-to-long p1, v4

    .line 842
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->require(J)V

    .line 844
    iget-object p4, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    .line 845
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-nez v0, :cond_2

    .line 847
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    .line 848
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "Received data for closed stream"

    invoke-direct {p0, v2, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 849
    monitor-exit p4

    return-void

    .line 851
    :cond_2
    invoke-interface {v0}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->hasReceivedEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 852
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    .line 853
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "Received DATA for half-closed (remote) stream. RFC7540 section 5.1"

    invoke-direct {p0, v2, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 855
    monitor-exit p4

    return-void

    .line 857
    :cond_3
    invoke-interface {v0}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundWindowAvailable()I

    move-result v1

    if-ge v1, p5, :cond_4

    .line 858
    invoke-interface {p3, p1, p2}, Lokio/BufferedSource;->skip(J)V

    .line 859
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "Received DATA size exceeded window size. RFC7540 section 6.9"

    invoke-direct {p0, v2, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 861
    monitor-exit p4

    return-void

    .line 863
    :cond_4
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 864
    invoke-interface {p3}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p3

    invoke-virtual {v1, p3, p1, p2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    sub-int p1, p5, v4

    .line 865
    invoke-interface {v0, v1, v4, p1, v5}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundDataReceived(Lokio/Buffer;IIZ)V

    .line 866
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    iget p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    add-int/2addr p1, p5

    iput p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    int-to-float p1, p1

    .line 870
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 871
    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object p2

    iget p2, p2, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    int-to-float p2, p2

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    .line 872
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 873
    :try_start_1
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    iget p3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    int-to-long p3, p3

    const/4 p5, 0x0

    invoke-virtual {p2, p5, p3, p4}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    .line 874
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 875
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 876
    iput p5, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionUnacknowledgedBytesRead:I

    return-void

    :catchall_0
    move-exception v0

    move-object p2, v0

    .line 875
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    :cond_5
    return-void

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 866
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public goAway(ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 3

    .line 961
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logGoAway(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V

    .line 963
    const-string p1, "Received GOAWAY: %s \'%s\'"

    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 964
    iget v0, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object v0

    .line 965
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 966
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 967
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Received GOAWAY: {0} {1}"

    .line 968
    invoke-virtual {p3}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 967
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 970
    :cond_0
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 971
    :try_start_0
    iget-object p3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p3, p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$402(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Status;)Lio/grpc/Status;

    .line 972
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public headers(ZZIILjava/util/List;Lio/grpc/okhttp/internal/framed/HeadersMode;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;",
            "Lio/grpc/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v2, p3

    move-object/from16 v0, p5

    .line 624
    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v5, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v4, v5, v2, v0, v3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logHeaders(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILjava/util/List;Z)V

    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_0

    .line 629
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v2, "Clients cannot open even numbered streams. RFC7540 section 5.1.1"

    invoke-direct {v1, v0, v2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    .line 634
    :cond_0
    iget-object v4, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 635
    :try_start_0
    iget-object v5, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$900(Lio/grpc/okhttp/OkHttpServerTransport;)I

    move-result v5

    if-le v2, v5, :cond_1

    .line 636
    monitor-exit v4

    return-void

    .line 638
    :cond_1
    iget-object v5, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v5}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1000(Lio/grpc/okhttp/OkHttpServerTransport;)I

    move-result v5

    const/4 v11, 0x0

    const/4 v6, 0x1

    if-le v2, v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v11

    :goto_0
    if-eqz v5, :cond_3

    .line 640
    iget-object v7, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v7, v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1002(Lio/grpc/okhttp/OkHttpServerTransport;I)I

    .line 642
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 644
    invoke-direct {v1, v0}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->headerBlockSize(Ljava/util/List;)I

    move-result v4

    .line 645
    iget-object v7, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v7}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v7

    iget v7, v7, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    if-le v4, v7, :cond_4

    .line 646
    sget-object v5, Lio/grpc/Status$Code;->RESOURCE_EXHAUSTED:Lio/grpc/Status$Code;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "Request metadata larger than %d: %d"

    iget-object v7, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 650
    invoke-static {v7}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v7

    iget v7, v7, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMetadataSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 651
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v7, v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 647
    invoke-static {v0, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x1af

    .line 646
    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 655
    :cond_4
    sget-object v3, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    invoke-static {v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 661
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    const/16 v10, 0x3a

    if-lez v9, :cond_9

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v9, v9, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v9, v11}, Lokio/ByteString;->getByte(I)B

    move-result v9

    if-ne v9, v10, :cond_9

    .line 662
    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/grpc/okhttp/internal/framed/Header;

    .line 663
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1300()Lokio/ByteString;

    move-result-object v10

    iget-object v13, v9, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v10, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez v3, :cond_5

    .line 664
    iget-object v3, v9, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 665
    :cond_5
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1400()Lokio/ByteString;

    move-result-object v10

    iget-object v13, v9, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v10, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    if-nez v4, :cond_6

    .line 666
    iget-object v4, v9, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 667
    :cond_6
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1500()Lokio/ByteString;

    move-result-object v10

    iget-object v13, v9, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v10, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v7, :cond_7

    .line 668
    iget-object v7, v9, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 669
    :cond_7
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1600()Lokio/ByteString;

    move-result-object v10

    iget-object v13, v9, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v10, v13}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    if-nez v8, :cond_8

    .line 670
    iget-object v8, v9, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    goto :goto_1

    .line 672
    :cond_8
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Unexpected pseudo header. RFC7540 section 8.1.2.1"

    invoke-direct {v1, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_9
    move v9, v11

    .line 677
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_b

    .line 678
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v13, v13, Lio/grpc/okhttp/internal/framed/Header;->name:Lokio/ByteString;

    invoke-virtual {v13, v11}, Lokio/ByteString;->getByte(I)B

    move-result v13

    if-ne v13, v10, :cond_a

    .line 679
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Pseudo header not before regular headers. RFC7540 section 8.1.2.1"

    invoke-direct {v1, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 684
    :cond_b
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1700()Lokio/ByteString;

    move-result-object v9

    invoke-virtual {v9, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v5, :cond_d

    if-eqz v3, :cond_c

    if-eqz v4, :cond_c

    if-nez v7, :cond_d

    .line 687
    :cond_c
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Missing required pseudo header. RFC7540 section 8.1.2.3"

    invoke-direct {v1, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    .line 691
    :cond_d
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1800()Lokio/ByteString;

    move-result-object v4

    invoke-static {v0, v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1900(Ljava/util/List;Lokio/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 692
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Connection-specific headers not permitted. RFC7540 section 8.1.2.2"

    invoke-direct {v1, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_e
    if-nez v5, :cond_12

    if-eqz p2, :cond_11

    .line 699
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 700
    :try_start_1
    iget-object v0, v1, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-nez v0, :cond_f

    .line 702
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v4, "Received headers for closed stream"

    invoke-direct {v1, v2, v0, v4}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 703
    monitor-exit v3

    return-void

    .line 705
    :cond_f
    invoke-interface {v0}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->hasReceivedEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 706
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v4, "Received HEADERS for half-closed (remote) stream. RFC7540 section 5.1"

    invoke-direct {v1, v2, v0, v4}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    .line 708
    monitor-exit v3

    return-void

    .line 711
    :cond_10
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    invoke-interface {v0, v2, v11, v11, v6}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundDataReceived(Lokio/Buffer;IIZ)V

    .line 712
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 713
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 715
    :cond_11
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Headers disallowed in the middle of the stream. RFC7540 section 8.1"

    invoke-direct {v1, v2, v0, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->streamError(ILio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void

    :cond_12
    if-nez v8, :cond_14

    .line 722
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v4

    invoke-static {v0, v4, v11}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2200(Ljava/util/List;Lokio/ByteString;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_14

    .line 724
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    invoke-static {v0, v8, v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2200(Ljava/util/List;Lokio/ByteString;I)I

    move-result v8

    if-eq v8, v5, :cond_13

    .line 725
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Multiple host headers disallowed. RFC7230 section 5.4"

    const/16 v4, 0x190

    move/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 729
    :cond_13
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/internal/framed/Header;

    iget-object v8, v1, Lio/grpc/okhttp/internal/framed/Header;->value:Lokio/ByteString;

    :cond_14
    move-object v13, v8

    .line 732
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2100()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    .line 735
    invoke-virtual {v7}, Lokio/ByteString;->size()I

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v7, v11}, Lokio/ByteString;->getByte(I)B

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_15

    goto/16 :goto_5

    .line 740
    :cond_15
    invoke-static {v7}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 742
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2400()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    if-nez v1, :cond_16

    .line 744
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v6, "Content-Type is missing or duplicated"

    const/16 v4, 0x19f

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 748
    :cond_16
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    .line 749
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->isGrpcContentType(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 750
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Content-Type is not supported: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x19f

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v2, p3

    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 755
    :cond_17
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2600()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1, v3}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 756
    sget-object v5, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HTTP Method is not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x195

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v2, p3

    .line 756
    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    move-object v14, v1

    return-void

    :cond_18
    move-object/from16 v14, p0

    move/from16 v15, p2

    move/from16 v2, p3

    .line 761
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2700()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2500(Ljava/util/List;Lokio/ByteString;)Lokio/ByteString;

    move-result-object v1

    .line 762
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2800()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokio/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 763
    sget-object v0, Lio/grpc/Status$Code;->INTERNAL:Lio/grpc/Status$Code;

    const-string v3, "Expected header TE: %s, but %s is received. Some intermediate proxy may not support trailers"

    .line 766
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2800()Lokio/ByteString;

    move-result-object v4

    invoke-static {v4}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_19

    const-string v1, "<missing>"

    goto :goto_3

    :cond_19
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 764
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-direct {v14, v2, v15, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithGrpcError(IZLio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    .line 769
    :cond_1a
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2900()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1200(Ljava/util/List;Lokio/ByteString;)V

    .line 771
    invoke-static {v0}, Lio/grpc/okhttp/Utils;->convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;

    move-result-object v0

    .line 772
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 773
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/okhttp/OkHttpServerTransport$Config;->streamTracerFactories:Ljava/util/List;

    invoke-static {v1, v10, v0}, Lio/grpc/internal/StatsTraceContext;->newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;

    move-result-object v4

    .line 774
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 775
    :try_start_2
    new-instance v3, Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 778
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v5

    iget v5, v5, Lio/grpc/okhttp/OkHttpServerTransport$Config;->maxInboundMessageSize:I

    iget-object v6, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 780
    invoke-static {v6}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 781
    invoke-static {v7}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v7

    iget-object v8, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 782
    invoke-static {v8}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v8

    iget-object v9, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 783
    invoke-static {v9}, Lio/grpc/okhttp/OkHttpServerTransport;->access$1100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OkHttpServerTransport$Config;

    move-result-object v9

    iget v9, v9, Lio/grpc/okhttp/OkHttpServerTransport$Config;->flowControlWindow:I

    iget-object v12, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 784
    invoke-static {v12}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;

    move-result-object v12

    move-object/from16 v17, v12

    move-object v12, v0

    move-object v0, v3

    move v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move-object/from16 v9, v17

    invoke-direct/range {v0 .. v10}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;-><init>(Lio/grpc/okhttp/OkHttpServerTransport;IILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;ILio/grpc/internal/TransportTracer;Ljava/lang/String;)V

    .line 786
    new-instance v2, Lio/grpc/okhttp/OkHttpServerStream;

    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 788
    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;

    move-result-object v1

    if-nez v13, :cond_1b

    const/4 v5, 0x0

    goto :goto_4

    .line 789
    :cond_1b
    invoke-static {v13}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    :goto_4
    iget-object v3, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    .line 791
    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/TransportTracer;

    move-result-object v7

    move-object v3, v0

    move-object v6, v4

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lio/grpc/okhttp/OkHttpServerStream;-><init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    move-object v0, v3

    .line 792
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 793
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/KeepAliveEnforcer;->onTransportActive()V

    .line 794
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 795
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/MaxConnectionIdleManager;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/MaxConnectionIdleManager;->onTransportActive()V

    .line 798
    :cond_1c
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    iget-object v1, v14, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v1

    invoke-interface {v1, v2, v10, v12}, Lio/grpc/internal/ServerTransportListener;->streamCreated(Lio/grpc/internal/ServerStream;Ljava/lang/String;Lio/grpc/Metadata;)V

    .line 800
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->onStreamAllocated()V

    if-eqz v15, :cond_1d

    .line 802
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, v1, v11, v11, v15}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->inboundDataReceived(Lokio/Buffer;IIZ)V

    .line 804
    :cond_1d
    monitor-exit v16

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_1e
    :goto_5
    move-object/from16 v14, p0

    move/from16 v15, p2

    .line 736
    sget-object v5, Lio/grpc/Status$Code;->UNIMPLEMENTED:Lio/grpc/Status$Code;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected path to start with /: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-static {v7}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2300(Lokio/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v4, 0x194

    move/from16 v2, p3

    move-object v1, v14

    move v3, v15

    .line 736
    invoke-direct/range {v1 .. v6}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->respondWithHttpError(IZILio/grpc/Status$Code;Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v0

    .line 642
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method synthetic lambda$respondWithHttpError$0$io-grpc-okhttp-OkHttpServerTransport$FrameHandler(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V
    .locals 0

    .line 1074
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->rstOkAtEndOfHttpError(Lio/grpc/okhttp/OkHttpServerTransport$Http2ErrorStreamState;)V

    return-void
.end method

.method public ping(ZII)V
    .locals 6

    .line 931
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveEnforcer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/KeepAliveEnforcer;->pingAcceptable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->ENHANCE_YOUR_CALM:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p3, "too_many_pings"

    sget-object v0, Lio/grpc/Status;->RESOURCE_EXHAUSTED:Lio/grpc/Status;

    const-string v1, "Too many pings from client"

    .line 933
    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    const/4 v1, 0x0

    .line 932
    invoke-static {p1, p2, p3, v0, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V

    return-void

    :cond_0
    int-to-long v0, p2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    if-nez p1, :cond_1

    .line 938
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v2, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {p1, v2, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPing(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V

    .line 939
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 940
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ping(ZII)V

    .line 941
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 942
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 944
    :cond_1
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object p2, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {p1, p2, v0, v1}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPingAck(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;J)V

    const-wide/32 p1, 0xdead

    cmp-long p1, p1, v0

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-wide/16 p1, 0x1111

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 949
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3600(Lio/grpc/okhttp/OkHttpServerTransport;)V

    return-void

    .line 952
    :cond_3
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v2, "Received unexpected ping ack: "

    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public priority(IIIZ)V
    .locals 6

    .line 1007
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPriority(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IIIZ)V

    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 978
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logPushPromise(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IILjava/util/List;)V

    .line 983
    sget-object p1, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string p2, "PUSH_PROMISE only allowed on peer-initiated streams. RFC7540 section 6.6"

    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V
    .locals 4

    .line 882
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logRstStream(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 885
    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 886
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/okhttp/internal/framed/ErrorCode;->STREAM_CLOSED:Lio/grpc/okhttp/internal/framed/ErrorCode;

    .line 887
    invoke-virtual {v0, p2}, Lio/grpc/okhttp/internal/framed/ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received RST_STREAM: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 890
    :cond_0
    iget p2, p2, Lio/grpc/okhttp/internal/framed/ErrorCode;->httpCode:I

    int-to-long v0, p2

    invoke-static {v0, v1}, Lio/grpc/internal/GrpcUtil$Http2Error;->statusForCode(J)Lio/grpc/Status;

    move-result-object p2

    const-string v0, "RST_STREAM"

    .line 891
    invoke-virtual {p2, v0}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 892
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 893
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-eqz v1, :cond_1

    .line 895
    invoke-interface {v1, p2}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->inboundRstReceived(Lio/grpc/Status;)V

    .line 896
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->streamClosed(IZ)V

    .line 898
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 8

    .line 566
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 567
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "OkHttpServerTransport"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 569
    :try_start_0
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2}, Lio/grpc/okhttp/internal/framed/FrameReader;->readConnectionPreface()V

    .line 570
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "Failed to read initial SETTINGS"

    invoke-direct {p0, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 608
    :catch_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 609
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 610
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    .line 574
    :cond_0
    :try_start_2
    iget-boolean v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    if-nez v2, :cond_1

    .line 575
    sget-object v2, Lio/grpc/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v3, "First HTTP/2 frame must be SETTINGS. RFC7540 section 3.5"

    invoke-direct {p0, v2, v3}, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->connectionError(Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 603
    :try_start_3
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 580
    :cond_1
    :goto_1
    :try_start_4
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameReader:Lio/grpc/okhttp/internal/framed/FrameReader;

    invoke-interface {v2, p0}, Lio/grpc/okhttp/internal/framed/FrameReader;->nextFrame(Lio/grpc/okhttp/internal/framed/FrameReader$Handler;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 581
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 582
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$200(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/KeepAliveManager;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/KeepAliveManager;->onDataReceived()V

    goto :goto_1

    .line 589
    :cond_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 590
    :try_start_5
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v3}, Lio/grpc/okhttp/OkHttpServerTransport;->access$400(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Status;

    move-result-object v3

    .line 591
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v3, :cond_3

    .line 593
    :try_start_6
    sget-object v2, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    const-string v3, "TCP connection closed or IOException"

    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 595
    :cond_3
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v5, "I/O failure"

    invoke-static {v2, v4, v5, v3, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 603
    :try_start_7
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 591
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v2

    .line 597
    :try_start_a
    invoke-static {}, Lio/grpc/okhttp/OkHttpServerTransport;->access$600()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Error decoding HTTP/2 frames"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 598
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    sget-object v4, Lio/grpc/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const-string v5, "Error in frame decoder"

    sget-object v6, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string v7, "Error decoding HTTP/2 frames"

    .line 599
    invoke-virtual {v6, v7}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v6

    invoke-virtual {v6, v2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v2

    .line 598
    invoke-static {v3, v4, v5, v2, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$500(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/okhttp/internal/framed/ErrorCode;Ljava/lang/String;Lio/grpc/Status;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 603
    :try_start_b
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    :goto_2
    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    .line 608
    :catch_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 609
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 610
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void

    :catchall_2
    move-exception v1

    .line 603
    :try_start_c
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->exhaust(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .line 608
    :catch_2
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$700(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 609
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$800(Lio/grpc/okhttp/OkHttpServerTransport;)V

    .line 610
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 611
    throw v1
.end method

.method public settings(ZLio/grpc/okhttp/internal/framed/Settings;)V
    .locals 3

    .line 903
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v0, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {p1, v0, p2}, Lio/grpc/okhttp/OkHttpFrameLogger;->logSettings(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 904
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    const/4 v0, 0x7

    .line 906
    :try_start_0
    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    invoke-static {p2, v0}, Lio/grpc/okhttp/OkHttpSettingsUtil;->get(Lio/grpc/okhttp/internal/framed/Settings;I)I

    move-result v0

    .line 909
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/okhttp/OutboundFlowController;->initialOutboundWindowSize(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 915
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object v1

    invoke-virtual {v1, p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->ackSettings(Lio/grpc/okhttp/internal/framed/Settings;)V

    .line 916
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3000(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->flush()V

    .line 917
    iget-boolean p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 918
    iput-boolean p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->receivedSettings:Z

    .line 919
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3500(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/internal/ServerTransportListener;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3300(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/Attributes;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/grpc/internal/ServerTransportListener;->transportReady(Lio/grpc/Attributes;)Lio/grpc/Attributes;

    move-result-object v1

    invoke-static {p2, v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3302(Lio/grpc/okhttp/OkHttpServerTransport;Lio/grpc/Attributes;)Lio/grpc/Attributes;

    :cond_1
    if-eqz v0, :cond_2

    .line 924
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    .line 926
    :cond_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public windowUpdate(IJ)V
    .locals 2

    .line 989
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->frameLogger:Lio/grpc/okhttp/OkHttpFrameLogger;

    sget-object v1, Lio/grpc/okhttp/OkHttpFrameLogger$Direction;->INBOUND:Lio/grpc/okhttp/OkHttpFrameLogger$Direction;

    invoke-virtual {v0, v1, p1, p2, p3}, Lio/grpc/okhttp/OkHttpFrameLogger;->logWindowsUpdate(Lio/grpc/okhttp/OkHttpFrameLogger$Direction;IJ)V

    .line 993
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerTransport;->access$300(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-nez p1, :cond_0

    .line 995
    :try_start_0
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object p1

    const/4 v1, 0x0

    long-to-int p2, p2

    invoke-virtual {p1, v1, p2}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    goto :goto_0

    .line 997
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$2000(Lio/grpc/okhttp/OkHttpServerTransport;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;

    if-eqz p1, :cond_1

    .line 999
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerTransport$FrameHandler;->this$0:Lio/grpc/okhttp/OkHttpServerTransport;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerTransport;->access$3100(Lio/grpc/okhttp/OkHttpServerTransport;)Lio/grpc/okhttp/OutboundFlowController;

    move-result-object v1

    invoke-interface {p1}, Lio/grpc/okhttp/OkHttpServerTransport$StreamState;->getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p1

    long-to-int p2, p2

    invoke-virtual {v1, p1, p2}, Lio/grpc/okhttp/OutboundFlowController;->windowUpdate(Lio/grpc/okhttp/OutboundFlowController$StreamState;I)I

    .line 1002
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
