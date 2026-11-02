.class public final Lads_mobile_sdk/mf3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/hf3;


# instance fields
.field public final a:Lads_mobile_sdk/rj3;

.field public final b:Lads_mobile_sdk/cw2;

.field public final c:Lads_mobile_sdk/vv2;

.field public final d:Lads_mobile_sdk/lh2;

.field public final e:Ljava/util/concurrent/ExecutorService;

.field public final f:Ljava/util/concurrent/Executor;

.field public final g:Lads_mobile_sdk/hl3;

.field public final h:Lads_mobile_sdk/ts3;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/String;

.field public final k:J

.field public final l:J

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public p:Lads_mobile_sdk/lf3;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/rj3;Lads_mobile_sdk/dw2;Lads_mobile_sdk/vv2;Lads_mobile_sdk/lh2;Lads_mobile_sdk/hl3;Lads_mobile_sdk/ts3;Lads_mobile_sdk/na;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lads_mobile_sdk/mf3;->a:Lads_mobile_sdk/rj3;

    .line 26
    iput-object p2, p0, Lads_mobile_sdk/mf3;->b:Lads_mobile_sdk/cw2;

    .line 27
    iput-object p3, p0, Lads_mobile_sdk/mf3;->c:Lads_mobile_sdk/vv2;

    .line 28
    iput-object p4, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    .line 29
    iput-object p8, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    .line 30
    iput-object p5, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    .line 31
    iput-object p6, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    .line 32
    invoke-virtual {p7}, Lads_mobile_sdk/na;->M()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/mf3;->j:Ljava/lang/String;

    .line 33
    invoke-virtual {p7}, Lads_mobile_sdk/na;->O()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/mf3;->k:J

    .line 34
    invoke-virtual {p7}, Lads_mobile_sdk/na;->K()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/mf3;->l:J

    .line 35
    invoke-virtual {p7}, Lads_mobile_sdk/na;->w()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/mf3;->m:Z

    .line 36
    invoke-virtual {p7}, Lads_mobile_sdk/na;->J()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/mf3;->n:Z

    .line 37
    invoke-virtual {p7}, Lads_mobile_sdk/na;->C()Z

    move-result p1

    iput-boolean p1, p0, Lads_mobile_sdk/mf3;->o:Z

    if-eqz p1, :cond_0

    .line 39
    invoke-static {p8}, Lcom/google/common/util/concurrent/MoreExecutors;->newSequentialExecutor(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p8

    :cond_0
    iput-object p8, p0, Lads_mobile_sdk/mf3;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;)Lads_mobile_sdk/iv2;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1201
    iget-boolean v0, p0, Lads_mobile_sdk/mf3;->n:Z

    if-eqz v0, :cond_0

    .line 1202
    invoke-virtual {p0}, Lads_mobile_sdk/mf3;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0

    .line 1205
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    invoke-interface {v0}, Lads_mobile_sdk/wl3;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/FluentFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    .line 1206
    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->catching(Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda7;-><init>(Lads_mobile_sdk/mf3;)V

    iget-object v2, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    .line 1207
    invoke-virtual {v0, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->transformAsync(Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda8;-><init>(Lads_mobile_sdk/mf3;)V

    .line 1208
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    const-class v3, Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/util/concurrent/FluentFuture;->catchingAsync(Ljava/lang/Class;Lcom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lads_mobile_sdk/iv2;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    if-eqz p1, :cond_0

    .line 2640
    iget-object v0, p0, Lads_mobile_sdk/mf3;->a:Lads_mobile_sdk/rj3;

    invoke-virtual {p1}, Lads_mobile_sdk/iv2;->v()Lads_mobile_sdk/yh1$c;

    move-result-object v1

    check-cast v0, Lads_mobile_sdk/st1;

    .line 2641
    iget-object v2, v0, Lads_mobile_sdk/st1;->n:Ljava/lang/Object;

    .line 2642
    monitor-enter v2

    .line 2643
    :try_start_0
    iget-object v0, v0, Lads_mobile_sdk/st1;->q:Lads_mobile_sdk/wa;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/wa;->a(Lads_mobile_sdk/yh1$c;)V

    .line 2644
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2645
    :cond_0
    :goto_0
    iget-object v0, p0, Lads_mobile_sdk/mf3;->c:Lads_mobile_sdk/vv2;

    invoke-interface {v0, p1}, Lads_mobile_sdk/vv2;->b(Lads_mobile_sdk/iv2;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2650
    iget-object p1, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    .line 2651
    invoke-interface {p1}, Lads_mobile_sdk/lh2;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda3;-><init>(Lads_mobile_sdk/mf3;)V

    .line 2656
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2657
    invoke-static {p1, v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 2658
    :cond_1
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->f3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 2659
    new-instance p1, Lads_mobile_sdk/kf3;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lads_mobile_sdk/kf3;-><init>(I)V

    throw p1
.end method

.method public final a(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 896
    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda11;-><init>(Lads_mobile_sdk/mf3;Landroid/content/Context;)V

    iget-object p1, p0, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 1064
    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda4;-><init>(Lads_mobile_sdk/mf3;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, v1, Lads_mobile_sdk/mf3;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 4

    .line 711
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->m3:Lads_mobile_sdk/lq0;

    .line 712
    new-instance v2, Lads_mobile_sdk/qr3;

    .line 713
    iget-object v3, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 714
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v2, v1, v3, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 715
    :try_start_0
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->b()V

    .line 716
    iget-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 717
    :try_start_1
    iget-object v1, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    if-nez v1, :cond_0

    .line 719
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->l3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 720
    const-string p1, ""

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    return-object p1

    .line 729
    :cond_0
    :try_start_2
    invoke-virtual {v1, p1}, Lads_mobile_sdk/lf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 735
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 736
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 738
    :try_start_5
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 739
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    .line 741
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 742
    throw p1
.end method

.method public final synthetic a([B)Ljava/lang/Void;
    .locals 2

    .line 2408
    iget-object v0, p0, Lads_mobile_sdk/mf3;->b:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/iy3;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lads_mobile_sdk/mf3;->a(Lads_mobile_sdk/iy3;[BZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Lads_mobile_sdk/iy3;[BZ)V
    .locals 4

    .line 1475
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->e3:Lads_mobile_sdk/lq0;

    .line 1476
    new-instance v2, Lads_mobile_sdk/qr3;

    .line 1477
    iget-object v3, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 1478
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v2, v1, v3, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 1479
    :try_start_0
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->b()V

    .line 1480
    iget-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lads_mobile_sdk/my3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lads_mobile_sdk/lp1; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1481
    :try_start_1
    invoke-static {p1, p2, p3}, Lads_mobile_sdk/lf3;->a(Lads_mobile_sdk/iy3;[BZ)Lads_mobile_sdk/lf3;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    .line 1482
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1490
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 1491
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Lads_mobile_sdk/my3; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lads_mobile_sdk/lp1; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 1496
    :try_start_4
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 1497
    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1498
    :goto_0
    invoke-virtual {v2, p1}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    .line 1499
    new-instance p2, Lads_mobile_sdk/kf3;

    invoke-direct {p2, p1}, Lads_mobile_sdk/kf3;-><init>(Ljava/lang/Exception;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 1504
    invoke-virtual {v2}, Lads_mobile_sdk/qr3;->a()V

    .line 1505
    throw p1
.end method

.method public final a(Landroid/view/InputEvent;)V
    .locals 2

    .line 695
    iget-boolean v0, p0, Lads_mobile_sdk/mf3;->o:Z

    if-eqz v0, :cond_1

    .line 697
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 698
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/mf3;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda5;-><init>(Lads_mobile_sdk/mf3;Landroid/view/InputEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 709
    :cond_1
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->b(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 12

    .line 375
    iget-object v0, p0, Lads_mobile_sdk/mf3;->j:Ljava/lang/String;

    const-string v1, "v"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v0, "gs"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 386
    const-string v1, "ai"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/ListenableFuture;

    const-string v2, "E"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_8

    .line 389
    iget-object v6, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v7, Lads_mobile_sdk/lq0;->j3:Lads_mobile_sdk/lq0;

    .line 390
    new-instance v8, Lads_mobile_sdk/qr3;

    .line 391
    iget-object v9, v6, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 392
    iget-object v6, v6, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v8, v7, v9, v6}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 393
    :try_start_0
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->b()V

    .line 394
    iget-wide v6, p0, Lads_mobile_sdk/mf3;->l:J

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v6, v7, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fh;

    if-eqz v0, :cond_5

    .line 396
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->C()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 397
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->y()Lads_mobile_sdk/xh;

    move-result-object v6

    .line 398
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->y()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 400
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->v()Lads_mobile_sdk/du;

    move-result-object v7

    sget-object v9, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Lads_mobile_sdk/du;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v7, v5

    .line 402
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->A()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 403
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->x()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-object v9, v5

    .line 405
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->z()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 406
    invoke-virtual {v6}, Lads_mobile_sdk/xh;->w()Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    move-object v6, v5

    move-object v5, v7

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v6, v5

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v5

    goto :goto_3

    :catch_2
    move-object v6, v5

    goto :goto_4

    :catch_3
    move-object v6, v5

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v6, v5

    move-object v9, v6

    :goto_2
    move-object v5, v7

    goto :goto_8

    :catch_5
    move-exception v0

    move-object v6, v5

    move-object v9, v6

    :goto_3
    move-object v5, v7

    goto :goto_9

    :catch_6
    move-object v6, v5

    move-object v9, v6

    :goto_4
    move-object v5, v7

    goto :goto_a

    :catch_7
    move-object v6, v5

    move-object v9, v6

    :goto_5
    move-object v5, v7

    goto :goto_b

    :cond_3
    move-object v6, v5

    move-object v9, v6

    .line 410
    :goto_6
    :try_start_3
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x1

    if-le v7, v10, :cond_4

    .line 411
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7

    const-string v10, "0000000000000000000000000000000000000000000000000000000000000000"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 412
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->w()Ljava/lang/String;

    move-result-object v7
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_a
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :cond_4
    move-object v7, v2

    .line 414
    :goto_7
    :try_start_4
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->A()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 415
    invoke-virtual {v0}, Lads_mobile_sdk/fh;->v()J

    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    :catch_8
    move-exception v0

    goto :goto_d

    :catch_9
    move-exception v0

    goto :goto_f

    :catch_a
    move-exception v0

    :goto_8
    move-object v7, v2

    goto :goto_d

    :catch_b
    move-exception v0

    :goto_9
    move-object v7, v2

    goto :goto_f

    :catch_c
    :goto_a
    move-object v7, v2

    goto :goto_10

    :catch_d
    :goto_b
    move-object v7, v2

    goto :goto_11

    :cond_5
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 428
    :cond_6
    :goto_c
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_14

    :catchall_0
    move-exception p1

    goto :goto_13

    :catch_e
    move-exception v0

    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 429
    :goto_d
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    if-nez v10, :cond_7

    goto :goto_e

    :cond_7
    move-object v0, v10

    .line 430
    :goto_e
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_12

    :catch_f
    move-exception v0

    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 433
    :goto_f
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_12

    :catch_10
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 434
    :catch_11
    :goto_10
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v10, Lads_mobile_sdk/lq0;->n3:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v10}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_12

    :catch_12
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 435
    :catch_13
    :goto_11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 432
    :goto_12
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_14

    .line 444
    :goto_13
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    .line 445
    throw p1

    :cond_8
    move-object v7, v2

    move-object v6, v5

    move-object v9, v6

    .line 449
    :goto_14
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    .line 451
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->k3:Lads_mobile_sdk/lq0;

    .line 452
    new-instance v8, Lads_mobile_sdk/qr3;

    .line 453
    iget-object v10, v0, Lads_mobile_sdk/ts3;->b:Lads_mobile_sdk/tx;

    .line 454
    iget-object v0, v0, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    invoke-direct {v8, v2, v10, v0}, Lads_mobile_sdk/qr3;-><init>(Lads_mobile_sdk/lq0;Lads_mobile_sdk/tx;Lads_mobile_sdk/qt1;)V

    .line 455
    :try_start_6
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->b()V

    .line 456
    iget-wide v10, p0, Lads_mobile_sdk/mf3;->k:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v10, v11, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_14
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v1, :cond_9

    move-object v7, v0

    .line 470
    :cond_9
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_18

    :catchall_1
    move-exception p1

    goto :goto_17

    :catch_14
    move-exception v0

    .line 471
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_15

    :cond_a
    move-object v0, v1

    .line 472
    :goto_15
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_16

    :catch_15
    move-exception v0

    .line 475
    invoke-virtual {v8, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_16

    .line 476
    :catch_16
    iget-object v0, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->o3:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_16

    .line 477
    :catch_17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 474
    :goto_16
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_18

    .line 486
    :goto_17
    invoke-virtual {v8}, Lads_mobile_sdk/qr3;->a()V

    .line 487
    throw p1

    .line 491
    :cond_b
    :goto_18
    const-string v0, "int"

    invoke-interface {p1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_c

    .line 493
    const-string v0, "att"

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    if-eqz v9, :cond_d

    .line 496
    const-string v0, "attts"

    invoke-interface {p1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    if-eqz v6, :cond_e

    .line 499
    const-string v0, "attkid"

    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :cond_e
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "gv"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Landroid/content/Context;)V
    .locals 3

    .line 2140
    iget-object v0, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2142
    iget-object v0, v0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 2143
    invoke-interface {v2, v1}, Lads_mobile_sdk/bt3;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 2144
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2145
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;)V

    .line 2146
    const-string v0, "f"

    const-string v1, "q"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2147
    const-string v0, "ctx"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 1840
    iget-object v0, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1841
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1842
    iget-object v0, v0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 1843
    invoke-interface {v2, v1}, Lads_mobile_sdk/bt3;->b(Ljava/util/HashMap;)V

    goto :goto_0

    .line 1844
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1845
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;)V

    .line 1846
    const-string v0, "f"

    const-string v1, "c"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    const-string v0, "ctx"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    const-string p2, "view"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    const-string p2, "act"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1850
    const-string p2, "bds"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6

    .line 183
    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/mf3;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    iget-object p1, v1, Lads_mobile_sdk/mf3;->f:Ljava/util/concurrent/Executor;

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/Futures;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 874
    iget-boolean v0, p0, Lads_mobile_sdk/mf3;->m:Z

    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {p0}, Lads_mobile_sdk/mf3;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1

    .line 877
    :cond_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 316
    iget-object v0, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, v1, Lads_mobile_sdk/lf3;->d:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 321
    :cond_0
    const-string v1, "3.975916745.-1"

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 323
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 186
    iget-object v1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v2, Lads_mobile_sdk/lq0;->i3:Lads_mobile_sdk/lq0;

    new-instance v3, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, p1}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda2;-><init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V

    .line 195
    invoke-virtual {p0, v0}, Lads_mobile_sdk/mf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 196
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p1
.end method

.method public final synthetic b([B)Ljava/lang/Void;
    .locals 2

    .line 1119
    iget-object v0, p0, Lads_mobile_sdk/mf3;->b:Lads_mobile_sdk/cw2;

    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/iy3;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lads_mobile_sdk/mf3;->a(Lads_mobile_sdk/iy3;[BZ)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Landroid/view/InputEvent;)V
    .locals 6

    .line 537
    :try_start_0
    iget-object v1, p0, Lads_mobile_sdk/mf3;->i:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lads_mobile_sdk/my3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lads_mobile_sdk/lp1; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/mf3;->p:Lads_mobile_sdk/lf3;

    if-eqz v0, :cond_0

    .line 540
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 541
    const-string v3, "evt"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    invoke-virtual {v0, v2}, Lads_mobile_sdk/lf3;->b(Ljava/util/HashMap;)V

    goto :goto_0

    .line 544
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->h3:Lads_mobile_sdk/lq0;

    invoke-virtual {p1, v0}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    .line 546
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 547
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lads_mobile_sdk/my3; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lads_mobile_sdk/lp1; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object p1, v0

    move-object v4, p1

    .line 549
    iget-object p1, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v0, Lads_mobile_sdk/lq0;->b:Lads_mobile_sdk/lq0;

    .line 550
    iget-object p1, p1, Lads_mobile_sdk/ts3;->a:Lads_mobile_sdk/qt1;

    .line 551
    move-object v0, p1

    check-cast v0, Lads_mobile_sdk/st1;

    const-wide/16 v2, -0x1

    const/4 v5, 0x0

    const/16 v1, 0x4e87

    invoke-virtual/range {v0 .. v5}, Lads_mobile_sdk/st1;->a(IJLjava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 862
    iget-object v0, p0, Lads_mobile_sdk/mf3;->g:Lads_mobile_sdk/hl3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 863
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 864
    iget-object v0, v0, Lads_mobile_sdk/hl3;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/bt3;

    .line 865
    invoke-interface {v2, v1, p2, p3}, Lads_mobile_sdk/bt3;->a(Ljava/util/HashMap;Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 866
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 867
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->a(Ljava/util/Map;)V

    .line 868
    const-string v0, "f"

    const-string v1, "v"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const-string v0, "ctx"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string p2, "view"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string p2, "act"

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string p2, "bds"

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Lads_mobile_sdk/kb;
    .locals 1

    .line 378
    sget-object v0, Lads_mobile_sdk/kb;->e:Lads_mobile_sdk/kb;

    return-object v0
.end method

.method public final synthetic c(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 377
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v7, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v8, Lads_mobile_sdk/lq0;->i3:Lads_mobile_sdk/lq0;

    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda10;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda10;-><init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p0, v2}, Lads_mobile_sdk/mf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-object p1
.end method

.method public final synthetic c(Landroid/view/InputEvent;)V
    .locals 2

    .line 216
    :try_start_0
    invoke-virtual {p0, p1}, Lads_mobile_sdk/mf3;->b(Landroid/view/InputEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 219
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 220
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_1

    .line 221
    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 223
    :cond_1
    throw v0
.end method

.method public final d()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 273
    iget-object v0, p0, Lads_mobile_sdk/mf3;->d:Lads_mobile_sdk/lh2;

    .line 274
    invoke-interface {v0}, Lads_mobile_sdk/lh2;->d()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/mf3;)V

    .line 279
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 280
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 9

    .line 2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v7, p0, Lads_mobile_sdk/mf3;->h:Lads_mobile_sdk/ts3;

    sget-object v8, Lads_mobile_sdk/lq0;->i3:Lads_mobile_sdk/lq0;

    new-instance v0, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda9;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/mf3$$ExternalSyntheticLambda9;-><init>(Lads_mobile_sdk/mf3;Ljava/util/Map;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v7, v8, v0}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {p0, v2}, Lads_mobile_sdk/mf3;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    return-object p1
.end method

.method public final synthetic e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/mf3;->c(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-virtual {p0, p1, p2, p3, p4}, Lads_mobile_sdk/mf3;->d(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
