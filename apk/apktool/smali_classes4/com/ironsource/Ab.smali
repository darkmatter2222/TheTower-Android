.class public Lcom/ironsource/Ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/qa;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Timer;

.field private c:Z

.field private d:Ljava/lang/Long;

.field private e:J

.field private f:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetf(Lcom/ironsource/Ab;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/Ab;->f:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(JLjava/lang/Runnable;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "INTERNAL"

    iput-object v0, p0, Lcom/ironsource/Ab;->a:Ljava/lang/String;

    .line 27
    iput-wide p1, p0, Lcom/ironsource/Ab;->e:J

    .line 28
    iput-object p3, p0, Lcom/ironsource/Ab;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/ironsource/Ab;->c:Z

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    if-eqz p4, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/ironsource/Ab;->g()V

    :cond_0
    return-void
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private declared-synchronized h()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    .line 3
    new-instance v1, Lcom/ironsource/Ab$a;

    invoke-direct {v1, p0}, Lcom/ironsource/Ab$a;-><init>(Lcom/ironsource/Ab;)V

    iget-wide v2, p0, Lcom/ironsource/Ab;->e:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/Ab;->f()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ab;->b:Ljava/util/Timer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/ironsource/Ab;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/ironsource/Ab;->e()V

    .line 12
    iget-object v0, p0, Lcom/ironsource/Ab;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/ironsource/Ab;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/Ab;->f()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ironsource/Ab;->c:Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    .line 4
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/lifecycle/b;->b(Lcom/ironsource/qa;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/Ab;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/ironsource/Ab;->c:Z

    .line 6
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ironsource/lifecycle/b;->a(Lcom/ironsource/qa;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ironsource/Ab;->e:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/Ab;->d:Ljava/lang/Long;

    .line 12
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/lifecycle/b;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/ironsource/Ab;->h()V

    :cond_1
    :goto_0
    return-void
.end method
