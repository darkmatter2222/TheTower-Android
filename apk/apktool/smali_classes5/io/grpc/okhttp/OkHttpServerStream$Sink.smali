.class Lio/grpc/okhttp/OkHttpServerStream$Sink;
.super Ljava/lang/Object;
.source "OkHttpServerStream.java"

# interfaces
.implements Lio/grpc/internal/AbstractServerStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpServerStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sink"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpServerStream;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpServerStream;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 4

    .line 125
    const-string v0, "OkHttpServerStream$Sink.cancel"

    .line 126
    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    sget-object v3, Lio/grpc/okhttp/internal/framed/ErrorCode;->CANCEL:Lio/grpc/okhttp/internal/framed/ErrorCode;

    invoke-static {v2, v3, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$800(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/okhttp/internal/framed/ErrorCode;Lio/grpc/Status;)V

    .line 129
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 129
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_1

    .line 125
    :try_start_4
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZI)V
    .locals 3

    .line 98
    const-string v0, "OkHttpServerStream$Sink.writeFrame"

    .line 99
    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 100
    :try_start_0
    check-cast p1, Lio/grpc/okhttp/OkHttpWritableBuffer;

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer()Lokio/Buffer;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v1, v1

    if-lez v1, :cond_0

    .line 103
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2, v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$400(Lio/grpc/okhttp/OkHttpServerStream;I)V

    .line 105
    :cond_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$500(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lokio/Buffer;Z)V

    .line 107
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpServerStream;->access$600(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    invoke-virtual {p1, p3}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    .line 108
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    .line 98
    :try_start_4
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p1
.end method

.method public writeHeaders(Lio/grpc/Metadata;Z)V
    .locals 2

    .line 87
    const-string p2, "OkHttpServerStream$Sink.writeHeaders"

    .line 88
    invoke-static {p2}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object p2

    .line 89
    :try_start_0
    invoke-static {p1}, Lio/grpc/okhttp/Headers;->createResponseHeaders(Lio/grpc/Metadata;)Ljava/util/List;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v1

    invoke-static {v1, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    .line 92
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 93
    invoke-virtual {p2}, Lio/perfmark/TaskCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 92
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_1

    .line 87
    :try_start_4
    invoke-virtual {p2}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public writeTrailers(Lio/grpc/Metadata;ZLio/grpc/Status;)V
    .locals 1

    .line 114
    const-string p3, "OkHttpServerStream$Sink.writeTrailers"

    .line 115
    invoke-static {p3}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object p3

    .line 116
    :try_start_0
    invoke-static {p1, p2}, Lio/grpc/okhttp/Headers;->createResponseTrailers(Lio/grpc/Metadata;Z)Ljava/util/List;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$200(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 118
    :try_start_1
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpServerStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerStream;->access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$700(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Ljava/util/List;)V

    .line 119
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    .line 120
    invoke-virtual {p3}, Lio/perfmark/TaskCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 119
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p3, :cond_1

    .line 114
    :try_start_4
    invoke-virtual {p3}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method
