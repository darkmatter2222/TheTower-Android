.class public final Lads_mobile_sdk/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/cf3;


# instance fields
.field public final a:Ljava/util/Map;

.field public final b:Lads_mobile_sdk/xf;

.field public final c:Lads_mobile_sdk/ts3;

.field public final d:Lads_mobile_sdk/qr3;

.field public final e:J


# direct methods
.method public constructor <init>(Lads_mobile_sdk/xf;Ljava/util/Map;Lads_mobile_sdk/na;Lads_mobile_sdk/ts3;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lads_mobile_sdk/f1;->a:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    .line 35
    iput-object p4, p0, Lads_mobile_sdk/f1;->c:Lads_mobile_sdk/ts3;

    .line 36
    sget-object p1, Lads_mobile_sdk/lq0;->q:Lads_mobile_sdk/lq0;

    invoke-virtual {p4, p1}, Lads_mobile_sdk/ts3;->a(Lads_mobile_sdk/lq0;)Lads_mobile_sdk/qr3;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    .line 37
    invoke-virtual {p3}, Lads_mobile_sdk/na;->K()J

    move-result-wide p1

    iput-wide p1, p0, Lads_mobile_sdk/f1;->e:J

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 2
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->b()V

    .line 3
    iget-object v0, p0, Lads_mobile_sdk/f1;->a:Ljava/util/Map;

    const-string v1, "gs"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    .line 6
    iget-wide v1, p0, Lads_mobile_sdk/f1;->e:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/fh;

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v2, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    invoke-virtual {v0}, Lads_mobile_sdk/fh;->y()Lads_mobile_sdk/xh;

    move-result-object v3

    invoke-virtual {v2, v3}, Lads_mobile_sdk/xf;->a(Lads_mobile_sdk/xh;)V

    .line 10
    iget-object v2, p0, Lads_mobile_sdk/f1;->b:Lads_mobile_sdk/xf;

    invoke-virtual {v0}, Lads_mobile_sdk/fh;->v()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lads_mobile_sdk/xf;->m(J)V

    .line 11
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->a()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 25
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 29
    iget-object v1, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v1, v0}, Lads_mobile_sdk/qr3;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 30
    :catch_2
    iget-object v0, p0, Lads_mobile_sdk/f1;->c:Lads_mobile_sdk/ts3;

    sget-object v1, Lads_mobile_sdk/lq0;->F:Lads_mobile_sdk/lq0;

    invoke-virtual {v0, v1}, Lads_mobile_sdk/ts3;->b(Lads_mobile_sdk/lq0;)V

    goto :goto_2

    .line 31
    :catch_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 28
    :goto_2
    iget-object v0, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v0}, Lads_mobile_sdk/qr3;->a()V

    :goto_3
    const/4 v0, 0x0

    return-object v0

    .line 40
    :goto_4
    iget-object v1, p0, Lads_mobile_sdk/f1;->d:Lads_mobile_sdk/qr3;

    invoke-virtual {v1}, Lads_mobile_sdk/qr3;->a()V

    .line 41
    throw v0
.end method
