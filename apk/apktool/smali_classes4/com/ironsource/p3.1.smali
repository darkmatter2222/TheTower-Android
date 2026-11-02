.class public abstract Lcom/ironsource/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;
.implements Lcom/ironsource/Af$a;
.implements Lcom/ironsource/D0;
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;
.implements Lcom/ironsource/P8$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/p3$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "Listener::Lcom/ironsource/P0;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;",
        "Lcom/ironsource/Af$a;",
        "Lcom/ironsource/D0;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        "Lcom/ironsource/P8$b;"
    }
.end annotation


# instance fields
.field protected a:Lcom/ironsource/n0;

.field protected b:Lcom/ironsource/P0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "Listener;"
        }
    .end annotation
.end field

.field protected c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "*",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/ironsource/E0;

.field protected e:Lcom/ironsource/p3$h;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected g:Lcom/ironsource/md;

.field protected h:Lcom/ironsource/c1;

.field protected i:Lorg/json/JSONObject;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

.field protected l:Ljava/lang/Long;

.field protected m:Lcom/ironsource/l5;

.field private n:Lcom/ironsource/Af;

.field private final o:Lcom/ironsource/y2;

.field private final p:Lcom/ironsource/xd;

.field protected final q:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mH(Lcom/ironsource/p3;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/p3;->H()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mI(Lcom/ironsource/p3;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/p3;->I()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mJ(Lcom/ironsource/p3;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/p3;->J()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mK(Lcom/ironsource/p3;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/p3;->K()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mL(Lcom/ironsource/p3;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/p3;->L()V

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/p3;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/p3;->a(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/p3;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/p3;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/xd;Lcom/ironsource/n0;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;Lcom/ironsource/c1;Lcom/ironsource/y2;Lcom/ironsource/P0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/xd;",
            "Lcom/ironsource/n0;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;",
            "Lcom/ironsource/c1;",
            "Lcom/ironsource/y2;",
            "T",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ironsource/p3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    iput-object p2, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    .line 27
    iput-object p6, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    .line 28
    new-instance p6, Lcom/ironsource/E0;

    .line 29
    invoke-virtual {p2}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    sget-object v0, Lcom/ironsource/E0$b;->b:Lcom/ironsource/E0$b;

    invoke-direct {p6, p2, v0, p0}, Lcom/ironsource/E0;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/E0$b;Lcom/ironsource/D0;)V

    iput-object p6, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    .line 30
    iput-object p4, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    .line 31
    invoke-virtual {p4}, Lcom/ironsource/c1;->c()Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/p3;->i:Lorg/json/JSONObject;

    .line 32
    iput-object p3, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    .line 33
    iput-object p5, p0, Lcom/ironsource/p3;->o:Lcom/ironsource/y2;

    .line 34
    iput-object p1, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    .line 35
    new-instance p1, Lcom/ironsource/Af;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lcom/ironsource/p3;->s()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/ironsource/Af;-><init>(J)V

    iput-object p1, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/p3;->q:Ljava/lang/Object;

    .line 37
    sget-object p1, Lcom/ironsource/p3$h;->a:Lcom/ironsource/p3$h;

    invoke-virtual {p0, p1}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    return-void
.end method

.method private D()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v1, Lcom/ironsource/p3$h;->b:Lcom/ironsource/p3$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private F()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ironsource/p3$h;->d:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Z)V

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    invoke-virtual {v0, p0}, Lcom/ironsource/Af;->a(Lcom/ironsource/Af$a;)V

    .line 12
    invoke-virtual {p0}, Lcom/ironsource/p3;->G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected error while calling adapter.loadAd() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_0

    .line 23
    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    .line 25
    :cond_0
    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v2, 0x1fe

    invoke-virtual {p0, v1, v2, v0}, Lcom/ironsource/p3;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {p0}, Lcom/ironsource/p3;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/N;->a(Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    invoke-interface {v0, p0}, Lcom/ironsource/P0;->e(Lcom/ironsource/p3;)V

    return-void
.end method

.method private I()V
    .locals 7

    const-string v0, "Load duration = "

    .line 1
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/ironsource/Af;->e()V

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/ironsource/p3;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v4, Lcom/ironsource/p3$h;->d:Lcom/ironsource/p3$h;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_3

    .line 11
    iget-object v3, p0, Lcom/ironsource/p3;->m:Lcom/ironsource/l5;

    invoke-static {v3}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v3

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/ironsource/p3;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {v0, v3, v4}, Lcom/ironsource/Cb;->a(J)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v0, v0, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {v0, v3, v4, v5}, Lcom/ironsource/Cb;->a(JZ)V

    .line 23
    :cond_2
    :goto_0
    sget-object v0, Lcom/ironsource/p3$h;->e:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 25
    invoke-virtual {p0}, Lcom/ironsource/p3;->O()Z

    move-result v5

    goto :goto_1

    .line 29
    :cond_3
    sget-object v0, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    if-ne v3, v0, :cond_4

    goto :goto_1

    .line 33
    :cond_4
    const-string v0, "unexpected load success for %s, state - %s"

    .line 36
    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 37
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 43
    const-string v0, "unexpected load success, state - %s"

    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {p0}, Lcom/ironsource/p3;->v()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->s(Ljava/lang/String;)V

    goto :goto_1

    .line 48
    :cond_5
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->p(Ljava/lang/String;)V

    .line 52
    :cond_6
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_7

    .line 57
    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    invoke-interface {v0, p0}, Lcom/ironsource/P0;->d(Lcom/ironsource/p3;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 58
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private J()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/ironsource/p3$h;->f:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 7
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, v0, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {p0}, Lcom/ironsource/p3;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/N;->g(Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    invoke-interface {v0, p0}, Lcom/ironsource/P0;->a(Lcom/ironsource/p3;)V

    return-void
.end method

.method private K()V
    .locals 3

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/ironsource/p3;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/Af;->e()V

    .line 11
    :cond_0
    sget-object v0, Lcom/ironsource/p3$h;->c:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 20
    invoke-direct {p0}, Lcom/ironsource/p3;->F()V

    return-void

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v2, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 30
    const-string v2, "unexpected init success for %s, state - %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_3

    .line 37
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "unexpected init success, state - %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->n(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private L()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->m:Lcom/ironsource/l5;

    invoke-static {v0}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v2

    .line 2
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Load duration = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", state = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", isBidder = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/ironsource/p3;->w()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 9
    const-string v5, "time out"

    .line 11
    iget-object v7, p0, Lcom/ironsource/p3;->q:Ljava/lang/Object;

    monitor-enter v7

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/p3;->z()Z

    move-result v1

    const/16 v4, 0x401

    if-eqz v1, :cond_1

    .line 14
    sget-object v0, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 17
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, v0, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/ironsource/Cb;->a(JIZ)V

    .line 19
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v0, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    const/16 v4, 0x401

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/ironsource/Cb;->a(JILjava/lang/String;Z)V

    .line 38
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    iget-object v0, p0, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    invoke-static {v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/ironsource/P0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p3;)V

    return-void

    .line 44
    :cond_1
    :try_start_1
    const-string v1, "unexpected timeout for %s, state - %s, error - %s"

    .line 48
    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 49
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_2

    .line 57
    const-string v0, "unexpected timeout, state - %s, error - %s"

    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    .line 60
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->u(Ljava/lang/String;)V

    .line 66
    :cond_2
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    .line 68
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 7

    .line 84
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/ironsource/p3;->D()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/ironsource/Af;->e()V

    .line 94
    :cond_0
    sget-object v0, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 97
    iget-object v0, p0, Lcom/ironsource/p3;->m:Lcom/ironsource/l5;

    invoke-static {v0}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v5

    .line 98
    sget-object v2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/p3;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    .line 102
    iget-object p1, v1, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, p0}, Lcom/ironsource/P0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p3;)V

    return-void

    :cond_1
    move-object v1, p0

    move v3, p1

    move-object v4, p2

    .line 103
    iget-object p1, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object p2, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 111
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object p1

    iget-object p2, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p1, p2, v2, v4}, [Ljava/lang/Object;

    move-result-object p1

    .line 112
    const-string p2, "unexpected init failed for %s, state - %s, error - %s, %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 119
    iget-object p1, v1, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz p1, :cond_3

    .line 120
    iget-object p1, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2, v4}, [Ljava/lang/Object;

    move-result-object p1

    .line 124
    const-string p2, "unexpected init failed, state - %s, error - %s, %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object p2, v1, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object p2, p2, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p2, p1}, Lcom/ironsource/pg;->m(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 9

    .line 128
    iget-object v0, p0, Lcom/ironsource/p3;->m:Lcom/ironsource/l5;

    invoke-static {v0}, Lcom/ironsource/l5;->a(Lcom/ironsource/l5;)J

    move-result-wide v5

    .line 129
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load duration = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/ironsource/Af;->e()V

    .line 139
    :cond_0
    iget-object v7, p0, Lcom/ironsource/p3;->q:Ljava/lang/Object;

    monitor-enter v7

    .line 140
    :try_start_0
    iget-object v8, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v1, Lcom/ironsource/p3$h;->d:Lcom/ironsource/p3$h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, v1, :cond_1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 141
    :try_start_1
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/p3;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    .line 144
    sget-object p1, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    invoke-virtual {p0, p1}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 189
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    iget-object p1, v1, Lcom/ironsource/p3;->b:Lcom/ironsource/P0;

    new-instance p2, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p2, p0}, Lcom/ironsource/P0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/p3;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 194
    :try_start_2
    sget-object p1, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    if-ne v8, p1, :cond_2

    .line 197
    invoke-direct/range {v1 .. v6}, Lcom/ironsource/p3;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    .line 198
    monitor-exit v7

    return-void

    .line 199
    :cond_2
    sget-object p1, Lcom/ironsource/p3$h;->e:Lcom/ironsource/p3$h;

    if-ne v8, p1, :cond_4

    sget-object p1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_AD_EXPIRED:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    if-ne v2, p1, :cond_4

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/ironsource/p3;->l:Ljava/lang/Long;

    .line 202
    const-string p1, "ad expired for %s, state = %s"

    iget-object p2, v1, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    .line 205
    invoke-virtual {p2}, Lcom/ironsource/c1;->f()Ljava/lang/String;

    move-result-object p2

    iget-object p3, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 206
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 212
    iget-object p1, v1, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz p1, :cond_3

    .line 213
    iget-object p1, p1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    const-string p2, "ad expired, state = %s"

    iget-object p3, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ironsource/pg;->a(Ljava/lang/String;)V

    .line 215
    :cond_3
    monitor-exit v7

    return-void

    .line 217
    :cond_4
    const-string p1, "unexpected load failed for %s, state - %s, error - %s, %s"

    .line 221
    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object p2

    iget-object p3, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, p3, v2, v4}, [Ljava/lang/Object;

    move-result-object p2

    .line 222
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 224
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 229
    const-string p1, "unexpected load failed, state - %s, error - %s, %s"

    iget-object p2, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p2, p3, v4}, [Ljava/lang/Object;

    move-result-object p2

    .line 233
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object p2, v1, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz p2, :cond_7

    .line 237
    invoke-virtual {p0}, Lcom/ironsource/p3;->v()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 238
    iget-object p2, v1, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object p2, p2, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p2, p1}, Lcom/ironsource/pg;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_5
    iget-object p2, v1, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {p2}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p2

    sget-object p3, Lcom/ironsource/mediationsdk/IronSource$a;->b:Lcom/ironsource/mediationsdk/IronSource$a;

    if-ne p2, p3, :cond_6

    iget-object p2, v1, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object p3, Lcom/ironsource/p3$h;->f:Lcom/ironsource/p3$h;

    if-eq p2, p3, :cond_7

    .line 247
    :cond_6
    iget-object p2, v1, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object p2, p2, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {p2, p1}, Lcom/ironsource/pg;->o(Ljava/lang/String;)V

    .line 251
    :cond_7
    :goto_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    move-object v1, p0

    :goto_1
    move-object p1, v0

    .line 253
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V
    .locals 6

    .line 254
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_4

    .line 255
    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/ironsource/p3;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {p1, p4, p5, p2}, Lcom/ironsource/Cb;->a(JI)V

    return-void

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {p1, p4, p5, p2, v1}, Lcom/ironsource/Cb;->b(JIZ)V

    return-void

    .line 263
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/ironsource/p3;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    iget-object p1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object p1, p1, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {p1, p4, p5, p2, p3}, Lcom/ironsource/Cb;->a(JILjava/lang/String;)V

    return-void

    .line 267
    :cond_2
    iget-object p1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v0, p1, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    const/4 v5, 0x0

    move v3, p2

    move-object v4, p3

    move-wide v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/Cb;->a(JILjava/lang/String;Z)V

    return-void

    :cond_3
    move v3, p2

    move-wide p1, p4

    .line 271
    iget-object p3, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object p3, p3, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {p3, p1, p2, v3, v1}, Lcom/ironsource/Cb;->a(JIZ)V

    :cond_4
    return-void
.end method

.method private b(Lcom/ironsource/B0;)Z
    .locals 4

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x13

    new-array v1, v1, [Lcom/ironsource/B0;

    sget-object v2, Lcom/ironsource/B0;->e:Lcom/ironsource/B0;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->g:Lcom/ironsource/B0;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->i:Lcom/ironsource/B0;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->j:Lcom/ironsource/B0;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->l:Lcom/ironsource/B0;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->f:Lcom/ironsource/B0;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->h:Lcom/ironsource/B0;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->k:Lcom/ironsource/B0;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->m:Lcom/ironsource/B0;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->W:Lcom/ironsource/B0;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->z:Lcom/ironsource/B0;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->A:Lcom/ironsource/B0;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->y:Lcom/ironsource/B0;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->u:Lcom/ironsource/B0;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->w:Lcom/ironsource/B0;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->n:Lcom/ironsource/B0;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->p:Lcom/ironsource/B0;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->v:Lcom/ironsource/B0;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/ironsource/B0;->B:Lcom/ironsource/B0;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private s()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->o:Lcom/ironsource/y2;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v0}, Lcom/ironsource/n0;->f()I

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/y2;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v0}, Lcom/ironsource/n0;->f()I

    move-result v0

    .line 13
    :goto_0
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load timeout for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ironsource/p3;->o:Lcom/ironsource/y2;

    .line 16
    invoke-virtual {v3}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {p0, v2}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public A()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public B()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/p3;->y()Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v1, Lcom/ironsource/p3$h;->f:Lcom/ironsource/p3$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public E()V
    .locals 7

    const-string v0, "loadAd - network adapter not available "

    const-string v1, "loadAd - incorrect state while loading, state = "

    .line 1
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/p3;->i()Lcom/ironsource/y2;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Lcom/ironsource/y2;->k()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v3}, Lcom/ironsource/y2;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/pa;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 6
    iget-object v5, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v5}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v5

    const-string v6, "adUnit"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v4}, Lcom/ironsource/p3;->b(Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lcom/ironsource/p3;->v()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 12
    iget-object v5, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v5, v5, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {v5}, Lcom/ironsource/Cb;->d()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v5, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v5, v5, Lcom/ironsource/E0;->f:Lcom/ironsource/Cb;

    invoke-virtual {v5, v6}, Lcom/ironsource/Cb;->a(Z)V

    :goto_0
    const/4 v5, 0x0

    .line 18
    iput-object v5, p0, Lcom/ironsource/p3;->l:Ljava/lang/Long;

    .line 21
    new-instance v5, Lcom/ironsource/l5;

    invoke-direct {v5}, Lcom/ironsource/l5;-><init>()V

    iput-object v5, p0, Lcom/ironsource/p3;->m:Lcom/ironsource/l5;

    .line 24
    invoke-virtual {p0, v4, v3}, Lcom/ironsource/p3;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/p3;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 27
    iget-object v3, p0, Lcom/ironsource/p3;->q:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    iget-object v4, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v5, Lcom/ironsource/p3$h;->a:Lcom/ironsource/p3$h;

    if-eq v4, v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    .line 33
    :cond_1
    sget-object v4, Lcom/ironsource/p3$h;->b:Lcom/ironsource/p3$h;

    invoke-virtual {p0, v4}, Lcom/ironsource/p3;->a(Lcom/ironsource/p3$h;)V

    .line 35
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    .line 38
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/A0;->c(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/p3;->onInitFailed(ILjava/lang/String;)V

    return-void

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    invoke-virtual {v1, p0}, Lcom/ironsource/Af;->a(Lcom/ironsource/Af$a;)V

    .line 49
    iget-object v1, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 51
    iget-object v0, p0, Lcom/ironsource/p3;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 52
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 53
    invoke-interface {v1, v0, v2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V

    return-void

    .line 57
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/A0;->c(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/p3;->onInitFailed(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 60
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 85
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadAd - exception = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_4

    .line 89
    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/A0;->c(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/ironsource/p3;->onInitFailed(ILjava/lang/String;)V

    return-void
.end method

.method protected G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    instance-of v1, v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;

    iget-object v1, p0, Lcom/ironsource/p3;->k:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 3
    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/environment/ContextProvider;->getCurrentActiveActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterAdFullScreenInterface;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V

    return-void

    .line 5
    :cond_0
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    .line 6
    const-string v1, "adapter not instance of AdapterAdFullScreenInterface"

    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method public M()V
    .locals 4

    const-string v0, "Exception while calling adapter.releaseMemory() from "

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    iput-object v2, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/c1;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 15
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    iget-object v1, v1, Lcom/ironsource/E0;->j:Lcom/ironsource/pg;

    invoke-virtual {v1, v0}, Lcom/ironsource/pg;->g(Ljava/lang/String;)V

    .line 20
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/ironsource/E0;->f()V

    .line 22
    iput-object v2, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {v0}, Lcom/ironsource/f;->d()V

    .line 26
    iput-object v2, p0, Lcom/ironsource/p3;->n:Lcom/ironsource/Af;

    .line 28
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public N()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/p3;->d:Lcom/ironsource/E0;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/ironsource/E0;->i:Lcom/ironsource/N;

    invoke-virtual {v0}, Lcom/ironsource/N;->a()V

    :cond_0
    return-void
.end method

.method protected O()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    .line 70
    invoke-virtual {p0}, Lcom/ironsource/p3;->q()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/ironsource/p3;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {v0, p1, v1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    .line 72
    invoke-virtual {v1}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 78
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/ironsource/B0;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/B0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "providerAdapterVersion"

    .line 7
    iget-object v2, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getAdapterVersion()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 8
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v1, "providerSDKVersion"

    .line 13
    iget-object v2, p0, Lcom/ironsource/p3;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->getNetworkSDKVersion()Ljava/lang/String;

    move-result-object v3

    .line 14
    :cond_1
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 19
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "could not get adapter version for event data"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ironsource/p3;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v1}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 27
    :goto_1
    iget-object v1, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v1}, Lcom/ironsource/c1;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "spId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v1}, Lcom/ironsource/c1;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p0}, Lcom/ironsource/p3;->l()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "instanceType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-direct {p0}, Lcom/ironsource/p3;->o()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "programmatic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/ironsource/p3;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/ironsource/p3;->j:Ljava/lang/String;

    const-string v2, "dynamicDemandSource"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/p3;->r()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sessionDepth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 40
    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->e()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "genericParams"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 45
    iget-object v1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v1}, Lcom/ironsource/n0;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auctionId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_4
    invoke-direct {p0, p1}, Lcom/ironsource/p3;->b(Lcom/ironsource/B0;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 52
    iget-object p1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {p1}, Lcom/ironsource/n0;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "auctionTrials"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {p1}, Lcom/ironsource/n0;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 56
    iget-object p1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {p1}, Lcom/ironsource/n0;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "auctionFallback"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_5
    iget-object p1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {p1}, Lcom/ironsource/n0;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 62
    iget-object p1, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {p1}, Lcom/ironsource/n0;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getCustomNetwork()Ljava/lang/String;

    move-result-object p1

    const-string v1, "customNetwork"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v0}, Lcom/ironsource/n0;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "userId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-direct {p0}, Lcom/ironsource/p3;->L()V

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    new-instance v1, Lcom/ironsource/p3$a;

    invoke-direct {v1, p0}, Lcom/ironsource/p3$a;-><init>(Lcom/ironsource/p3;)V

    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected a(Lcom/ironsource/p3$h;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0}, Lcom/ironsource/p3;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ironsource/p3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->e()I

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/p3;->j:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/ironsource/p3;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->l:Ljava/lang/Long;

    return-object v0
.end method

.method public f()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;

    iget-object v1, p0, Lcom/ironsource/p3;->o:Lcom/ironsource/y2;

    .line 2
    invoke-virtual {p0}, Lcom/ironsource/p3;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/y2;->a(Ljava/lang/String;)Lcom/ironsource/c9;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/p3;->o:Lcom/ironsource/y2;

    .line 3
    invoke-virtual {v2}, Lcom/ironsource/y2;->d()Lcom/ironsource/Db;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;-><init>(Lcom/ironsource/c9;Lcom/ironsource/Db;)V

    return-object v0
.end method

.method public g()Lcom/ironsource/mediationsdk/IronSource$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v0}, Lcom/ironsource/n0;->a()Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v0}, Lcom/ironsource/n0;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Lcom/ironsource/y2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->o:Lcom/ironsource/y2;

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->g:Lcom/ironsource/md;

    if-nez v0, :cond_0

    .line 2
    const-string v0, ""

    return-object v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/ironsource/t3;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ironsource/p3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->d()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->h()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->isMultipleInstances()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->h()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/model/NetworkSettings;->getProviderTypeForReflection()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/p3;->H()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    new-instance v1, Lcom/ironsource/p3$g;

    invoke-direct {v1, p0}, Lcom/ironsource/p3$g;-><init>(Lcom/ironsource/p3;)V

    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/p3;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    new-instance v1, Lcom/ironsource/p3$e;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ironsource/p3$e;-><init>(Lcom/ironsource/p3;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/p3;->I()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    new-instance v1, Lcom/ironsource/p3$d;

    invoke-direct {v1, p0}, Lcom/ironsource/p3$d;-><init>(Lcom/ironsource/p3;)V

    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/p3;->J()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    new-instance v1, Lcom/ironsource/p3$f;

    invoke-direct {v1, p0}, Lcom/ironsource/p3$f;-><init>(Lcom/ironsource/p3;)V

    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ironsource/p3;->a(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    new-instance v1, Lcom/ironsource/p3$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/ironsource/p3$c;-><init>(Lcom/ironsource/p3;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    invoke-interface {v0}, Lcom/ironsource/xd;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/ironsource/p3;->K()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    new-instance v1, Lcom/ironsource/p3$b;

    invoke-direct {v1, p0}, Lcom/ironsource/p3$b;-><init>(Lcom/ironsource/p3;)V

    invoke-interface {v0, v1}, Lcom/ironsource/xd;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p()Lcom/ironsource/mediationsdk/model/NetworkSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    invoke-virtual {v0}, Lcom/ironsource/n0;->g()Lcom/ironsource/mediationsdk/model/NetworkSettings;

    move-result-object v0

    return-object v0
.end method

.method protected q()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/ironsource/p3;->i:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ironsource/pa;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public r()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->a:Lcom/ironsource/n0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/n0;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Lcom/ironsource/p3$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    return-object v0
.end method

.method protected u()Lcom/ironsource/xd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->p:Lcom/ironsource/xd;

    return-object v0
.end method

.method protected v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->h:Lcom/ironsource/c1;

    invoke-virtual {v0}, Lcom/ironsource/c1;->j()Z

    move-result v0

    return v0
.end method

.method public x()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v1, Lcom/ironsource/p3$h;->g:Lcom/ironsource/p3$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public y()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v1, Lcom/ironsource/p3$h;->e:Lcom/ironsource/p3$h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/p3;->e:Lcom/ironsource/p3$h;

    sget-object v1, Lcom/ironsource/p3$h;->b:Lcom/ironsource/p3$h;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/ironsource/p3$h;->d:Lcom/ironsource/p3$h;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
