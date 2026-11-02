.class public Lcom/applovin/impl/i6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/i6$d;,
        Lcom/applovin/impl/i6$b;,
        Lcom/applovin/impl/i6$c;,
        Lcom/applovin/impl/i6$e;
    }
.end annotation


# static fields
.field private static final q:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final j:Ljava/util/Map;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private final m:Ljava/util/List;

.field private final n:Ljava/lang/Object;

.field private o:Z

.field private p:Z


# direct methods
.method public static synthetic $r8$lambda$R-DEyUj1-ZFTmQlmhbO_kymBZeQ(Lcom/applovin/impl/i6;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/i6;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXhOJR3_KDdW4ZEsUWgLsQsfW3c(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/i6$e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/impl/i6;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/i6$e;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/i6;->q:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/i6;->j:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/impl/i6;->m:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/i6;->n:Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    .line 25
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->b:Lcom/applovin/impl/sdk/p;

    .line 26
    sget-object v0, Lcom/applovin/impl/c5;->U:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/i6;->p:Z

    .line 28
    sget-object v0, Lcom/applovin/impl/c5;->P:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "auxiliary_operations"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 29
    sget-object v0, Lcom/applovin/impl/c5;->O:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "shared_thread_pool"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 32
    sget-object v0, Lcom/applovin/impl/c5;->V:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "core"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 33
    sget-object v0, Lcom/applovin/impl/c5;->W:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "caching"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 35
    sget-object v0, Lcom/applovin/impl/c5;->X:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "mediation"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 36
    sget-object v0, Lcom/applovin/impl/c5;->Y:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "timeout"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 37
    sget-object v0, Lcom/applovin/impl/c5;->Z:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "other"

    invoke-direct {p0, v1, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 39
    sget-object v0, Lcom/applovin/impl/c5;->L0:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/c5;->M0:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/applovin/impl/c5;->N0:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/applovin/impl/i6$d;

    const-string v2, "com.applovin.sdk.caching.shared"

    invoke-direct {v1, p0, v2}, Lcom/applovin/impl/i6$d;-><init>(Lcom/applovin/impl/i6;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/i6;->k:Ljava/util/concurrent/ExecutorService;

    .line 42
    sget-object v0, Lcom/applovin/impl/c5;->O0:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-instance v0, Lcom/applovin/impl/i6$d;

    const-string v1, "com.applovin.sdk.caching.html.shared"

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/i6$d;-><init>(Lcom/applovin/impl/i6;Ljava/lang/String;)V

    invoke-static {p1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/i6;->l:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/i6;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/i6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 89
    sget-object v0, Lcom/applovin/impl/i6$a;->a:[I

    iget-object p1, p1, Lcom/applovin/impl/i6$e;->e:Lcom/applovin/impl/i6$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/applovin/impl/i6;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/i6;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/i6;->h:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/i6;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1

    .line 104
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/i6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object p1
.end method

.method private a(Lcom/applovin/impl/i6$e;JZ)V
    .locals 3

    .line 71
    iget-boolean v0, p0, Lcom/applovin/impl/i6;->p:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/i6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/i6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    if-eqz p4, :cond_1

    .line 78
    iget-object p4, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    new-instance v1, Lcom/applovin/impl/i6$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/applovin/impl/i6$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/i6$e;)V

    invoke-static {p2, p3, p4, v1}, Lcom/applovin/impl/i0;->a(JLcom/applovin/impl/sdk/l;Ljava/lang/Runnable;)Lcom/applovin/impl/i0;

    return-void

    .line 82
    :cond_1
    sget-object p4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 87
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 32
    new-instance v0, Lcom/applovin/impl/x6;

    iget-object v1, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/x6;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void
.end method

.method private static synthetic a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;Lcom/applovin/impl/i6$e;)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/i6;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/i6;->b:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 2

    .line 34
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/applovin/impl/i6$d;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/i6$d;-><init>(Lcom/applovin/impl/i6;Ljava/lang/String;)V

    invoke-direct {v0, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private b(Lcom/applovin/impl/i6$e;)Z
    .locals 3

    .line 12
    iget-object v0, p1, Lcom/applovin/impl/i6$e;->d:Lcom/applovin/impl/n5;

    invoke-virtual {v0}, Lcom/applovin/impl/n5;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/i6;->n:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-boolean v2, p0, Lcom/applovin/impl/i6;->o:Z

    if-eqz v2, :cond_1

    .line 23
    monitor-exit v0

    return v1

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/i6;->m:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 33
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;
    .locals 4

    .line 106
    const-string v0, "TaskManager"

    .line 0
    const-string v1, "Awaiting "

    .line 106
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/i6;->b:Lcom/applovin/impl/sdk/p;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " tasks..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 111
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/i6;->b:Lcom/applovin/impl/sdk/p;

    const-string v1, "Awaiting tasks were interrupted"

    invoke-virtual {p2, v0, v1, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 31
    new-instance v0, Lcom/applovin/impl/i6$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/i6$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/i6;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/i6;->k:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 105
    new-instance v0, Lcom/applovin/impl/i6$d;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/i6$d;-><init>(Lcom/applovin/impl/i6;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/n5;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 33
    iget-boolean v0, p0, Lcom/applovin/impl/i6;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/i6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/i6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 37
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/u7;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Lcom/applovin/impl/i6$e;

    iget-object v2, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/i6$b;->a:Lcom/applovin/impl/i6$b;

    invoke-direct {v1, v2, p1, v3}, Lcom/applovin/impl/i6$e;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 43
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/c5;->v:Lcom/applovin/impl/c5;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/applovin/impl/n5;->b(Ljava/lang/Thread;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 45
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 49
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 55
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/i6;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/n5;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Task failed execution"

    invoke-virtual {v1, v2, v3, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :cond_2
    invoke-virtual {p1, v0}, Lcom/applovin/impl/n5;->a(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 58
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No task specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;J)V

    return-void
.end method

.method public a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;JZ)V

    return-void
.end method

.method public a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;JZ)V
    .locals 7

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2

    .line 5
    new-instance v1, Lcom/applovin/impl/i6$c;

    iget-object v2, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/i6$c;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;J)V

    .line 9
    invoke-direct {p0, v1}, Lcom/applovin/impl/i6;->b(Lcom/applovin/impl/i6$e;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    invoke-direct {p0, v1, v5, v6, p5}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/i6$e;JZ)V

    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/i6;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v3}, Lcom/applovin/impl/n5;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Task execution delayed until after init"

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move-wide v5, p3

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Invalid delay (millis) specified: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No task specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/applovin/impl/n5;Lcom/applovin/impl/o3;)V
    .locals 3

    .line 59
    invoke-virtual {p2}, Lcom/applovin/impl/o3;->b()Ljava/lang/String;

    move-result-object p2

    .line 61
    iget-object v0, p0, Lcom/applovin/impl/i6;->j:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/i6;->b(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/applovin/impl/i6;->j:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    new-instance p2, Lcom/applovin/impl/i6$e;

    iget-object v1, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/i6$b;->c:Lcom/applovin/impl/i6$b;

    invoke-direct {p2, v1, p1, v2}, Lcom/applovin/impl/i6$e;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Ljava/lang/Runnable;Lcom/applovin/impl/i6$b;)V
    .locals 4

    .line 21
    iget-boolean v0, p0, Lcom/applovin/impl/i6;->p:Z

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Lcom/applovin/impl/i6$e;

    iget-object v1, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    new-instance v2, Lcom/applovin/impl/x6;

    const-string v3, "auxiliaryOperation"

    invoke-direct {v2, v1, v3, p1}, Lcom/applovin/impl/x6;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {v0, v1, v2, p2}, Lcom/applovin/impl/i6$e;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    .line 24
    invoke-direct {p0, v0}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/i6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p1

    .line 26
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/i6;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/applovin/impl/i6;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/i6;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/i6;->q:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public b(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;J)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/applovin/impl/i6;->p:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/applovin/impl/i6$e;

    iget-object v1, p0, Lcom/applovin/impl/i6;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {v0, v1, p1, p2}, Lcom/applovin/impl/i6$e;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    .line 6
    invoke-direct {p0, v0}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/i6$e;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object p2

    .line 7
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1, p3, p4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/i6;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p1, p3, p4, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/i6;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/i6;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/i6;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public d()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i6;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/i6;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/i6;->d()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/i6;->o:Z

    return v0
.end method

.method public g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i6;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/i6;->o:Z

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/i6;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/i6$e;

    .line 8
    check-cast v2, Lcom/applovin/impl/i6$c;

    .line 9
    iget-object v3, v2, Lcom/applovin/impl/i6$e;->d:Lcom/applovin/impl/n5;

    iget-object v4, v2, Lcom/applovin/impl/i6$e;->e:Lcom/applovin/impl/i6$b;

    invoke-static {v2}, Lcom/applovin/impl/i6$c;->a(Lcom/applovin/impl/i6$c;)J

    move-result-wide v5

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;J)V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/i6;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/i6;->n:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iput-boolean v1, p0, Lcom/applovin/impl/i6;->o:Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
