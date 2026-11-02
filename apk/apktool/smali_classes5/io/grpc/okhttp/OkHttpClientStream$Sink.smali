.class Lio/grpc/okhttp/OkHttpClientStream$Sink;
.super Ljava/lang/Object;
.source "OkHttpClientStream.java"

# interfaces
.implements Lio/grpc/internal/AbstractClientStream$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/okhttp/OkHttpClientStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Sink"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/okhttp/OkHttpClientStream;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientStream;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/grpc/Status;)V
    .locals 5

    .line 179
    const-string v0, "OkHttpClientStream$Sink.cancel"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$900(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Status;ZLio/grpc/Metadata;)V

    .line 182
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 182
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

    .line 179
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

.method public writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 3

    .line 158
    const-string v0, "OkHttpClientStream$Sink.writeFrame"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    if-nez p1, :cond_0

    .line 161
    :try_start_0
    invoke-static {}, Lio/grpc/okhttp/OkHttpClientStream;->access$500()Lokio/Buffer;

    move-result-object p1

    goto :goto_0

    .line 163
    :cond_0
    check-cast p1, Lio/grpc/okhttp/OkHttpWritableBuffer;

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpWritableBuffer;->buffer()Lokio/Buffer;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v1

    long-to-int v1, v1

    if-lez v1, :cond_1

    .line 166
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v2, v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$600(Lio/grpc/okhttp/OkHttpClientStream;I)V

    .line 170
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v1

    invoke-static {v1}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v2

    invoke-static {v2, p1, p2, p3}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$700(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lokio/Buffer;ZZ)V

    .line 172
    iget-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {p1}, Lio/grpc/okhttp/OkHttpClientStream;->access$800(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;

    move-result-object p1

    invoke-virtual {p1, p4}, Lio/grpc/internal/TransportTracer;->reportMessageSent(I)V

    .line 173
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 173
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

    if-eqz v0, :cond_3

    .line 158
    :try_start_4
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1
.end method

.method public writeHeaders(Lio/grpc/Metadata;[B)V
    .locals 4

    const-string v0, "/"

    .line 143
    const-string v1, "OkHttpClientStream$Sink.writeHeaders"

    invoke-static {v1}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v1

    .line 144
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpClientStream;->access$000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/MethodDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 146
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/grpc/okhttp/OkHttpClientStream;->access$102(Lio/grpc/okhttp/OkHttpClientStream;Z)Z

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_0
    iget-object p2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$300(Lio/grpc/okhttp/OkHttpClientStream$TransportState;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 150
    :try_start_1
    iget-object v2, p0, Lio/grpc/okhttp/OkHttpClientStream$Sink;->this$0:Lio/grpc/okhttp/OkHttpClientStream;

    invoke-static {v2}, Lio/grpc/okhttp/OkHttpClientStream;->access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;->access$400(Lio/grpc/okhttp/OkHttpClientStream$TransportState;Lio/grpc/Metadata;Ljava/lang/String;)V

    .line 151
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {v1}, Lio/perfmark/TaskCloseable;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 151
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

    if-eqz v1, :cond_2

    .line 143
    :try_start_4
    invoke-virtual {v1}, Lio/perfmark/TaskCloseable;->close()V
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
