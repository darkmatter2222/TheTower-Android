.class final Lcom/tapjoy/internal/ge$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ge;

.field private b:Z

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/ge;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance p1, Lcom/tapjoy/internal/ge$b$2;

    invoke-direct {p1, p0}, Lcom/tapjoy/internal/ge$b$2;-><init>(Lcom/tapjoy/internal/ge$b;)V

    iput-object p1, p0, Lcom/tapjoy/internal/ge$b;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/ge;B)V
    .locals 0

    .line 263
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/ge$b;-><init>(Lcom/tapjoy/internal/ge;)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    .line 1031
    iget-object v0, v0, Lcom/tapjoy/internal/ge;->c:Lcom/tapjoy/internal/ge$b;

    if-ne v0, p0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    const/4 v1, 0x0

    .line 2031
    iput-object v1, v0, Lcom/tapjoy/internal/ge;->c:Lcom/tapjoy/internal/ge$b;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    .line 2110
    iget v0, v0, Lcom/tapjoy/internal/ge;->b:I

    .line 284
    sget v1, Lcom/tapjoy/internal/ge$c;->c:I

    if-ne v0, v1, :cond_1

    .line 285
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    sget v1, Lcom/tapjoy/internal/ge$c;->a:I

    sget v2, Lcom/tapjoy/internal/ge$c;->c:I

    .line 3031
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ge;->a(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/ge$b;Z)Z
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/tapjoy/internal/ge$b;->c:Z

    return p1
.end method

.method private b()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/tapjoy/internal/ge$b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 3277
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    sget v1, Lcom/tapjoy/internal/ge$c;->c:I

    sget v2, Lcom/tapjoy/internal/ge$c;->b:I

    .line 4031
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/ge;->a(I)V

    .line 292
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    .line 5031
    invoke-virtual {v0}, Lcom/tapjoy/internal/ge;->a()Lcom/tapjoy/internal/ge$a;

    move-result-object v0

    .line 292
    iget-object v0, v0, Lcom/tapjoy/internal/ge$a;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/tapjoy/internal/ge$b;->d:Landroid/content/Context;

    .line 5348
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5349
    iget-object v1, p0, Lcom/tapjoy/internal/ge$b;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/tapjoy/internal/ge$b;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/tapjoy/internal/ge$b;->b:Z

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 299
    sget-object v2, Lcom/tapjoy/internal/fu;->b:Lcom/tapjoy/internal/fu$a;

    new-instance v3, Lcom/tapjoy/internal/ge$b$1;

    invoke-direct {v3, p0, v0}, Lcom/tapjoy/internal/ge$b$1;-><init>(Lcom/tapjoy/internal/ge$b;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Lcom/tapjoy/internal/fu$a;->addObserver(Ljava/util/Observer;)V

    .line 308
    iget-object v2, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    .line 6031
    invoke-virtual {v2}, Lcom/tapjoy/internal/ge;->a()Lcom/tapjoy/internal/ge$a;

    move-result-object v2

    .line 309
    iget-object v3, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    iget-object v4, v2, Lcom/tapjoy/internal/ge$a;->a:Landroid/content/Context;

    iget-object v5, v2, Lcom/tapjoy/internal/ge$a;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/tapjoy/internal/ge$a;->c:Ljava/util/Hashtable;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v2, v6}, Lcom/tapjoy/internal/ge;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 312
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    invoke-static {v0, v3}, Lcom/tapjoy/internal/ge;->a(Lcom/tapjoy/internal/ge;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/tapjoy/internal/ge$b;->b()V

    .line 336
    invoke-direct {p0}, Lcom/tapjoy/internal/ge$b;->a()V

    return-void

    .line 317
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :catch_0
    :try_start_2
    iget-boolean v0, p0, Lcom/tapjoy/internal/ge$b;->c:Z

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    sget v2, Lcom/tapjoy/internal/ge$c;->e:I

    sget v3, Lcom/tapjoy/internal/ge$c;->c:I

    .line 7031
    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/ge;->a(I)V

    .line 324
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ge;->a(Lcom/tapjoy/internal/ge;Z)V

    goto :goto_1

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    invoke-static {v0, v3}, Lcom/tapjoy/internal/ge;->a(Lcom/tapjoy/internal/ge;Z)V

    .line 330
    iget-object v0, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    .line 8031
    iget-wide v0, v0, Lcom/tapjoy/internal/ge;->d:J

    const-wide/16 v2, 0x3e8

    .line 330
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 331
    iget-object v2, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    const/4 v3, 0x2

    shl-long v3, v0, v3

    const-wide/32 v5, 0x36ee80

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 9031
    iput-wide v3, v2, Lcom/tapjoy/internal/ge;->d:J

    .line 332
    iget-object v2, p0, Lcom/tapjoy/internal/ge$b;->a:Lcom/tapjoy/internal/ge;

    invoke-virtual {v2, v0, v1}, Lcom/tapjoy/internal/ge;->a(J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 335
    invoke-direct {p0}, Lcom/tapjoy/internal/ge$b;->b()V

    .line 336
    invoke-direct {p0}, Lcom/tapjoy/internal/ge$b;->a()V

    .line 337
    throw v0
.end method
