.class Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/MigratingThreadDeframer$Op;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeframeOp"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;

.field final synthetic val$data:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iput-object p2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 215
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    return-void
.end method

.method public run(Z)V
    .locals 2

    .line 199
    const-string v0, "MigratingThreadDeframer.deframe"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 201
    :try_start_0
    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {p1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object p1

    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {p1, v1}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 206
    :cond_0
    :try_start_1
    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {p1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object p1

    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {p1, v1}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 208
    :try_start_2
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/grpc/internal/ApplicationThreadDeframerListener;->deframeFailed(Ljava/lang/Throwable;)V

    .line 209
    iget-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {p1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/MessageDeframer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_1
    return-void

    :goto_1
    if-eqz v0, :cond_2

    .line 199
    :try_start_3
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method
