.class final Lcom/tapjoy/internal/hw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/hi;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/lang/Runnable;

.field private d:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/hi;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/hw;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Lcom/tapjoy/internal/hw$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hw$1;-><init>(Lcom/tapjoy/internal/hw;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hw;->c:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/tapjoy/internal/hw$2;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hw$2;-><init>(Lcom/tapjoy/internal/hw;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hw;->e:Ljava/lang/Runnable;

    .line 34
    iput-object p1, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hi;

    return-void
.end method

.method private c()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/tapjoy/internal/hw;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/tapjoy/internal/hw;->c()V

    .line 46
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "New session started"

    invoke-static {v0}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->a:Lcom/tapjoy/internal/hi;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hi;->a()V

    .line 50
    sget-object v0, Lcom/tapjoy/internal/fu;->c:Lcom/tapjoy/internal/fu$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fu$a;->notifyObservers()V

    return v2

    :cond_0
    return v1
.end method

.method final b()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tapjoy/internal/hw;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
