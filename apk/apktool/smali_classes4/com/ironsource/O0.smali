.class public Lcom/ironsource/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/ironsource/M0;

.field private final b:Lcom/ironsource/Kb;

.field private final c:Lcom/ironsource/zb;

.field private d:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/O0;)Lcom/ironsource/Kb;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/O0;->b:Lcom/ironsource/Kb;

    return-object p0
.end method

.method public constructor <init>(Lcom/ironsource/M0;Lcom/ironsource/Kb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    .line 3
    iput-object p2, p0, Lcom/ironsource/O0;->b:Lcom/ironsource/Kb;

    .line 4
    invoke-direct {p0}, Lcom/ironsource/O0;->c()Lcom/ironsource/zb;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/O0;->c:Lcom/ironsource/zb;

    return-void
.end method

.method private declared-synchronized b(J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/O0;->j()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ironsource/O0;->d:Ljava/util/Timer;

    .line 3
    new-instance v1, Lcom/ironsource/O0$b;

    invoke-direct {v1, p0}, Lcom/ironsource/O0$b;-><init>(Lcom/ironsource/O0;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private c()Lcom/ironsource/zb;
    .locals 4

    .line 1
    new-instance v0, Lcom/ironsource/zb;

    new-instance v1, Lcom/ironsource/O0$a;

    invoke-direct {v1, p0}, Lcom/ironsource/O0$a;-><init>(Lcom/ironsource/O0;)V

    .line 8
    invoke-static {}, Lcom/ironsource/lifecycle/b;->d()Lcom/ironsource/lifecycle/b;

    move-result-object v2

    new-instance v3, Lcom/ironsource/jg;

    invoke-direct {v3}, Lcom/ironsource/jg;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/zb;-><init>(Ljava/lang/Runnable;Lcom/ironsource/lifecycle/b;Lcom/ironsource/jg;)V

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/O0;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ironsource/O0;->d:Ljava/util/Timer;
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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->b:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/O0;->i()V

    :cond_0
    return-void
.end method

.method protected a(J)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ironsource/O0;->c:Lcom/ironsource/zb;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/ironsource/zb;->a(J)V

    :cond_0
    return-void
.end method

.method protected b()Lcom/ironsource/M0;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    return-object v0
.end method

.method protected d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->d:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 3
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    const-wide/16 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->e:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/M0;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/O0;->b(J)V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->c:Lcom/ironsource/zb;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/zb;->b()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->a()Lcom/ironsource/M0$a;

    move-result-object v0

    sget-object v1, Lcom/ironsource/M0$a;->b:Lcom/ironsource/M0$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/M0;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 4
    iget-object v0, p0, Lcom/ironsource/O0;->a:Lcom/ironsource/M0;

    invoke-virtual {v0}, Lcom/ironsource/M0;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/O0;->a(J)V

    :cond_0
    return-void
.end method
