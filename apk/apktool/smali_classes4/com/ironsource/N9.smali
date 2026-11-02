.class public Lcom/ironsource/N9;
.super Lcom/ironsource/r3;
.source "SourceFile"


# static fields
.field private static R:Lcom/ironsource/N9;


# instance fields
.field private P:Ljava/lang/String;

.field private final Q:Lcom/ironsource/Q8;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ironsource/r3;-><init>()V

    .line 4
    invoke-static {}, Lcom/ironsource/Pb;->k0()Lcom/ironsource/M7;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/M7;->s()Lcom/ironsource/Q8;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/N9;->Q:Lcom/ironsource/Q8;

    .line 6
    const-string v0, "ironbeast"

    iput-object v0, p0, Lcom/ironsource/r3;->H:Ljava/lang/String;

    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/ironsource/r3;->G:I

    .line 8
    const-string v0, "IS"

    iput-object v0, p0, Lcom/ironsource/r3;->I:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/N9;->P:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized i()Lcom/ironsource/N9;
    .locals 2

    const-class v0, Lcom/ironsource/N9;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/ironsource/N9;->R:Lcom/ironsource/N9;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/ironsource/N9;

    invoke-direct {v1}, Lcom/ironsource/N9;-><init>()V

    sput-object v1, Lcom/ironsource/N9;->R:Lcom/ironsource/N9;

    .line 3
    invoke-virtual {v1}, Lcom/ironsource/r3;->e()V

    .line 6
    :cond_0
    sget-object v1, Lcom/ironsource/N9;->R:Lcom/ironsource/N9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected c(Lcom/ironsource/C5;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ironsource/r3;->f(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/ironsource/r3$e;->f:Lcom/ironsource/r3$e;

    invoke-virtual {v0}, Lcom/ironsource/r3$e;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ironsource/N9;->Q:Lcom/ironsource/Q8;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->d:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {p1, v0}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    sget-object v0, Lcom/ironsource/r3$e;->e:Lcom/ironsource/r3$e;

    invoke-virtual {v0}, Lcom/ironsource/r3$e;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/ironsource/N9;->Q:Lcom/ironsource/Q8;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->e:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {p1, v0}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ironsource/N9;->Q:Lcom/ironsource/Q8;

    sget-object v0, Lcom/ironsource/mediationsdk/IronSource$a;->c:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-interface {p1, v0}, Lcom/ironsource/Q8;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    return p1
.end method

.method protected d()V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->g1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->h1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->i1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->j1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->B1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->K1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->I1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->J1:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->f2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->A2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->m2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->J2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->F2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->g2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->n2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->h2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->L2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->o2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->M2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->i2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->p2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->k2:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->g3:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->s3:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->h3:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->i3:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->v3:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/ironsource/r3;->J:Ljava/util/Set;

    sget-object v1, Lcom/ironsource/D5;->l3:Lcom/ironsource/D5;

    invoke-virtual {v1}, Lcom/ironsource/D5;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected d(Lcom/ironsource/C5;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/C5;->c()I

    move-result p1

    .line 2
    sget-object v0, Lcom/ironsource/D5;->j1:Lcom/ironsource/D5;

    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->k1:Lcom/ironsource/D5;

    .line 3
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->E1:Lcom/ironsource/D5;

    .line 4
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->M1:Lcom/ironsource/D5;

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->L1:Lcom/ironsource/D5;

    .line 6
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->k2:Lcom/ironsource/D5;

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->X2:Lcom/ironsource/D5;

    .line 8
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->W2:Lcom/ironsource/D5;

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->i3:Lcom/ironsource/D5;

    .line 10
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->l3:Lcom/ironsource/D5;

    .line 11
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->B3:Lcom/ironsource/D5;

    .line 12
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/ironsource/D5;->A3:Lcom/ironsource/D5;

    .line 13
    invoke-virtual {v0}, Lcom/ironsource/D5;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected e(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ironsource/N9;->P:Ljava/lang/String;

    return-object p1
.end method

.method protected f(Lcom/ironsource/C5;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/ironsource/C5;->b()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "placement"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/N9;->P:Ljava/lang/String;

    return-void
.end method

.method protected j(Lcom/ironsource/C5;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
