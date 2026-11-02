.class public final Lads_mobile_sdk/qy3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/bt3;
.implements Lads_mobile_sdk/pc1;


# static fields
.field public static final h:[Ljava/lang/String;


# instance fields
.field public final a:Lads_mobile_sdk/tx;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/concurrent/ExecutorService;

.field public d:J

.field public e:J

.field public f:J

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:establish_vpn_service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:establish_vpn_manager"

    aput-object v2, v0, v1

    sput-object v0, Lads_mobile_sdk/qy3;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lads_mobile_sdk/tx;Ljava/util/concurrent/ExecutorService;[Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->d:J

    .line 53
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->e:J

    const-wide/16 v0, -0x1

    .line 54
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->f:J

    const/4 p4, 0x0

    .line 55
    iput-boolean p4, p0, Lads_mobile_sdk/qy3;->g:Z

    .line 64
    iput-object p2, p0, Lads_mobile_sdk/qy3;->a:Lads_mobile_sdk/tx;

    .line 65
    iput-object p1, p0, Lads_mobile_sdk/qy3;->b:Landroid/content/Context;

    .line 66
    iput-object p3, p0, Lads_mobile_sdk/qy3;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 15
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lads_mobile_sdk/qy3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lads_mobile_sdk/qy3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/qy3;)V

    iget-object v1, p0, Lads_mobile_sdk/qy3;->c:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->c()V

    .line 3
    const-string v0, "vs"

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lads_mobile_sdk/qy3;->g:Z

    if-eqz v1, :cond_0

    .line 6
    iget-wide v1, p0, Lads_mobile_sdk/qy3;->e:J

    iget-wide v3, p0, Lads_mobile_sdk/qy3;->d:J

    sub-long/2addr v1, v3

    monitor-exit p0

    goto :goto_0

    .line 8
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, -0x1

    .line 9
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "vf"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 13
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->c()V

    return-void
.end method

.method public final b()J
    .locals 4

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v0, p0, Lads_mobile_sdk/qy3;->f:J

    const-wide/16 v2, -0x1

    .line 143
    iput-wide v2, p0, Lads_mobile_sdk/qy3;->f:J

    .line 144
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lads_mobile_sdk/qy3;->c()V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lads_mobile_sdk/qy3;->g:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lads_mobile_sdk/qy3;->a:Lads_mobile_sdk/tx;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 120
    iput-wide v0, p0, Lads_mobile_sdk/qy3;->e:J

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 4

    .line 68
    new-instance v0, Lads_mobile_sdk/py3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/py3;-><init>(Lads_mobile_sdk/qy3;)V

    .line 90
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/qy3;->b:Landroid/content/Context;

    const-string v2, "appops"

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 92
    sget-object v2, Lads_mobile_sdk/qy3;->h:[Ljava/lang/String;

    iget-object v3, p0, Lads_mobile_sdk/qy3;->c:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
