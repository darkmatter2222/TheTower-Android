.class public Lcom/applovin/impl/m7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private b:Ljava/util/Timer;

.field private c:J

.field private d:J

.field private e:J

.field private f:Z

.field private final g:Ljava/lang/Runnable;

.field private h:J

.field private final i:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/m7;->i:Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    .line 42
    iput-object p2, p0, Lcom/applovin/impl/m7;->g:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/m7;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/applovin/impl/m7;->c:J

    return-wide p1
.end method

.method public static a(JLcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)Lcom/applovin/impl/m7;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, v0, p2, p3}, Lcom/applovin/impl/m7;->a(JZLcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)Lcom/applovin/impl/m7;

    move-result-object p0

    return-object p0
.end method

.method public static a(JZLcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)Lcom/applovin/impl/m7;
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_2

    if-eqz p4, :cond_1

    .line 5
    new-instance v1, Lcom/applovin/impl/m7;

    invoke-direct {v1, p3, p4}, Lcom/applovin/impl/m7;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/applovin/impl/m7;->c:J

    .line 7
    iput-wide p0, v1, Lcom/applovin/impl/m7;->d:J

    .line 8
    iput-boolean p2, v1, Lcom/applovin/impl/m7;->f:Z

    .line 9
    iput-wide p0, v1, Lcom/applovin/impl/m7;->e:J

    .line 13
    :try_start_0
    new-instance p4, Ljava/util/Timer;

    invoke-direct {p4}, Ljava/util/Timer;-><init>()V

    iput-object p4, v1, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    .line 14
    invoke-direct {v1}, Lcom/applovin/impl/m7;->b()Ljava/util/TimerTask;

    move-result-object v2

    iget-wide v6, v1, Lcom/applovin/impl/m7;->e:J

    move-wide v3, p0

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/m7;->a(Ljava/util/TimerTask;JZJ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 18
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string p2, "Timer"

    const-string p3, "Failed to create timer due to OOM error"

    invoke-virtual {p1, p2, p3, p0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a scheduled timer. Runnable is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    move-wide v3, p0

    .line 20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot create a scheduled timer. Invalid fire time passed in: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/applovin/impl/m7;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/m7;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/m7;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Ljava/util/TimerTask;JZJ)V
    .locals 0

    if-eqz p4, :cond_0

    move-wide p3, p2

    move-object p2, p1

    .line 48
    iget-object p1, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    invoke-virtual/range {p1 .. p6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_0
    move-wide p3, p2

    move-object p2, p1

    .line 52
    iget-object p1, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/m7;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/applovin/impl/m7;->d:J

    return-wide p1
.end method

.method static synthetic b(Lcom/applovin/impl/m7;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method private b()Ljava/util/TimerTask;
    .locals 1

    .line 3
    new-instance v0, Lcom/applovin/impl/m7$a;

    invoke-direct {v0, p0}, Lcom/applovin/impl/m7$a;-><init>(Lcom/applovin/impl/m7;)V

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/m7;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/m7;->i:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/m7;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/applovin/impl/m7;->f:Z

    return p0
.end method

.method static synthetic e(Lcom/applovin/impl/m7;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/m7;->e:J

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 21
    iget-object v0, p0, Lcom/applovin/impl/m7;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 27
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    iput-object v4, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 38
    :try_start_3
    iget-object v5, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v5

    const-string v6, "Timer"

    const-string v7, "Encountered error while cancelling timer"

    invoke-virtual {v5, v6, v7, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :cond_0
    :try_start_4
    iput-object v4, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    .line 37
    :goto_0
    iput-wide v2, p0, Lcom/applovin/impl/m7;->h:J

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 42
    iput-object v4, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    .line 44
    iput-wide v2, p0, Lcom/applovin/impl/m7;->h:J

    .line 45
    throw v1

    .line 47
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public c()J
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/m7;->c:J

    sub-long/2addr v0, v2

    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/m7;->d:J

    sub-long/2addr v2, v0

    return-wide v2

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/applovin/impl/m7;->d:J

    iget-wide v2, p0, Lcom/applovin/impl/m7;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d()V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/m7;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 9
    :try_start_1
    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/applovin/impl/m7;->c:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/applovin/impl/m7;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    :try_start_2
    iput-object v2, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_3
    iget-object v3, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v3

    const-string v4, "Timer"

    const-string v5, "Encountered error while pausing timer"

    invoke-virtual {v3, v4, v5, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 27
    :cond_0
    :try_start_4
    iput-object v2, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    goto :goto_0

    :catchall_1
    move-exception v1

    iput-object v2, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    .line 28
    throw v1

    .line 30
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public e()V
    .locals 13

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/m7;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/m7;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 8
    :try_start_1
    iget-wide v6, p0, Lcom/applovin/impl/m7;->d:J

    sub-long/2addr v6, v2

    iput-wide v6, p0, Lcom/applovin/impl/m7;->d:J

    cmp-long v0, v6, v4

    if-gez v0, :cond_0

    .line 9
    iput-wide v4, p0, Lcom/applovin/impl/m7;->d:J

    .line 11
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/m7;->b:Ljava/util/Timer;

    .line 12
    invoke-direct {p0}, Lcom/applovin/impl/m7;->b()Ljava/util/TimerTask;

    move-result-object v7

    iget-wide v8, p0, Lcom/applovin/impl/m7;->d:J

    iget-boolean v10, p0, Lcom/applovin/impl/m7;->f:Z

    iget-wide v11, p0, Lcom/applovin/impl/m7;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, p0

    :try_start_2
    invoke-direct/range {v6 .. v12}, Lcom/applovin/impl/m7;->a(Ljava/util/TimerTask;JZJ)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/applovin/impl/m7;->c:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :try_start_3
    iput-wide v4, v6, Lcom/applovin/impl/m7;->h:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v6, p0

    .line 22
    :goto_0
    :try_start_4
    iget-object v2, v6, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v6, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v6, Lcom/applovin/impl/m7;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "Timer"

    const-string v7, "Encountered error while resuming timer"

    invoke-virtual {v2, v3, v7, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 26
    :cond_1
    :try_start_5
    iput-wide v4, v6, Lcom/applovin/impl/m7;->h:J

    goto :goto_1

    :catchall_2
    move-exception v0

    iput-wide v4, v6, Lcom/applovin/impl/m7;->h:J

    .line 27
    throw v0

    :cond_2
    move-object v6, p0

    .line 29
    :goto_1
    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v6, p0

    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
