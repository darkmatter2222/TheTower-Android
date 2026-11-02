.class final Lio/grpc/okhttp/AsyncSink;
.super Ljava/lang/Object;
.source "AsyncSink.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;,
        Lio/grpc/okhttp/AsyncSink$WriteRunnable;
    }
.end annotation


# instance fields
.field private final buffer:Lokio/Buffer;

.field private closed:Z

.field private controlFramesExceeded:Z

.field private controlFramesInWrite:I

.field private flushEnqueued:Z

.field private final lock:Ljava/lang/Object;

.field private final maxQueuedControlFrames:I

.field private queuedControlFrames:I

.field private final serializingExecutor:Lio/grpc/internal/SerializingExecutor;

.field private sink:Lokio/Sink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private socket:Ljava/net/Socket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

.field private writeEnqueued:Z


# direct methods
.method private constructor <init>(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    .line 46
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    .line 53
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    .line 55
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    .line 67
    const-string v0, "executor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/SerializingExecutor;

    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    .line 68
    const-string p1, "exceptionHandler"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    .line 69
    iput p3, p0, Lio/grpc/okhttp/AsyncSink;->maxQueuedControlFrames:I

    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/AsyncSink;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/AsyncSink;)Lokio/Buffer;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    return-object p0
.end method

.method static synthetic access$302(Lio/grpc/okhttp/AsyncSink;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    return p1
.end method

.method static synthetic access$400(Lio/grpc/okhttp/AsyncSink;)I
    .locals 0

    .line 43
    iget p0, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    return p0
.end method

.method static synthetic access$420(Lio/grpc/okhttp/AsyncSink;I)I
    .locals 1

    .line 43
    iget v0, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    return v0
.end method

.method static synthetic access$500(Lio/grpc/okhttp/AsyncSink;)Lokio/Sink;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    return-object p0
.end method

.method static synthetic access$602(Lio/grpc/okhttp/AsyncSink;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    return p1
.end method

.method static synthetic access$700(Lio/grpc/okhttp/AsyncSink;)Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    return-object p0
.end method

.method static synthetic access$800(Lio/grpc/okhttp/AsyncSink;)Ljava/net/Socket;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    return-object p0
.end method

.method static synthetic access$908(Lio/grpc/okhttp/AsyncSink;)I
    .locals 2

    .line 43
    iget v0, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    return v0
.end method

.method static sink(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)Lio/grpc/okhttp/AsyncSink;
    .locals 1

    .line 79
    new-instance v0, Lio/grpc/okhttp/AsyncSink;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/okhttp/AsyncSink;-><init>(Lio/grpc/internal/SerializingExecutor;Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;I)V

    return-object v0
.end method


# virtual methods
.method becomeConnected(Lokio/Sink;Ljava/net/Socket;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AsyncSink\'s becomeConnected should only be called once."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 90
    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokio/Sink;

    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink;->sink:Lokio/Sink;

    .line 91
    const-string p1, "socket"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/Socket;

    iput-object p1, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    return-void
.end method

.method public close()V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    .line 196
    iget-object v0, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v1, Lio/grpc/okhttp/AsyncSink$3;

    invoke-direct {v1, p0}, Lio/grpc/okhttp/AsyncSink$3;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v0, v1}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-nez v0, :cond_3

    .line 159
    const-string v0, "AsyncSink.flush"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    iget-boolean v2, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    if-eqz v2, :cond_0

    .line 162
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 164
    :try_start_2
    iput-boolean v2, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    .line 165
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :try_start_3
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance v2, Lio/grpc/okhttp/AsyncSink$2;

    invoke-direct {v2, p0}, Lio/grpc/okhttp/AsyncSink$2;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {v1, v2}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 165
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 159
    :try_start_6
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1

    .line 157
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method limitControlFramesWriter(Lio/grpc/okhttp/internal/framed/FrameWriter;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 1

    .line 95
    new-instance v0, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;

    invoke-direct {v0, p0, p1}, Lio/grpc/okhttp/AsyncSink$LimitControlFramesWriter;-><init>(Lio/grpc/okhttp/AsyncSink;Lio/grpc/okhttp/internal/framed/FrameWriter;)V

    return-object v0
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 187
    sget-object v0, Lokio/Timeout;->NONE:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const-string v0, "source"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-boolean v0, p0, Lio/grpc/okhttp/AsyncSink;->closed:Z

    if-nez v0, :cond_6

    .line 104
    const-string v0, "AsyncSink.write"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 106
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/AsyncSink;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 107
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    invoke-virtual {v2, p1, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 109
    iget p1, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    iget p2, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    add-int/2addr p1, p2

    iput p1, p0, Lio/grpc/okhttp/AsyncSink;->queuedControlFrames:I

    const/4 p2, 0x0

    .line 110
    iput p2, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesInWrite:I

    .line 111
    iget-boolean p3, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesExceeded:Z

    const/4 v2, 0x1

    if-nez p3, :cond_0

    iget p3, p0, Lio/grpc/okhttp/AsyncSink;->maxQueuedControlFrames:I

    if-le p1, p3, :cond_0

    .line 112
    iput-boolean v2, p0, Lio/grpc/okhttp/AsyncSink;->controlFramesExceeded:Z

    move p2, v2

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lio/grpc/okhttp/AsyncSink;->flushEnqueued:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lio/grpc/okhttp/AsyncSink;->buffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->completeSegmentByteCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-gtz p1, :cond_1

    goto :goto_2

    .line 118
    :cond_1
    iput-boolean v2, p0, Lio/grpc/okhttp/AsyncSink;->writeEnqueued:Z

    .line 120
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    .line 123
    :try_start_2
    iget-object p1, p0, Lio/grpc/okhttp/AsyncSink;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 125
    :try_start_3
    iget-object p2, p0, Lio/grpc/okhttp/AsyncSink;->transportExceptionHandler:Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;

    invoke-interface {p2, p1}, Lio/grpc/okhttp/ExceptionHandlingFrameWriter$TransportExceptionHandler;->onException(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    goto :goto_3

    .line 129
    :cond_2
    :try_start_4
    iget-object p1, p0, Lio/grpc/okhttp/AsyncSink;->serializingExecutor:Lio/grpc/internal/SerializingExecutor;

    new-instance p2, Lio/grpc/okhttp/AsyncSink$1;

    invoke-direct {p2, p0}, Lio/grpc/okhttp/AsyncSink$1;-><init>(Lio/grpc/okhttp/AsyncSink;)V

    invoke-virtual {p1, p2}, Lio/grpc/internal/SerializingExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    return-void

    .line 116
    :cond_3
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_4
    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 120
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_5

    .line 104
    :try_start_8
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p1

    .line 102
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
