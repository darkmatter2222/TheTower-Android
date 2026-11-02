.class public final Lads_mobile_sdk/lc3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:Ljava/util/HashMap;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lads_mobile_sdk/pt1;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/ArrayList;

.field public final e:Ljava/util/HashSet;

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public final h:Landroid/content/Intent;

.field public final i:Lads_mobile_sdk/hc3;

.field public final j:Ljava/lang/ref/WeakReference;

.field public final k:Landroid/os/IBinder$DeathRecipient;

.field public final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field public m:Lads_mobile_sdk/kc3;

.field public n:Landroid/os/IInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lads_mobile_sdk/lc3;->o:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/pt1;Landroid/content/Intent;Lads_mobile_sdk/hc3;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/lc3;-><init>(Landroid/content/Context;Lads_mobile_sdk/pt1;Landroid/content/Intent;Lads_mobile_sdk/hc3;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/pt1;Landroid/content/Intent;Lads_mobile_sdk/hc3;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    .line 7
    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    iput-object p5, p0, Lads_mobile_sdk/lc3;->e:Ljava/util/HashSet;

    .line 10
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lads_mobile_sdk/lc3;->f:Ljava/lang/Object;

    .line 18
    new-instance p5, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda1;

    invoke-direct {p5, p0}, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/lc3;)V

    iput-object p5, p0, Lads_mobile_sdk/lc3;->k:Landroid/os/IBinder$DeathRecipient;

    .line 25
    new-instance p5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p5, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p5, p0, Lads_mobile_sdk/lc3;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 51
    iput-object p1, p0, Lads_mobile_sdk/lc3;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    .line 53
    const-string p1, "PrewarmService"

    iput-object p1, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lads_mobile_sdk/lc3;->h:Landroid/content/Intent;

    .line 55
    iput-object p4, p0, Lads_mobile_sdk/lc3;->i:Lads_mobile_sdk/hc3;

    .line 56
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lads_mobile_sdk/lc3;->j:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1144
    iget-object v0, p0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "reportBinderDeath"

    invoke-virtual {v0, v2, v1}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1145
    iget-object v0, p0, Lads_mobile_sdk/lc3;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1146
    iget-object v0, p0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    iget-object v1, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s : Binder has died."

    invoke-virtual {v0, v2, v1}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    iget-object v0, p0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/x93;

    .line 1148
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : Binder has died."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 1149
    iget-object v1, v1, Lads_mobile_sdk/x93;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v1, :cond_0

    .line 1150
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 1151
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1152
    iget-object v0, p0, Lads_mobile_sdk/lc3;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 1153
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/lc3;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 1154
    new-instance v3, Landroid/os/RemoteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : Binder has died."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_1

    .line 1157
    :cond_2
    iget-object v1, p0, Lads_mobile_sdk/lc3;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1158
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 1159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1160
    :cond_3
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public final a(Lads_mobile_sdk/x93;)V
    .locals 4

    .line 523
    iget-object v0, p0, Lads_mobile_sdk/lc3;->n:Landroid/os/IInterface;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lads_mobile_sdk/lc3;->g:Z

    if-nez v0, :cond_3

    .line 524
    iget-object v0, p0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Initiate binding to the service."

    invoke-virtual {v0, v3, v2}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    iget-object v0, p0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    new-instance p1, Lads_mobile_sdk/kc3;

    invoke-direct {p1, p0}, Lads_mobile_sdk/kc3;-><init>(Lads_mobile_sdk/lc3;)V

    iput-object p1, p0, Lads_mobile_sdk/lc3;->m:Lads_mobile_sdk/kc3;

    const/4 v0, 0x1

    .line 527
    iput-boolean v0, p0, Lads_mobile_sdk/lc3;->g:Z

    .line 528
    iget-object v2, p0, Lads_mobile_sdk/lc3;->a:Landroid/content/Context;

    iget-object v3, p0, Lads_mobile_sdk/lc3;->h:Landroid/content/Intent;

    invoke-virtual {v2, v3, p1, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 529
    iget-object p1, p0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Failed to bind to the service."

    invoke-virtual {p1, v2, v0}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    iput-boolean v1, p0, Lads_mobile_sdk/lc3;->g:Z

    .line 531
    iget-object p1, p0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/x93;

    .line 532
    new-instance v1, Lads_mobile_sdk/mc3;

    invoke-direct {v1}, Lads_mobile_sdk/mc3;-><init>()V

    .line 533
    iget-object v0, v0, Lads_mobile_sdk/x93;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 535
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void

    .line 537
    :cond_3
    iget-boolean v0, p0, Lads_mobile_sdk/lc3;->g:Z

    if-eqz v0, :cond_4

    .line 538
    iget-object v0, p0, Lads_mobile_sdk/lc3;->b:Lads_mobile_sdk/pt1;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Waiting to bind to the service."

    invoke-virtual {v0, v2, v1}, Lads_mobile_sdk/pt1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 539
    iget-object v0, p0, Lads_mobile_sdk/lc3;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 541
    :cond_4
    invoke-virtual {p1}, Lads_mobile_sdk/x93;->run()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 2

    .line 315
    iget-object v0, p0, Lads_mobile_sdk/lc3;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/lc3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/lc3;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 318
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final synthetic a(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 861
    iget-object p2, p0, Lads_mobile_sdk/lc3;->f:Ljava/lang/Object;

    monitor-enter p2

    .line 862
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/lc3;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 863
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    .line 864
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lads_mobile_sdk/x93;)V
    .locals 4

    .line 1
    sget-object v0, Lads_mobile_sdk/lc3;->o:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    iget-object v2, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 6
    iget-object v2, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object v1, p0, Lads_mobile_sdk/lc3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
