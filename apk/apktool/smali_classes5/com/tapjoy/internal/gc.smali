.class abstract Lcom/tapjoy/internal/gc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field volatile b:Lcom/tapjoy/internal/gc$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gc<",
            "TR;>.a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gc;Lcom/tapjoy/internal/gc$a;)V
    .locals 1

    .line 1104
    monitor-enter p0

    .line 1105
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/gc$a;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 1106
    iput-object p1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/gc$a;

    .line 1108
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tapjoy/TJPlacementListener;",
            "TR;)",
            "Lcom/tapjoy/TJPlacement;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected a()Z
    .locals 1

    .line 71
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/util/Observer;)Z
    .locals 2

    .line 85
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fu$a;->addObserver(Ljava/util/Observer;)V

    .line 87
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 90
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fu;->e:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fu$a;->deleteObserver(Ljava/util/Observer;)V

    .line 93
    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    sget-object v0, Lcom/tapjoy/internal/fu;->c:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fu$a;->addObserver(Ljava/util/Observer;)V

    .line 95
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->d()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 98
    :cond_2
    sget-object v0, Lcom/tapjoy/internal/fu;->c:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/fu$a;->deleteObserver(Ljava/util/Observer;)V

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Ljava/lang/Object;)Lcom/tapjoy/internal/gc$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/tapjoy/internal/gc<",
            "TR;>.a;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/tapjoy/internal/gc$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/gc$a;-><init>(Lcom/tapjoy/internal/gc;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/tapjoy/internal/gc;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    monitor-enter p0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/gc$a;

    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gc;->b(Ljava/lang/Object;)Lcom/tapjoy/internal/gc$a;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/gc;->b:Lcom/tapjoy/internal/gc$a;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 50
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/tapjoy/internal/gc$a;->a()V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    .line 50
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
