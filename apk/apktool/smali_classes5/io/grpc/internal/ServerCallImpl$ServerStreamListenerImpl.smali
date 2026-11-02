.class final Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;
.super Ljava/lang/Object;
.source "ServerCallImpl.java"

# interfaces
.implements Lio/grpc/internal/ServerStreamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ServerStreamListenerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/internal/ServerStreamListener;"
    }
.end annotation


# instance fields
.field private final call:Lio/grpc/internal/ServerCallImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ServerCallImpl<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field private final context:Lio/grpc/Context$CancellableContext;

.field private final listener:Lio/grpc/ServerCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCall$Listener;Lio/grpc/Context$CancellableContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ServerCallImpl<",
            "TReqT;*>;",
            "Lio/grpc/ServerCall$Listener<",
            "TReqT;>;",
            "Lio/grpc/Context$CancellableContext;",
            ")V"
        }
    .end annotation

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ServerCallImpl;

    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    .line 291
    const-string p1, "listener must not be null"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ServerCall$Listener;

    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    .line 292
    const-string p1, "context"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/Context$CancellableContext;

    iput-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->context:Lio/grpc/Context$CancellableContext;

    .line 296
    new-instance p2, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;

    invoke-direct {p2, p0}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl$1;-><init>(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)V

    .line 307
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p3

    .line 296
    invoke-virtual {p1, p2, p3}, Lio/grpc/Context$CancellableContext;->addListener(Lio/grpc/Context$CancellationListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;)Lio/grpc/internal/ServerCallImpl;
    .locals 0

    .line 282
    iget-object p0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    return-object p0
.end method

.method private closedInternal(Lio/grpc/Status;)V
    .locals 2

    const/4 v0, 0x0

    .line 366
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 367
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {p1}, Lio/grpc/ServerCall$Listener;->onComplete()V

    goto :goto_0

    .line 369
    :cond_0
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lio/grpc/internal/ServerCallImpl;->access$102(Lio/grpc/internal/ServerCallImpl;Z)Z

    .line 370
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {p1}, Lio/grpc/ServerCall$Listener;->onCancel()V

    .line 373
    sget-object p1, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    const-string v1, "RPC cancelled"

    .line 374
    invoke-virtual {p1, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    const/4 v1, 0x0

    .line 373
    invoke-static {p1, v0, v1}, Lio/grpc/InternalStatus;->asRuntimeException(Lio/grpc/Status;Lio/grpc/Metadata;Z)Lio/grpc/StatusRuntimeException;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :goto_0
    iget-object p1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {p1, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->context:Lio/grpc/Context$CancellableContext;

    invoke-virtual {v1, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    .line 380
    throw p1
.end method

.method private messagesAvailableInternal(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 3

    .line 320
    iget-object v0, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Lio/grpc/internal/StreamListener$MessageProducer;)V

    return-void

    .line 327
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 329
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    iget-object v2, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ServerCallImpl;->access$300(Lio/grpc/internal/ServerCallImpl;)Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lio/grpc/MethodDescriptor;->parseRequest(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/ServerCall$Listener;->onMessage(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 331
    invoke-static {v0}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 332
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    .line 337
    invoke-static {p1}, Lio/grpc/internal/GrpcUtil;->closeQuietly(Lio/grpc/internal/StreamListener$MessageProducer;)V

    .line 338
    invoke-static {v0}, Lcom/google/common/base/Throwables;->throwIfUnchecked(Ljava/lang/Throwable;)V

    .line 339
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public closed(Lio/grpc/Status;)V
    .locals 2

    .line 357
    const-string v0, "ServerStreamListener.closed"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 359
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->closedInternal(Lio/grpc/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 357
    :try_start_1
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public halfClosed()V
    .locals 2

    .line 345
    const-string v0, "ServerStreamListener.halfClosed"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 347
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    return-void

    .line 351
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {v1}, Lio/grpc/ServerCall$Listener;->onHalfClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 345
    :try_start_2
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 2

    .line 312
    const-string v0, "ServerStreamListener.messagesAvailable"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 314
    invoke-direct {p0, p1}, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->messagesAvailableInternal(Lio/grpc/internal/StreamListener$MessageProducer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    .line 312
    :try_start_1
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1
.end method

.method public onReady()V
    .locals 2

    .line 385
    const-string v0, "ServerStreamListener.onReady"

    invoke-static {v0}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$200(Lio/grpc/internal/ServerCallImpl;)Lio/perfmark/Tag;

    move-result-object v1

    invoke-static {v1}, Lio/perfmark/PerfMark;->attachTag(Lio/perfmark/Tag;)V

    .line 387
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->call:Lio/grpc/internal/ServerCallImpl;

    invoke-static {v1}, Lio/grpc/internal/ServerCallImpl;->access$100(Lio/grpc/internal/ServerCallImpl;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    return-void

    .line 390
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/ServerCallImpl$ServerStreamListenerImpl;->listener:Lio/grpc/ServerCall$Listener;

    invoke-virtual {v1}, Lio/grpc/ServerCall$Listener;->onReady()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 391
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 385
    :try_start_2
    invoke-virtual {v0}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method
