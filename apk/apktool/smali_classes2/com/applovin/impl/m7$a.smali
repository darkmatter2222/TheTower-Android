.class Lcom/applovin/impl/m7$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/m7;->b()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/m7;


# direct methods
.method constructor <init>(Lcom/applovin/impl/m7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v1}, Lcom/applovin/impl/m7;->a(Lcom/applovin/impl/m7;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    iget-object v1, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v1}, Lcom/applovin/impl/m7;->c(Lcom/applovin/impl/m7;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 15
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2}, Lcom/applovin/impl/m7;->d(Lcom/applovin/impl/m7;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/m7;->a(Lcom/applovin/impl/m7;J)J

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v0}, Lcom/applovin/impl/m7;->e(Lcom/applovin/impl/m7;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/m7;->b(Lcom/applovin/impl/m7;J)J

    goto :goto_0

    .line 24
    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2, v0}, Lcom/applovin/impl/m7;->a(Lcom/applovin/impl/m7;Ljava/util/Timer;)Ljava/util/Timer;

    .line 26
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 27
    :try_start_2
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2}, Lcom/applovin/impl/m7;->b(Lcom/applovin/impl/m7;)Lcom/applovin/impl/sdk/l;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 29
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2}, Lcom/applovin/impl/m7;->b(Lcom/applovin/impl/m7;)Lcom/applovin/impl/sdk/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2}, Lcom/applovin/impl/m7;->b(Lcom/applovin/impl/m7;)Lcom/applovin/impl/sdk/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while executing timed task"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2}, Lcom/applovin/impl/m7;->b(Lcom/applovin/impl/m7;)Lcom/applovin/impl/sdk/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "executingTimedTask"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/s1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v1}, Lcom/applovin/impl/m7;->c(Lcom/applovin/impl/m7;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 37
    :try_start_3
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2}, Lcom/applovin/impl/m7;->d(Lcom/applovin/impl/m7;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 40
    iget-object v0, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/m7;->a(Lcom/applovin/impl/m7;J)J

    .line 41
    iget-object v0, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v0}, Lcom/applovin/impl/m7;->e(Lcom/applovin/impl/m7;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/m7;->b(Lcom/applovin/impl/m7;J)J

    goto :goto_1

    .line 46
    :cond_3
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2, v0}, Lcom/applovin/impl/m7;->a(Lcom/applovin/impl/m7;Ljava/util/Timer;)Ljava/util/Timer;

    .line 48
    :goto_1
    monitor-exit v1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 49
    iget-object v2, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v2}, Lcom/applovin/impl/m7;->c(Lcom/applovin/impl/m7;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 51
    :try_start_4
    iget-object v3, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v3}, Lcom/applovin/impl/m7;->d(Lcom/applovin/impl/m7;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 54
    iget-object v0, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/applovin/impl/m7;->a(Lcom/applovin/impl/m7;J)J

    .line 55
    iget-object v0, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v0}, Lcom/applovin/impl/m7;->e(Lcom/applovin/impl/m7;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/applovin/impl/m7;->b(Lcom/applovin/impl/m7;J)J

    goto :goto_2

    .line 60
    :cond_4
    iget-object v3, p0, Lcom/applovin/impl/m7$a;->a:Lcom/applovin/impl/m7;

    invoke-static {v3, v0}, Lcom/applovin/impl/m7;->a(Lcom/applovin/impl/m7;Ljava/util/Timer;)Ljava/util/Timer;

    .line 62
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 63
    throw v1

    :catchall_4
    move-exception v0

    .line 64
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0
.end method
