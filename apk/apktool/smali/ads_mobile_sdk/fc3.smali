.class public final Lads_mobile_sdk/fc3;
.super Lads_mobile_sdk/x93;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic c:Lads_mobile_sdk/x93;

.field public final synthetic d:Lads_mobile_sdk/lc3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/lc3;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lads_mobile_sdk/gu2;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lads_mobile_sdk/fc3;->d:Lads_mobile_sdk/lc3;

    iput-object p3, p0, Lads_mobile_sdk/fc3;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p4, p0, Lads_mobile_sdk/fc3;->c:Lads_mobile_sdk/x93;

    invoke-direct {p0, p2}, Lads_mobile_sdk/x93;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 121
    iget-object v0, p0, Lads_mobile_sdk/fc3;->d:Lads_mobile_sdk/lc3;

    iget-object v0, v0, Lads_mobile_sdk/lc3;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/fc3;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p0, Lads_mobile_sdk/fc3;->d:Lads_mobile_sdk/lc3;

    invoke-virtual {v2, v1}, Lads_mobile_sdk/lc3;->a(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 125
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/fc3;->d:Lads_mobile_sdk/lc3;

    iget-object v1, v1, Lads_mobile_sdk/lc3;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-lez v1, :cond_1

    .line 126
    iget-object v1, p0, Lads_mobile_sdk/fc3;->d:Lads_mobile_sdk/lc3;

    iget-object v1, v1, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    const-string v2, "Already connected to the service."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_1
    iget-object v1, p0, Lads_mobile_sdk/fc3;->d:Lads_mobile_sdk/lc3;

    iget-object v2, p0, Lads_mobile_sdk/fc3;->c:Lads_mobile_sdk/x93;

    invoke-virtual {v1, v2}, Lads_mobile_sdk/lc3;->a(Lads_mobile_sdk/x93;)V

    .line 130
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
