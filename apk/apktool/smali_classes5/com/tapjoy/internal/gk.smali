.class public final Lcom/tapjoy/internal/gk;
.super Lcom/tapjoy/internal/gj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gk$a;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/tapjoy/internal/hi;)V
    .locals 7

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tapjoy/internal/gj;-><init>(Ljava/io/File;Lcom/tapjoy/internal/hi;)V

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/tapjoy/internal/gk;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gk;J)V
    .locals 0

    .line 16
    invoke-super {p0, p1, p2}, Lcom/tapjoy/internal/gj;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gk;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 16
    invoke-super/range {p0 .. p5}, Lcom/tapjoy/internal/gj;->a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic b(Lcom/tapjoy/internal/gk;)V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/gj;->a()V

    return-void
.end method

.method static synthetic c(Lcom/tapjoy/internal/gk;)V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/tapjoy/internal/gj;->a()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 9

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gk;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tapjoy/internal/gk$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gk$a;-><init>(Lcom/tapjoy/internal/gk;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected final a(J)V
    .locals 9

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gk;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tapjoy/internal/gk$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gk$a;-><init>(Lcom/tapjoy/internal/gk;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected final a(JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gk;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/tapjoy/internal/gk$a;

    if-eqz p5, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, p5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    const/4 v3, 0x3

    move-object v2, p0

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/tapjoy/internal/gk$a;-><init>(Lcom/tapjoy/internal/gk;IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected final finalize()V
    .locals 4

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gk;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 30
    iget-object v0, p0, Lcom/tapjoy/internal/gk;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-super {p0}, Lcom/tapjoy/internal/gj;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/tapjoy/internal/gj;->finalize()V

    .line 33
    throw v0
.end method
