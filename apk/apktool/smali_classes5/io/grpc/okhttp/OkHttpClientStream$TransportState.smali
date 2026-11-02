.class Lio/grpc/okhttp/OkHttpClientStream$TransportState;
.super Lio/grpc/internal/Http2ClientStreamTransportState;
.source "OkHttpClientStream.java"

# interfaces
.implements Lio/grpc/okhttp/OutboundFlowController$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportState"
.end annotation


# instance fields
.field private canStart:Z

.field private cancelSent:Z

.field private flushPendingData:Z

.field private final frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

.field private id:I

.field private final initialWindowSize:I

.field private final lock:Ljava/lang/Object;

.field private final outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

.field private outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

.field private pendingData:Lokio/Buffer;

.field private pendingDataHasEndOfStream:Z

.field private processedWindow:I

.field private requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Lio/perfmark/Tag;

.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientStream;

.field private final transport:Lio/grpc/okhttp/OkHttpClientTransport;

.field private window:I


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpClientStream;ILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientTransport;ILjava/lang/String;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    .line 226
    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientStream;->access$1000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lio/grpc/internal/Http2ClientStreamTransportState;-><init>(ILio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V

    .line 193
    new-instance p1, Lokio/Buffer;

    invoke-direct {p1}, Lokio/Buffer;-><init>()V

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingData:Lokio/Buffer;

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingDataHasEndOfStream:Z

    .line 196
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->flushPendingData:Z

    .line 197
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->cancelSent:Z

    const/4 p1, 0x1

    .line 210
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->canStart:Z

    const/4 p1, -0x1

    .line 215
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id:I

    .line 227
    const-string p1, "lock"

    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->lock:Ljava/lang/Object;

    .line 228
    iput-object p5, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    .line 229
    iput-object p6, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    .line 230
    iput-object p7, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 231
    iput p8, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->window:I

    .line 232
    iput p8, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->processedWindow:I

    .line 233
    iput p8, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->initialWindowSize:I

    .line 234
    invoke-static {p9}, Lio/perfmark/PerfMark;->createTag(Ljava/lang/String;)Lio/perfmark/Tag;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->tag:Lio/perfmark/Tag;

    return-void
.end method

.method static synthetic access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;
    .locals 0

    .line 187
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Metadata;Ljava/lang/String;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->streamReady(Lio/grpc/Metadata;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lokio/Buffer;ZZ)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->sendBuffer(Lokio/Buffer;ZZ)V

    return-void
.end method

.method static synthetic access$900(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Status;ZLio/grpc/Metadata;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->cancel(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    return-void
.end method

.method private cancel(Lio/grpc/Status;ZLio/grpc/Metadata;)V
    .locals 8

    .line 356
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->cancelSent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 359
    iput-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->cancelSent:Z

    .line 360
    iget-boolean v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->canStart:Z

    if-eqz v1, :cond_2

    .line 364
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {p2, v1}, Lio/grpc/okhttp/OkHttpClientTransport;->removePendingStream(Lio/grpc/okhttp/OkHttpClientStream;)V

    const/4 p2, 0x0

    .line 366
    iput-object p2, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->requestHeaders:Ljava/util/List;

    .line 367
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingData:Lokio/Buffer;

    invoke-virtual {p2}, Lokio/Buffer;->clear()V

    const/4 p2, 0x0

    .line 368
    iput-boolean p2, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->canStart:Z

    if-eqz p3, :cond_1

    goto :goto_0

    .line 369
    :cond_1
    new-instance p3, Lio/grpc/Metadata;

    invoke-direct {p3}, Lio/grpc/Metadata;-><init>()V

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportReportStatus(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    return-void

    .line 373
    :cond_2
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 374
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result v2

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    sget-object v6, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    move-object v3, p1

    move v5, p2

    move-object v7, p3

    .line 373
    invoke-virtual/range {v1 .. v7}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V

    return-void
.end method

.method private onEndOfStream()V
    .locals 15

    .line 344
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result v2

    sget-object v4, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    sget-object v6, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V

    return-void

    .line 349
    :cond_0
    iget-object v8, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result v9

    sget-object v11, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v8 .. v14}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V

    return-void
.end method

.method private sendBuffer(Lokio/Buffer;ZZ)V
    .locals 4

    .line 380
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->cancelSent:Z

    if-eqz v0, :cond_0

    return-void

    .line 383
    :cond_0
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->canStart:Z

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    .line 386
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingData:Lokio/Buffer;

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 387
    iget-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingDataHasEndOfStream:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingDataHasEndOfStream:Z

    .line 388
    iget-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->flushPendingData:Z

    or-int/2addr p1, p3

    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->flushPendingData:Z

    return-void

    .line 390
    :cond_1
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string v1, "streamId should be set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    invoke-virtual {v0, p2, v1, p1, p3}, Lio/grpc/okhttp/OutboundFlowController;->data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V

    return-void
.end method

.method private streamReady(Lio/grpc/Metadata;Ljava/lang/String;)V
    .locals 7

    .line 400
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    .line 404
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$1200(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    .line 405
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$1300(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    .line 406
    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$100(Lio/grpc/okhttp/OkHttpClientStream;)Z

    move-result v5

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 407
    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->isUsingPlaintext()Z

    move-result v6

    move-object v1, p1

    move-object v2, p2

    .line 401
    invoke-static/range {v1 .. v6}, Lio/grpc/okhttp/Headers;->createRequestHeaders(Lio/grpc/Metadata;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->requestHeaders:Ljava/util/List;

    .line 410
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    iget-object p2, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->streamReadyToStart(Lio/grpc/okhttp/OkHttpClientStream;)V

    return-void
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 4

    .line 284
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->processedWindow:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->processedWindow:I

    int-to-float p1, v0

    .line 285
    iget v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->initialWindowSize:I

    int-to-float v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    sub-int/2addr v1, v0

    .line 287
    iget p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->window:I

    add-int/2addr p1, v1

    iput p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->window:I

    add-int/2addr v0, v1

    .line 288
    iput v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->processedWindow:I

    .line 289
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result v0

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->windowUpdate(IJ)V

    :cond_0
    return-void
.end method

.method public deframeFailed(Ljava/lang/Throwable;)V
    .locals 2

    .line 278
    invoke-static {p1}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    new-instance v0, Lio/grpc/Metadata;

    invoke-direct {v0}, Lio/grpc/Metadata;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->http2ProcessingFailed(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    return-void
.end method

.method public deframerClosed(Z)V
    .locals 0

    .line 296
    invoke-direct {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->onEndOfStream()V

    .line 297
    invoke-super {p0, p1}, Lio/grpc/internal/Http2ClientStreamTransportState;->deframerClosed(Z)V

    return-void
.end method

.method getOutboundFlowState()Lio/grpc/okhttp/OutboundFlowController$StreamState;
    .locals 2

    .line 422
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 424
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected http2ProcessingFailed(Lio/grpc/Status;ZLio/grpc/Metadata;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->cancel(Lio/grpc/Status;ZLio/grpc/Metadata;)V

    return-void
.end method

.method id()I
    .locals 1

    .line 418
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id:I

    return v0
.end method

.method protected onStreamAllocated()V
    .locals 1

    .line 265
    invoke-super {p0}, Lio/grpc/internal/Http2ClientStreamTransportState;->onStreamAllocated()V

    .line 266
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/TransportTracer;->reportLocalStreamStarted()V

    return-void
.end method

.method public runOnTransportThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 303
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start(I)V
    .locals 9

    .line 240
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "the stream has been started with id %s"

    invoke-static {v0, v1, p1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 241
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id:I

    .line 242
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    invoke-virtual {v0, p0, p1}, Lio/grpc/okhttp/OutboundFlowController;->createState(Lio/grpc/okhttp/OutboundFlowController$Stream;I)Lio/grpc/okhttp/OutboundFlowController$StreamState;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    .line 245
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->onStreamAllocated()V

    .line 247
    iget-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->canStart:Z

    if-eqz p1, :cond_2

    .line 249
    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientStream;->access$100(Lio/grpc/okhttp/OkHttpClientStream;)Z

    move-result v4

    iget v6, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id:I

    const/4 v7, 0x0

    iget-object v8, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->requestHeaders:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->synStream(ZZIILjava/util/List;)V

    .line 250
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientStream;->access$1100(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/StatsTraceContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/StatsTraceContext;->clientOutboundHeaders()V

    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->requestHeaders:Ljava/util/List;

    .line 253
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingData:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    .line 254
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlow:Lio/grpc/okhttp/OutboundFlowController;

    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingDataHasEndOfStream:Z

    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->outboundFlowState:Lio/grpc/okhttp/OutboundFlowController$StreamState;

    iget-object v3, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->pendingData:Lokio/Buffer;

    iget-boolean v4, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->flushPendingData:Z

    invoke-virtual {p1, v0, v1, v3, v4}, Lio/grpc/okhttp/OutboundFlowController;->data(ZLio/grpc/okhttp/OutboundFlowController$StreamState;Lokio/Buffer;Z)V

    .line 258
    :cond_1
    iput-boolean v2, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->canStart:Z

    :cond_2
    return-void
.end method

.method tag()Lio/perfmark/Tag;
    .locals 1

    .line 414
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->tag:Lio/perfmark/Tag;

    return-object v0
.end method

.method public transportDataReceived(Lokio/Buffer;ZI)V
    .locals 7

    .line 327
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v0, v0

    .line 328
    iget v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->window:I

    add-int/2addr v0, p3

    sub-int/2addr v1, v0

    iput v1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->window:I

    .line 329
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->processedWindow:I

    sub-int/2addr v0, p3

    iput v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->processedWindow:I

    if-gez v1, :cond_0

    .line 331
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->frameWriter:Lio/grpc/okhttp/ExceptionHandlingFrameWriter;

    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result p2

    sget-object p3, Lio/grpc/okhttp/internal/framed/ErrorCode;->FLOW_CONTROL_ERROR:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p1, p2, p3}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter;->rstStream(ILio/grpc/okhttp/internal/framed/ErrorCode;)V

    .line 332
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    .line 333
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->id()I

    move-result v1

    sget-object p1, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    const-string p2, "Received data size exceeded our receiving window size"

    .line 334
    invoke-virtual {p1, p2}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    sget-object v3, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 332
    invoke-virtual/range {v0 .. v6}, Lio/grpc/okhttp/OkHttpClientTransport;->finishStream(ILio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;ZLio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Metadata;)V

    return-void

    .line 339
    :cond_0
    new-instance p3, Lio/grpc/okhttp/OkHttpReadableBuffer;

    invoke-direct {p3, p1}, Lio/grpc/okhttp/OkHttpReadableBuffer;-><init>(Lokio/Buffer;)V

    invoke-super {p0, p3, p2}, Lio/grpc/internal/Http2ClientStreamTransportState;->transportDataReceived(Lio/grpc/internal/ReadableBuffer;Z)V

    return-void
.end method

.method public transportHeadersReceived(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/framed/Header;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 314
    invoke-static {p1}, Lio/grpc/okhttp/Utils;->convertTrailers(Ljava/util/List;)Lio/grpc/Metadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportTrailersReceived(Lio/grpc/Metadata;)V

    return-void

    .line 316
    :cond_0
    invoke-static {p1}, Lio/grpc/okhttp/Utils;->convertHeaders(Ljava/util/List;)Lio/grpc/Metadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->transportHeadersReceived(Lio/grpc/Metadata;)V

    return-void
.end method
