.class public final Lads_mobile_sdk/qc1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lads_mobile_sdk/ks1;

.field public final b:Lads_mobile_sdk/ks1;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public final d:Lads_mobile_sdk/ks1;

.field public e:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ks1;Lads_mobile_sdk/ks1;Ljava/util/concurrent/ExecutorService;Lads_mobile_sdk/ks1;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 54
    iput-object p1, p0, Lads_mobile_sdk/qc1;->a:Lads_mobile_sdk/ks1;

    .line 55
    iput-object p2, p0, Lads_mobile_sdk/qc1;->b:Lads_mobile_sdk/ks1;

    .line 56
    iput-object p3, p0, Lads_mobile_sdk/qc1;->c:Ljava/util/concurrent/ExecutorService;

    .line 57
    iput-object p4, p0, Lads_mobile_sdk/qc1;->d:Lads_mobile_sdk/ks1;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Ljava/lang/Void;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public final declared-synchronized b()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 61
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/qc1;->b:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/pc1;

    .line 64
    invoke-interface {v2}, Lads_mobile_sdk/pc1;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/qc1;->d:Lads_mobile_sdk/ks1;

    .line 69
    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->c:Lads_mobile_sdk/lq0;

    .line 72
    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->allAsList(Ljava/lang/Iterable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    new-instance v3, Lads_mobile_sdk/qc1$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lads_mobile_sdk/qc1$$ExternalSyntheticLambda0;-><init>()V

    iget-object v4, p0, Lads_mobile_sdk/qc1;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v3, v4}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v2, v1}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iput-object v0, p0, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 77
    iget-object v0, p0, Lads_mobile_sdk/qc1;->a:Lads_mobile_sdk/ks1;

    invoke-interface {v0}, Lads_mobile_sdk/ks1;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/pc1;

    .line 78
    invoke-interface {v1}, Lads_mobile_sdk/pc1;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 81
    :cond_2
    iget-object v0, p0, Lads_mobile_sdk/qc1;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
