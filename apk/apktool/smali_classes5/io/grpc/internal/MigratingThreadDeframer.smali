.class final Lio/grpc/internal/MigratingThreadDeframer;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/ThreadOptimizedDeframer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;,
        Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;,
        Lio/grpc/internal/MigratingThreadDeframer$Op;
    }
.end annotation


# instance fields
.field private final appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

.field private final deframer:Lio/grpc/internal/MessageDeframer;

.field private deframerOnTransportThread:Z

.field private final lock:Ljava/lang/Object;

.field private final messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

.field private messageProducerEnqueued:Z

.field private final migratingListener:Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

.field private final opQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/internal/MigratingThreadDeframer$Op;",
            ">;"
        }
    .end annotation
.end field

.field private final transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

.field private final transportListener:Lio/grpc/internal/MessageDeframer$Listener;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;Lio/grpc/internal/MessageDeframer;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    invoke-direct {v0, p0}, Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;-><init>(Lio/grpc/internal/MigratingThreadDeframer;)V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->lock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->opQueue:Ljava/util/Queue;

    .line 65
    new-instance v0, Lio/grpc/internal/SquelchLateMessagesAvailableDeframerListener;

    const-string v1, "listener"

    .line 66
    invoke-static {p1, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/MessageDeframer$Listener;

    invoke-direct {v0, p1}, Lio/grpc/internal/SquelchLateMessagesAvailableDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;)V

    iput-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportListener:Lio/grpc/internal/MessageDeframer$Listener;

    .line 67
    const-string p1, "transportExecutor"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    .line 68
    new-instance p1, Lio/grpc/internal/ApplicationThreadDeframerListener;

    invoke-direct {p1, v0, p2}, Lio/grpc/internal/ApplicationThreadDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;)V

    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer;->appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

    .line 70
    new-instance p2, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    invoke-direct {p2, p1}, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;-><init>(Lio/grpc/internal/MessageDeframer$Listener;)V

    iput-object p2, p0, Lio/grpc/internal/MigratingThreadDeframer;->migratingListener:Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    .line 71
    invoke-virtual {p3, p2}, Lio/grpc/internal/MessageDeframer;->setListener(Lio/grpc/internal/MessageDeframer$Listener;)V

    .line 72
    iput-object p3, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    return-object p0
.end method

.method static synthetic access$100(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer$Listener;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportListener:Lio/grpc/internal/MessageDeframer$Listener;

    return-object p0
.end method

.method static synthetic access$1002(Lio/grpc/internal/MigratingThreadDeframer;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducerEnqueued:Z

    return p1
.end method

.method static synthetic access$200(Lio/grpc/internal/MigratingThreadDeframer;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lio/grpc/internal/MigratingThreadDeframer;->requestFromTransportThread(I)V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    return-object p0
.end method

.method static synthetic access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    return-object p0
.end method

.method static synthetic access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->appListener:Lio/grpc/internal/ApplicationThreadDeframerListener;

    return-object p0
.end method

.method static synthetic access$600(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/lang/Object;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->migratingListener:Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    return-object p0
.end method

.method static synthetic access$802(Lio/grpc/internal/MigratingThreadDeframer;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframerOnTransportThread:Z

    return p1
.end method

.method static synthetic access$900(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/util/Queue;
    .locals 0

    .line 35
    iget-object p0, p0, Lio/grpc/internal/MigratingThreadDeframer;->opQueue:Ljava/util/Queue;

    return-object p0
.end method

.method private requestFromTransportThread(I)V
    .locals 1

    .line 192
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    return-void
.end method

.method private runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-direct {p0, p1, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;Z)Z

    move-result p1

    return p1
.end method

.method private runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;Z)Z
    .locals 5

    .line 97
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframerOnTransportThread:Z

    .line 99
    iget-boolean v2, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducerEnqueued:Z

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 101
    iget-object v4, p0, Lio/grpc/internal/MigratingThreadDeframer;->opQueue:Ljava/util/Queue;

    invoke-interface {v4, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 102
    iput-boolean v3, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducerEnqueued:Z

    .line 104
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    .line 106
    invoke-interface {p1, v3}, Lio/grpc/internal/MigratingThreadDeframer$Op;->run(Z)V

    return v3

    :cond_1
    if-nez v2, :cond_4

    if-eqz p2, :cond_3

    .line 111
    const-string p1, "MigratingThreadDeframer.messageAvailable"

    .line 112
    invoke-static {p1}, Lio/perfmark/PerfMark;->traceTask(Ljava/lang/String;)Lio/perfmark/TaskCloseable;

    move-result-object p1

    .line 113
    :try_start_1
    iget-object p2, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportListener:Lio/grpc/internal/MessageDeframer$Listener;

    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->messageProducer:Lio/grpc/internal/MigratingThreadDeframer$DeframeMessageProducer;

    invoke-interface {p2, v0}, Lio/grpc/internal/MessageDeframer$Listener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    .line 114
    invoke-virtual {p1}, Lio/perfmark/TaskCloseable;->close()V

    goto :goto_1

    :catchall_0
    move-exception p2

    if-eqz p1, :cond_2

    .line 111
    :try_start_2
    invoke-virtual {p1}, Lio/perfmark/TaskCloseable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p2

    .line 116
    :cond_3
    invoke-static {}, Lio/perfmark/PerfMark;->linkOut()Lio/perfmark/Link;

    move-result-object p1

    .line 119
    iget-object p2, p0, Lio/grpc/internal/MigratingThreadDeframer;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$1;-><init>(Lio/grpc/internal/MigratingThreadDeframer;Lio/perfmark/Link;)V

    invoke-interface {p2, v0}, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1

    :catchall_2
    move-exception p1

    .line 104
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 241
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1CloseOp;

    invoke-direct {v0, p0}, Lio/grpc/internal/MigratingThreadDeframer$1CloseOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->stopDelivery()V

    :cond_0
    return-void
.end method

.method public closeWhenComplete()V
    .locals 1

    .line 230
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1CloseWhenCompleteOp;

    invoke-direct {v0, p0}, Lio/grpc/internal/MigratingThreadDeframer$1CloseWhenCompleteOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    return-void
.end method

.method public deframe(Lio/grpc/internal/ReadableBuffer;)V
    .locals 1

    .line 219
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;)Z

    return-void
.end method

.method public request(I)V
    .locals 1

    .line 165
    new-instance v0, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/MigratingThreadDeframer$1RequestOp;-><init>(Lio/grpc/internal/MigratingThreadDeframer;I)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lio/grpc/internal/MigratingThreadDeframer;->runWhereAppropriate(Lio/grpc/internal/MigratingThreadDeframer$Op;Z)Z

    return-void
.end method

.method public setDecompressor(Lio/grpc/Decompressor;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setDecompressor(Lio/grpc/Decompressor;)V

    return-void
.end method

.method public setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setFullStreamDecompressor(Lio/grpc/internal/GzipInflatingBuffer;)V

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1

    .line 77
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer;->deframer:Lio/grpc/internal/MessageDeframer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/MessageDeframer;->setMaxInboundMessageSize(I)V

    return-void
.end method
