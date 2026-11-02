.class public Lcom/applovin/impl/g3;
.super Lcom/applovin/impl/c3;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/u1;


# instance fields
.field private final A:Landroid/os/Bundle;

.field private final B:Ljava/util/concurrent/atomic/AtomicReference;

.field private final C:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final E:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private F:Z

.field private G:Ljava/lang/String;

.field private H:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/e3;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/c3;-><init>(Lcom/applovin/impl/e3;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/sdk/l;)V

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, v0, Lcom/applovin/impl/g3;->A:Landroid/os/Bundle;

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, v0, Lcom/applovin/impl/g3;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, v0, Lcom/applovin/impl/g3;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, v0, Lcom/applovin/impl/g3;->B:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, v0, Lcom/applovin/impl/g3;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Lcom/applovin/impl/g3;Lcom/applovin/impl/mediation/h;)V
    .locals 6

    .line 41
    invoke-virtual {p1}, Lcom/applovin/impl/c3;->Q()Lcom/applovin/impl/e3;

    move-result-object v1

    invoke-virtual {p1}, Lcom/applovin/impl/o3;->a()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/o3;->g()Lorg/json/JSONObject;

    move-result-object v3

    iget-object v5, p1, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/c3;-><init>(Lcom/applovin/impl/e3;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/mediation/h;Lcom/applovin/impl/sdk/l;)V

    .line 42
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, v0, Lcom/applovin/impl/g3;->A:Landroid/os/Bundle;

    .line 46
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, v0, Lcom/applovin/impl/g3;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, v0, Lcom/applovin/impl/g3;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    iget-object p2, p1, Lcom/applovin/impl/g3;->B:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, v0, Lcom/applovin/impl/g3;->B:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    iget-object p2, p1, Lcom/applovin/impl/g3;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, v0, Lcom/applovin/impl/g3;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    iget-boolean p1, p1, Lcom/applovin/impl/g3;->H:Z

    iput-boolean p1, v0, Lcom/applovin/impl/g3;->H:Z

    return-void
.end method

.method private n0()J
    .locals 5

    const-wide/16 v0, -0x1

    .line 1
    const-string v2, "ad_expiration_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/v3;->h8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public A0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g3;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public B0()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "schedule_ad_hidden_on_ad_dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/v3;->n8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C0()Z
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "schedule_ad_hidden_on_single_task_app_relaunch"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/v3;->o8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public D0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/v3;->T8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "suaaode"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public E0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/v3;->a8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const-string v1, "susaode"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Lcom/applovin/impl/mediation/h;)Lcom/applovin/impl/c3;
    .locals 1

    .line 2
    new-instance v0, Lcom/applovin/impl/g3;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/g3;-><init>(Lcom/applovin/impl/g3;Lcom/applovin/impl/mediation/h;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    invoke-super {p0, p1}, Lcom/applovin/impl/c3;->a(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "applovin_ad_view_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/applovin/impl/g3;->A:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Lcom/applovin/impl/t4;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/applovin/impl/g3;->B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/impl/g3;->H:Z

    return-void
.end method

.method public getTimeToLiveMillis()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/applovin/impl/c3;->L()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/g3;->n0()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/g3;->G:Ljava/lang/String;

    return-void
.end method

.method public m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g3;->C:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public o0()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/v3;->b8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "ahdm"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public p0()J
    .locals 5

    const-wide/16 v0, -0x1

    .line 1
    const-string v2, "ad_hidden_on_ad_dismiss_callback_delay_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    return-wide v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/v3;->p8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public q0()J
    .locals 5

    const-wide/16 v0, -0x1

    .line 1
    const-string v2, "ad_hidden_timeout_ms"

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_0

    return-wide v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/v3;->m8:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public r0()Lcom/applovin/impl/t4;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g3;->B:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/t4;

    return-object v0
.end method

.method public s0()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/c3;->L()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/applovin/impl/c3;->L()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public setExpired()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/applovin/impl/g3;->F:Z

    return-void
.end method

.method public t0()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g3;->A:Landroid/os/Bundle;

    return-object v0
.end method

.method public u0()J
    .locals 4

    .line 1
    const-string v0, "fullscreen_display_delay_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/o3;->a(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    return-wide v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/o3;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/v3;->Z7:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public v0()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "mcode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/o3;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g3;->D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public x0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g3;->G:Ljava/lang/String;

    return-object v0
.end method

.method public y0()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g3;->E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public z0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/g3;->H:Z

    return v0
.end method
