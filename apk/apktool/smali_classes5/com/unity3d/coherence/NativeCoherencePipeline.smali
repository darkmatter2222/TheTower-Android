.class final Lcom/unity3d/coherence/NativeCoherencePipeline;
.super Ljava/lang/Object;
.source "NativeCoherencePipeline.java"

# interfaces
.implements Lcom/unity3d/coherence/CoherencePipeline;


# instance fields
.field private final apiPtr:J

.field private closed:Z

.field private currentWasm:[B

.field private final rrCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private vmHandles:[J


# direct methods
.method constructor <init>(J[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/coherence/CoherenceException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rrCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x5

    if-eqz p3, :cond_1

    .line 32
    array-length v1, p3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-lt p4, v1, :cond_0

    .line 40
    iput-wide p1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    .line 41
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->currentWasm:[B

    .line 42
    new-array p1, p4, [J

    iput-object p1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    .line 44
    :try_start_0
    invoke-direct {p0}, Lcom/unity3d/coherence/NativeCoherencePipeline;->createVms()V
    :try_end_0
    .catch Lcom/unity3d/coherence/CoherenceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    iget-object p2, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    invoke-direct {p0, p2}, Lcom/unity3d/coherence/NativeCoherencePipeline;->dropAllVms([J)V

    .line 47
    throw p1

    .line 37
    :cond_0
    new-instance p1, Lcom/unity3d/coherence/CoherenceException;

    const-string p2, "concurrency must be >= 1"

    invoke-direct {p1, v0, p2}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Lcom/unity3d/coherence/CoherenceException;

    const-string p2, "wasmBytes is null or empty"

    invoke-direct {p1, v0, p2}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private createVms()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/coherence/CoherenceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 54
    iget-wide v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    iget-object v3, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->currentWasm:[B

    invoke-static {v1, v2, v3}, Lcom/unity3d/coherence/CoherenceBridge;->vmCreate(J[B)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-wide v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    invoke-static {v1, v2}, Lcom/unity3d/coherence/CoherenceBridge;->vmLastError(J)Ljava/lang/String;

    move-result-object v1

    .line 57
    new-instance v2, Lcom/unity3d/coherence/CoherenceException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "create_vm failed on slot "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v2, v1, v0}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method private dropAllVms([J)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 171
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 172
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 173
    iget-wide v5, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    invoke-static {v5, v6, v1, v2}, Lcom/unity3d/coherence/CoherenceBridge;->vmDrop(JJ)V

    .line 174
    aput-wide v3, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 161
    :try_start_1
    iput-boolean v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->closed:Z

    .line 162
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    invoke-direct {p0, v0}, Lcom/unity3d/coherence/NativeCoherencePipeline;->dropAllVms([J)V

    const/4 v0, 0x0

    .line 163
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 165
    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 166
    throw v0
.end method

.method public execute([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/coherence/CoherenceException;
        }
    .end annotation

    const-string v0, "slot "

    .line 108
    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 110
    :try_start_0
    iget-boolean v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->closed:Z

    const/4 v2, 0x3

    if-nez v1, :cond_6

    .line 114
    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    array-length v1, v1

    if-eqz v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rrCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iget-object v3, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->floorMod(II)I

    move-result v1

    .line 119
    iget-object v3, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    aget-wide v4, v3, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 125
    new-array p1, v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    invoke-static {v1, v2, v4, v5, p1}, Lcom/unity3d/coherence/CoherenceBridge;->vmInvokeMain(JJ[B)Lcom/unity3d/coherence/VmInvokeResult;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    iget v1, p1, Lcom/unity3d/coherence/VmInvokeResult;->status:I

    if-nez v1, :cond_2

    .line 137
    iget-object v1, p1, Lcom/unity3d/coherence/VmInvokeResult;->bytes:[B

    if-eqz v1, :cond_1

    iget-object p1, p1, Lcom/unity3d/coherence/VmInvokeResult;->bytes:[B

    goto :goto_0

    :cond_1
    new-array p1, v0, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object p1

    .line 139
    :cond_2
    :try_start_3
    new-instance v0, Lcom/unity3d/coherence/CoherenceException;

    iget v1, p1, Lcom/unity3d/coherence/VmInvokeResult;->status:I

    .line 140
    iget-object v2, p1, Lcom/unity3d/coherence/VmInvokeResult;->errorMessage:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object p1, p1, Lcom/unity3d/coherence/VmInvokeResult;->errorMessage:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-direct {v0, v1, p1}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    .line 133
    new-instance v0, Lcom/unity3d/coherence/CoherenceException;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 121
    :cond_4
    new-instance p1, Lcom/unity3d/coherence/CoherenceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no VM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 115
    :cond_5
    new-instance p1, Lcom/unity3d/coherence/CoherenceException;

    const-string v0, "no VMs"

    invoke-direct {p1, v2, v0}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 111
    :cond_6
    new-instance p1, Lcom/unity3d/coherence/CoherenceException;

    const-string v0, "pipeline closed"

    invoke-direct {p1, v2, v0}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 142
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 143
    throw p1
.end method

.method public getConcurrency()I
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 153
    throw v0
.end method

.method public load([B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unity3d/coherence/CoherenceException;
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 67
    array-length v0, p1

    if-eqz v0, :cond_5

    .line 71
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->closed:Z

    if-nez v0, :cond_4

    .line 77
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->currentWasm:[B

    const/4 p1, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 84
    :goto_0
    iget-object v2, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 85
    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    .line 86
    iget-wide v7, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    invoke-static {v7, v8, v3, v4}, Lcom/unity3d/coherence/CoherenceBridge;->vmDrop(JJ)V

    .line 87
    iget-object v2, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    aput-wide v5, v2, v1

    .line 89
    :cond_0
    iget-wide v2, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    iget-object v4, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->currentWasm:[B

    invoke-static {v2, v3, v4}, Lcom/unity3d/coherence/CoherenceBridge;->vmCreate(J[B)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    .line 91
    iget-wide v4, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->apiPtr:J

    invoke-static {v4, v5}, Lcom/unity3d/coherence/CoherenceBridge;->vmLastError(J)Ljava/lang/String;

    move-result-object p1

    move v0, v1

    .line 94
    :cond_1
    iget-object v4, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->vmHandles:[J

    aput-wide v2, v4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 102
    iget-object p1, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    .line 97
    :cond_3
    :try_start_1
    new-instance v1, Lcom/unity3d/coherence/CoherenceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create_vm failed on slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-direct {v1, v0, p1}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 74
    :cond_4
    new-instance p1, Lcom/unity3d/coherence/CoherenceException;

    const-string v0, "pipeline closed"

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 102
    iget-object v0, p0, Lcom/unity3d/coherence/NativeCoherencePipeline;->rwLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 103
    throw p1

    .line 68
    :cond_5
    new-instance p1, Lcom/unity3d/coherence/CoherenceException;

    const/4 v0, 0x5

    const-string v1, "wasmBytes is null or empty"

    invoke-direct {p1, v0, v1}, Lcom/unity3d/coherence/CoherenceException;-><init>(ILjava/lang/String;)V

    throw p1
.end method
