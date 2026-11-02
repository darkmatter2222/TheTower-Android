.class Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;
.super Lio/grpc/internal/ForwardingConnectionClientTransport;
.source "CallCredentialsApplyingTransportFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CallCredentialsApplyingTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCredentialsApplyingTransport"
.end annotation


# instance fields
.field private final applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

.field private final authority:Ljava/lang/String;

.field private final delegate:Lio/grpc/internal/ConnectionClientTransport;

.field private final pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

.field private savedShutdownNowStatus:Lio/grpc/Status;

.field private savedShutdownStatus:Lio/grpc/Status;

.field private volatile shutdownStatus:Lio/grpc/Status;

.field final synthetic this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;


# direct methods
.method constructor <init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;Lio/grpc/internal/ConnectionClientTransport;Ljava/lang/String;)V
    .locals 1

    .line 102
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-direct {p0}, Lio/grpc/internal/ForwardingConnectionClientTransport;-><init>()V

    .line 87
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const v0, -0x7fffffff

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    new-instance p1, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$1;

    invoke-direct {p1, p0}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$1;-><init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)V

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    .line 103
    const-string p1, "delegate"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ConnectionClientTransport;

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    .line 104
    const-string p1, "authority"

    invoke-static {p3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 83
    iget-object p0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$100(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->maybeShutdown()V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Lio/grpc/internal/ConnectionClientTransport;
    .locals 0

    .line 83
    iget-object p0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object p0
.end method

.method static synthetic access$400(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;)Ljava/lang/String;
    .locals 0

    .line 83
    iget-object p0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->authority:Ljava/lang/String;

    return-object p0
.end method

.method private maybeShutdown()V
    .locals 3

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownStatus:Lio/grpc/Status;

    .line 234
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    const/4 v2, 0x0

    .line 235
    iput-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownStatus:Lio/grpc/Status;

    .line 236
    iput-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    .line 237
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 239
    invoke-super {p0, v0}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 242
    invoke-super {p0, v1}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 237
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected delegate()Lio/grpc/internal/ConnectionClientTransport;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            "[",
            "Lio/grpc/ClientStreamTracer;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 117
    invoke-virtual {p3}, Lio/grpc/CallOptions;->getCredentials()Lio/grpc/CallCredentials;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v0}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Lio/grpc/CallCredentials;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v1}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Lio/grpc/CallCredentials;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    new-instance v1, Lio/grpc/CompositeCallCredentials;

    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {v2}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$200(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Lio/grpc/CallCredentials;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/grpc/CompositeCallCredentials;-><init>(Lio/grpc/CallCredentials;Lio/grpc/CallCredentials;)V

    move-object v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 124
    new-instance v1, Lio/grpc/internal/MetadataApplierImpl;

    iget-object v2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    iget-object v6, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lio/grpc/internal/MetadataApplierImpl;-><init>(Lio/grpc/internal/ClientTransport;Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;[Lio/grpc/ClientStreamTracer;)V

    .line 126
    iget-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-lez p1, :cond_2

    .line 127
    iget-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->applierListener:Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;

    invoke-interface {p1}, Lio/grpc/internal/MetadataApplierImpl$MetadataApplierListener;->onComplete()V

    .line 128
    new-instance p1, Lio/grpc/internal/FailingClientStream;

    iget-object p2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    invoke-direct {p1, p2, v7}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    return-object p1

    .line 130
    :cond_2
    new-instance p1, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$2;

    invoke-direct {p1, p0, v3, v5}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport$2;-><init>(Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)V

    .line 165
    :try_start_0
    instance-of p2, v0, Lio/grpc/InternalMayRequireSpecificExecutor;

    if-eqz p2, :cond_3

    move-object p2, v0

    check-cast p2, Lio/grpc/InternalMayRequireSpecificExecutor;

    .line 166
    invoke-interface {p2}, Lio/grpc/InternalMayRequireSpecificExecutor;->isSpecificExecutorRequired()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 167
    invoke-virtual {v5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 168
    invoke-virtual {v5}, Lio/grpc/CallOptions;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    goto :goto_1

    .line 170
    :cond_3
    iget-object p2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->this$0:Lio/grpc/internal/CallCredentialsApplyingTransportFactory;

    invoke-static {p2}, Lio/grpc/internal/CallCredentialsApplyingTransportFactory;->access$500(Lio/grpc/internal/CallCredentialsApplyingTransportFactory;)Ljava/util/concurrent/Executor;

    move-result-object p2

    .line 173
    :goto_1
    invoke-virtual {v0, p1, p2, v1}, Lio/grpc/CallCredentials;->applyRequestMetadata(Lio/grpc/CallCredentials$RequestInfo;Ljava/util/concurrent/Executor;Lio/grpc/CallCredentials$MetadataApplier;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 175
    sget-object p2, Lio/grpc/Status;->UNAUTHENTICATED:Lio/grpc/Status;

    const-string p3, "Credentials should use fail() instead of throwing exceptions"

    .line 176
    invoke-virtual {p2, p3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p2

    .line 177
    invoke-virtual {p2, p1}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    .line 175
    invoke-virtual {v1, p1}, Lio/grpc/internal/MetadataApplierImpl;->fail(Lio/grpc/Status;)V

    .line 179
    :goto_2
    invoke-virtual {v1}, Lio/grpc/internal/MetadataApplierImpl;->returnStream()Lio/grpc/internal/ClientStream;

    move-result-object p1

    return-object p1

    :cond_4
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    .line 181
    iget-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-ltz p1, :cond_5

    .line 182
    new-instance p1, Lio/grpc/internal/FailingClientStream;

    iget-object p2, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    invoke-direct {p1, p2, v7}, Lio/grpc/internal/FailingClientStream;-><init>(Lio/grpc/Status;[Lio/grpc/ClientStreamTracer;)V

    return-object p1

    .line 184
    :cond_5
    iget-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->delegate:Lio/grpc/internal/ConnectionClientTransport;

    invoke-interface {p1, v3, v4, v5, v7}, Lio/grpc/internal/ConnectionClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object p1

    return-object p1
.end method

.method public shutdown(Lio/grpc/Status;)V
    .locals 2

    .line 190
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_1

    .line 193
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    .line 194
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 198
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownStatus:Lio/grpc/Status;

    .line 200
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-super {p0, p1}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    return-void

    .line 196
    :cond_1
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 202
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shutdownNow(Lio/grpc/Status;)V
    .locals 2

    .line 209
    const-string v0, "status"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    .line 212
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->shutdownStatus:Lio/grpc/Status;

    .line 213
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    if-eqz v0, :cond_1

    .line 215
    monitor-exit p0

    return-void

    .line 217
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->pendingApplier:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iput-object p1, p0, Lio/grpc/internal/CallCredentialsApplyingTransportFactory$CallCredentialsApplyingTransport;->savedShutdownNowStatus:Lio/grpc/Status;

    .line 220
    monitor-exit p0

    return-void

    .line 222
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-super {p0, p1}, Lio/grpc/internal/ForwardingConnectionClientTransport;->shutdownNow(Lio/grpc/Status;)V

    return-void

    :catchall_0
    move-exception p1

    .line 222
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
