.class Lcom/google/firebase/database/core/ThreadPoolEventTarget;
.super Ljava/lang/Object;
.source "ThreadPoolEventTarget.java"

# interfaces
.implements Lcom/google/firebase/database/core/EventTarget;


# instance fields
.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V
    .locals 8

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;

    invoke-direct {v7, p0, p1, p2}, Lcom/google/firebase/database/core/ThreadPoolEventTarget$1;-><init>(Lcom/google/firebase/database/core/ThreadPoolEventTarget;Ljava/util/concurrent/ThreadFactory;Lcom/google/firebase/database/core/ThreadInitializer;)V

    const/4 v1, 0x1

    const-wide/16 v3, 0x3

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public postEvent(Ljava/lang/Runnable;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restart()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/firebase/database/core/ThreadPoolEventTarget;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    return-void
.end method
