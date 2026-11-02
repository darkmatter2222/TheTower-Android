.class final Lcom/google/firebase/firestore/FirestoreClientProvider;
.super Ljava/lang/Object;
.source "FirestoreClientProvider.java"


# instance fields
.field private asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

.field private client:Lcom/google/firebase/firestore/core/FirestoreClient;

.field private final clientFactory:Lcom/google/firebase/firestore/util/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/firebase/firestore/core/FirestoreClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/util/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/firebase/firestore/core/FirestoreClient;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->clientFactory:Lcom/google/firebase/firestore/util/Function;

    .line 67
    new-instance p1, Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-direct {p1}, Lcom/google/firebase/firestore/util/AsyncQueue;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-void
.end method


# virtual methods
.method declared-synchronized call(Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/util/Function<",
            "Lcom/google/firebase/firestore/core/FirestoreClient;",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirestoreClientProvider;->ensureConfigured()V

    .line 94
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized ensureConfigured()V
    .locals 2

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirestoreClientProvider;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->clientFactory:Lcom/google/firebase/firestore/util/Function;

    iget-object v1, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/FirestoreClient;

    iput-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->client:Lcom/google/firebase/firestore/core/FirestoreClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized executeIfShutdown(Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/util/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/util/Function<",
            "Ljava/util/concurrent/Executor;",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/Function<",
            "Ljava/util/concurrent/Executor;",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    new-instance v0, Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/FirestoreClientProvider$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/FirestoreClientProvider;)V

    .line 124
    iget-object v1, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->isTerminated()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-interface {p2, v0}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 125
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {p1, v0}, Lcom/google/firebase/firestore/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method getAsyncQueue()Lcom/google/firebase/firestore/util/AsyncQueue;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    return-object v0
.end method

.method isConfigured()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$executeIfShutdown$0$com-google-firebase-firestore-FirestoreClientProvider(Ljava/lang/Runnable;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/util/AsyncQueue;->enqueueAndForgetEvenAfterShutdown(Ljava/lang/Runnable;)V

    return-void
.end method

.method declared-synchronized procedure(Landroidx/core/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Lcom/google/firebase/firestore/core/FirestoreClient;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirestoreClientProvider;->ensureConfigured()V

    .line 103
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-interface {p1, v0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized terminate()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/FirestoreClientProvider;->ensureConfigured()V

    .line 139
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->client:Lcom/google/firebase/firestore/core/FirestoreClient;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->terminate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/google/firebase/firestore/FirestoreClientProvider;->asyncQueue:Lcom/google/firebase/firestore/util/AsyncQueue;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/util/AsyncQueue;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
