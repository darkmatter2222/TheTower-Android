.class public Lio/grpc/internal/DelayedClientCall;
.super Lio/grpc/ClientCall;
.source "DelayedClientCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/DelayedClientCall$DelayedListener;,
        Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NOOP_CALL:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final callExecutor:Ljava/util/concurrent/Executor;

.field private final context:Lio/grpc/Context;

.field private delayedListener:Lio/grpc/internal/DelayedClientCall$DelayedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/DelayedClientCall$DelayedListener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private error:Lio/grpc/Status;

.field private final initialDeadlineMonitor:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private listener:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private volatile passThrough:Z

.field private pendingRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private realCall:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lio/grpc/internal/DelayedClientCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/DelayedClientCall;->logger:Ljava/util/logging/Logger;

    .line 535
    new-instance v0, Lio/grpc/internal/DelayedClientCall$8;

    invoke-direct {v0}, Lio/grpc/internal/DelayedClientCall$8;-><init>()V

    sput-object v0, Lio/grpc/internal/DelayedClientCall;->NOOP_CALL:Lio/grpc/ClientCall;

    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/Deadline;)V
    .locals 1
    .param p3    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Lio/grpc/ClientCall;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    .line 78
    const-string v0, "callExecutor"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    .line 79
    const-string p1, "scheduler"

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    .line 81
    invoke-direct {p0, p2, p3}, Lio/grpc/internal/DelayedClientCall;->scheduleDeadlineIfNeeded(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall;->initialDeadlineMonitor:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Status;Z)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/DelayedClientCall;->cancel(Lio/grpc/Status;Z)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/internal/DelayedClientCall;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lio/grpc/internal/DelayedClientCall;->drainPendingCalls()V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/ClientCall;
    .locals 0

    .line 50
    iget-object p0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    return-object p0
.end method

.method static synthetic access$300(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    return-object p0
.end method

.method private cancel(Lio/grpc/Status;Z)V
    .locals 2

    .line 233
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    if-nez v0, :cond_0

    .line 237
    sget-object p2, Lio/grpc/internal/DelayedClientCall;->NOOP_CALL:Lio/grpc/ClientCall;

    .line 238
    invoke-direct {p0, p2}, Lio/grpc/internal/DelayedClientCall;->setRealCall(Lio/grpc/ClientCall;)V

    .line 241
    iget-object p2, p0, Lio/grpc/internal/DelayedClientCall;->listener:Lio/grpc/ClientCall$Listener;

    .line 242
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall;->error:Lio/grpc/Status;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 244
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 p2, 0x0

    .line 246
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 248
    new-instance p2, Lio/grpc/internal/DelayedClientCall$3;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/DelayedClientCall$3;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Status;)V

    invoke-direct {p0, p2}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 256
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;

    invoke-direct {v1, p0, p2, p1}, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 258
    :cond_3
    invoke-direct {p0}, Lio/grpc/internal/DelayedClientCall;->drainPendingCalls()V

    .line 260
    :goto_1
    invoke-virtual {p0}, Lio/grpc/internal/DelayedClientCall;->callCancelled()V

    return-void

    :catchall_0
    move-exception p1

    .line 246
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private delayOrExecute(Ljava/lang/Runnable;)V
    .locals 1

    .line 267
    monitor-enter p0

    .line 268
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit p0

    return-void

    .line 272
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 272
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private drainPendingCalls()V
    .locals 3

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 287
    :goto_0
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    .line 291
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->delayedListener:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lio/grpc/internal/DelayedClientCall$1DrainListenerRunnable;

    invoke-direct {v2, p0, v0}, Lio/grpc/internal/DelayedClientCall$1DrainListenerRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/internal/DelayedClientCall$DelayedListener;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 298
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    .line 299
    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->pendingRunnables:Ljava/util/List;

    .line 300
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 304
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 306
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 300
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private isAbeforeB(Lio/grpc/Deadline;Lio/grpc/Deadline;)Z
    .locals 0
    .param p1    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 92
    :cond_1
    invoke-virtual {p1, p2}, Lio/grpc/Deadline;->isBefore(Lio/grpc/Deadline;)Z

    move-result p1

    return p1
.end method

.method private scheduleDeadlineIfNeeded(Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/Deadline;)Ljava/util/concurrent/ScheduledFuture;
    .locals 10
    .param p2    # Lio/grpc/Deadline;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/Deadline;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 98
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    invoke-virtual {v0}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object v0

    if-nez p2, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 104
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v1}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide v1, 0x7fffffffffffffffL

    :goto_0
    if-eqz v0, :cond_3

    .line 107
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_3

    .line 108
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 109
    sget-object v3, Lio/grpc/internal/DelayedClientCall;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 114
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 112
    const-string v7, "Call timeout set to \'%d\' ns, due to context deadline."

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p2, :cond_2

    .line 116
    const-string v5, " Explicit call timeout was not set."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :cond_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v5}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    .line 119
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 120
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    .line 119
    const-string v6, " Explicit call timeout was \'%d\' ns."

    invoke-static {v7, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 126
    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    div-long/2addr v3, v8

    .line 127
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    rem-long/2addr v8, v5

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-direct {p0, v0, p2}, Lio/grpc/internal/DelayedClientCall;->isAbeforeB(Lio/grpc/Deadline;Lio/grpc/Deadline;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Context"

    goto :goto_2

    :cond_4
    const-string p2, "CallOptions"

    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v0, v1, v6

    if-gez v0, :cond_5

    .line 131
    const-string v0, "ClientCall started after "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string p2, " deadline was exceeded. Deadline has been exceeded for "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 135
    :cond_5
    const-string v0, "Deadline "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string p2, " will be exceeded in "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_3
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 140
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, ".%09d"

    invoke-static {p2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string p2, "s. "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    new-instance p2, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;

    invoke-direct {p2, p0, v5}, Lio/grpc/internal/DelayedClientCall$1DeadlineExceededRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Ljava/lang/StringBuilder;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v1, v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method private setRealCall(Lio/grpc/ClientCall;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "realCall already set to %s"

    invoke-static {v2, v3, v0}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->initialDeadlineMonitor:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 329
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 331
    :cond_1
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    return-void
.end method


# virtual methods
.method protected callCancelled()V
    .locals 0

    return-void
.end method

.method public final cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 215
    sget-object v0, Lio/grpc/Status;->CANCELLED:Lio/grpc/Status;

    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    goto :goto_0

    .line 219
    :cond_0
    const-string p1, "Call cancelled without message"

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    .line 222
    invoke-virtual {p1, p2}, Lio/grpc/Status;->withCause(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    .line 224
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/DelayedClientCall;->cancel(Lio/grpc/Status;Z)V

    return-void
.end method

.method public final getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    .line 405
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0}, Lio/grpc/ClientCall;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0

    .line 409
    :cond_0
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-object v0

    :catchall_0
    move-exception v0

    .line 405
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final getRealCall()Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public final halfClose()V
    .locals 1

    .line 383
    new-instance v0, Lio/grpc/internal/DelayedClientCall$7;

    invoke-direct {v0, p0}, Lio/grpc/internal/DelayedClientCall$7;-><init>(Lio/grpc/internal/DelayedClientCall;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isReady()Z
    .locals 1

    .line 393
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0}, Lio/grpc/ClientCall;->isReady()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final request(I)V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->request(I)V

    return-void

    .line 372
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$6;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$6;-><init>(Lio/grpc/internal/DelayedClientCall;I)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sendMessage(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 341
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->sendMessage(Ljava/lang/Object;)V

    return-void

    .line 344
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$4;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$4;-><init>(Lio/grpc/internal/DelayedClientCall;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setCall(Lio/grpc/ClientCall;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 166
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 169
    monitor-exit p0

    return-object p1

    .line 171
    :cond_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/ClientCall;

    invoke-direct {p0, p1}, Lio/grpc/internal/DelayedClientCall;->setRealCall(Lio/grpc/ClientCall;)V

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    new-instance p1, Lio/grpc/internal/DelayedClientCall$1;

    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->context:Lio/grpc/Context;

    invoke-direct {p1, p0, v0}, Lio/grpc/internal/DelayedClientCall$1;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/Context;)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 172
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setMessageCompression(Z)V
    .locals 1

    .line 355
    iget-boolean v0, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1}, Lio/grpc/ClientCall;->setMessageCompression(Z)V

    return-void

    .line 358
    :cond_0
    new-instance v0, Lio/grpc/internal/DelayedClientCall$5;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/DelayedClientCall$5;-><init>(Lio/grpc/internal/DelayedClientCall;Z)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->listener:Lio/grpc/ClientCall$Listener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/ClientCall$Listener;

    iput-object v0, p0, Lio/grpc/internal/DelayedClientCall;->listener:Lio/grpc/ClientCall$Listener;

    .line 189
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->error:Lio/grpc/Status;

    .line 190
    iget-boolean v1, p0, Lio/grpc/internal/DelayedClientCall;->passThrough:Z

    if-nez v1, :cond_1

    .line 192
    new-instance v2, Lio/grpc/internal/DelayedClientCall$DelayedListener;

    invoke-direct {v2, p1}, Lio/grpc/internal/DelayedClientCall$DelayedListener;-><init>(Lio/grpc/ClientCall$Listener;)V

    iput-object v2, p0, Lio/grpc/internal/DelayedClientCall;->delayedListener:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    move-object p1, v2

    .line 194
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 196
    iget-object p2, p0, Lio/grpc/internal/DelayedClientCall;->callExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;

    invoke-direct {v1, p0, p1, v0}, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 200
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void

    .line 203
    :cond_3
    new-instance v0, Lio/grpc/internal/DelayedClientCall$2;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/DelayedClientCall$2;-><init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    invoke-direct {p0, v0}, Lio/grpc/internal/DelayedClientCall;->delayOrExecute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 194
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 415
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "realCall"

    iget-object v2, p0, Lio/grpc/internal/DelayedClientCall;->realCall:Lio/grpc/ClientCall;

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
