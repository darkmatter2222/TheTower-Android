.class final Lio/grpc/stub/ClientCalls$BlockingResponseStream;
.super Ljava/lang/Object;
.source "ClientCalls.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BlockingResponseStream"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final buffer:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final call:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "*TT;>;"
        }
    .end annotation
.end field

.field private last:Ljava/lang/Object;

.field private final listener:Lio/grpc/stub/ClientCalls$StartableListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ClientCalls$StartableListener<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/ClientCall;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "*TT;>;)V"
        }
    .end annotation

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    .line 588
    new-instance v0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;

    invoke-direct {v0, p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;-><init>(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)V

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/stub/ClientCalls$StartableListener;

    .line 595
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    return-void
.end method

.method static synthetic access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 584
    iget-object p0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$800(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Lio/grpc/ClientCall;
    .locals 0

    .line 584
    iget-object p0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    return-object p0
.end method

.method private waitForNext()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    .line 607
    :goto_0
    :try_start_0
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->buffer:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 616
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 610
    :try_start_1
    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    const-string v3, "Thread interrupted"

    invoke-virtual {v2, v3, v0}, Lio/grpc/ClientCall;->cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_1
    if-eqz v0, :cond_1

    .line 616
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 618
    :cond_1
    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 623
    :goto_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 626
    invoke-direct {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->waitForNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    goto :goto_0

    .line 628
    :cond_0
    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_2

    if-eq v0, p0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 630
    :cond_2
    check-cast v0, Lio/grpc/StatusRuntimeException;

    .line 631
    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getTrailers()Lio/grpc/Metadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method

.method listener()Lio/grpc/stub/ClientCalls$StartableListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/stub/ClientCalls$StartableListener<",
            "TT;>;"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->listener:Lio/grpc/stub/ClientCalls$StartableListener;

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    instance-of v1, v0, Lio/grpc/StatusRuntimeException;

    if-nez v1, :cond_0

    if-eq v0, p0, :cond_0

    .line 643
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->call:Lio/grpc/ClientCall;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    .line 645
    :cond_0
    invoke-virtual {p0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 650
    iput-object v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->last:Ljava/lang/Object;

    return-object v0

    .line 646
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 656
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
