.class public Lcom/tapjoy/internal/hk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gy;


# static fields
.field private static final a:Lcom/tapjoy/internal/hk;


# instance fields
.field private final b:Lcom/tapjoy/internal/gy;

.field private final c:Lcom/tapjoy/internal/au;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/tapjoy/internal/hk$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/hk$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/hk;->a:Lcom/tapjoy/internal/hk;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/tapjoy/internal/hk;->b:Lcom/tapjoy/internal/gy;

    .line 60
    iput-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tapjoy/internal/hk;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/tapjoy/internal/gy;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/tapjoy/internal/hk;->b:Lcom/tapjoy/internal/gy;

    .line 1037
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1047
    invoke-static {p1}, Lcom/tapjoy/internal/gr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 67
    invoke-static {p1}, Lcom/tapjoy/internal/t;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/au;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    .line 68
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    return-void

    .line 69
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Lcom/tapjoy/internal/hb;->b()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 70
    sget-object p1, Lcom/tapjoy/internal/hb;->a:Lcom/tapjoy/internal/au;

    iput-object p1, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    return-void

    .line 73
    :cond_3
    invoke-static {}, Lcom/tapjoy/internal/t;->a()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/tapjoy/internal/t;->a(Landroid/os/Handler;)Lcom/tapjoy/internal/au;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/hk;)Lcom/tapjoy/internal/gy;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/tapjoy/internal/hk;->b:Lcom/tapjoy/internal/gy;

    return-object p0
.end method

.method public static a(Lcom/tapjoy/internal/gy;)Lcom/tapjoy/internal/hk;
    .locals 1

    if-eqz p0, :cond_0

    .line 49
    new-instance v0, Lcom/tapjoy/internal/hk;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hk;-><init>(Lcom/tapjoy/internal/gy;)V

    return-object v0

    .line 51
    :cond_0
    sget-object p0, Lcom/tapjoy/internal/hk;->a:Lcom/tapjoy/internal/hk;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    new-instance v1, Lcom/tapjoy/internal/hk$2;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hk$2;-><init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/tapjoy/internal/gv;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    new-instance v1, Lcom/tapjoy/internal/hk$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/tapjoy/internal/hk$6;-><init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    new-instance v1, Lcom/tapjoy/internal/hk$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tapjoy/internal/hk$7;-><init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gv;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    new-instance v1, Lcom/tapjoy/internal/hk$3;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hk$3;-><init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    new-instance v1, Lcom/tapjoy/internal/hk$4;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hk$4;-><init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/tapjoy/internal/hk;->c:Lcom/tapjoy/internal/au;

    new-instance v1, Lcom/tapjoy/internal/hk$5;

    invoke-direct {v1, p0, p1}, Lcom/tapjoy/internal/hk$5;-><init>(Lcom/tapjoy/internal/hk;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/au;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
