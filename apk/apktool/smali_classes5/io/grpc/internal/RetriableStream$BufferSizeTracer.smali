.class Lio/grpc/internal/RetriableStream$BufferSizeTracer;
.super Lio/grpc/ClientStreamTracer;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferSizeTracer"
.end annotation


# instance fields
.field bufferNeeded:J

.field private final substream:Lio/grpc/internal/RetriableStream$Substream;

.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 0

    .line 1374
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    .line 1375
    iput-object p2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    return-void
.end method


# virtual methods
.method public outboundWireSize(J)V
    .locals 5

    .line 1385
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v0

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1392
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$500(Lio/grpc/internal/RetriableStream;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1393
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$300(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$State;

    move-result-object v1

    iget-object v1, v1, Lio/grpc/internal/RetriableStream$State;->winningSubstream:Lio/grpc/internal/RetriableStream$Substream;

    if-nez v1, :cond_7

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean v1, v1, Lio/grpc/internal/RetriableStream$Substream;->closed:Z

    if-eqz v1, :cond_1

    goto :goto_3

    .line 1396
    :cond_1
    iget-wide v1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    .line 1397
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {p1}, Lio/grpc/internal/RetriableStream;->access$3200(Lio/grpc/internal/RetriableStream;)J

    move-result-wide p1

    cmp-long p1, v1, p1

    if-gtz p1, :cond_2

    .line 1398
    monitor-exit v0

    return-void

    .line 1401
    :cond_2
    iget-wide p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v1}, Lio/grpc/internal/RetriableStream;->access$3300(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v1

    cmp-long p1, p1, v1

    const/4 p2, 0x1

    if-lez p1, :cond_3

    .line 1402
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iput-boolean p2, p1, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    goto :goto_0

    .line 1405
    :cond_3
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    .line 1406
    invoke-static {p1}, Lio/grpc/internal/RetriableStream;->access$3400(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/RetriableStream$ChannelBufferMeter;

    move-result-object p1

    iget-wide v1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v3}, Lio/grpc/internal/RetriableStream;->access$3200(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lio/grpc/internal/RetriableStream$ChannelBufferMeter;->addAndGet(J)J

    move-result-wide v1

    .line 1407
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    iget-wide v3, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->bufferNeeded:J

    invoke-static {p1, v3, v4}, Lio/grpc/internal/RetriableStream;->access$3202(Lio/grpc/internal/RetriableStream;J)J

    .line 1409
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {p1}, Lio/grpc/internal/RetriableStream;->access$3500(Lio/grpc/internal/RetriableStream;)J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_4

    .line 1410
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iput-boolean p2, p1, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    .line 1414
    :cond_4
    :goto_0
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    iget-boolean p1, p1, Lio/grpc/internal/RetriableStream$Substream;->bufferLimitExceeded:Z

    if-eqz p1, :cond_5

    .line 1415
    iget-object p1, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->this$0:Lio/grpc/internal/RetriableStream;

    iget-object p2, p0, Lio/grpc/internal/RetriableStream$BufferSizeTracer;->substream:Lio/grpc/internal/RetriableStream$Substream;

    invoke-static {p1, p2}, Lio/grpc/internal/RetriableStream;->access$3600(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 1417
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_6

    .line 1420
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_6
    :goto_2
    return-void

    .line 1394
    :cond_7
    :goto_3
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 1417
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
