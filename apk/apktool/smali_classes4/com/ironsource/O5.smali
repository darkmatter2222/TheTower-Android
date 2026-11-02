.class public Lcom/ironsource/O5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/lang/String; = "EventsTracker"


# instance fields
.field private a:Lcom/ironsource/q7;

.field private b:Lcom/ironsource/I5;

.field private c:Lcom/ironsource/J7;

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetb(Lcom/ironsource/O5;)Lcom/ironsource/I5;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$ma(Lcom/ironsource/O5;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/O5;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/I5;Lcom/ironsource/q7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/ironsource/I5;->c()Lcom/ironsource/J7;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iput-object p1, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    .line 10
    iput-object p2, p0, Lcom/ironsource/O5;->a:Lcom/ironsource/q7;

    .line 12
    invoke-virtual {p1}, Lcom/ironsource/I5;->c()Lcom/ironsource/J7;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/O5;->c:Lcom/ironsource/J7;

    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/O5;->d:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Null formatter not supported "

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Null configuration not supported "

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    invoke-virtual {v0}, Lcom/ironsource/I5;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-string v0, "EventsTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/O5;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/ironsource/O5$a;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/O5$a;-><init>(Lcom/ironsource/O5;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/O5;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/ironsource/O5;->b:Lcom/ironsource/I5;

    invoke-virtual {v0}, Lcom/ironsource/I5;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v1, "eventname"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/ironsource/O5;->a:Lcom/ironsource/q7;

    invoke-interface {p1}, Lcom/ironsource/q7;->a()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/ironsource/O5;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 14
    invoke-direct {p0, v0, p2}, Lcom/ironsource/O5;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 15
    iget-object p1, p0, Lcom/ironsource/O5;->c:Lcom/ironsource/J7;

    invoke-interface {p1, v0}, Lcom/ironsource/J7;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/O5;->b(Ljava/lang/String;)V

    return-void
.end method
