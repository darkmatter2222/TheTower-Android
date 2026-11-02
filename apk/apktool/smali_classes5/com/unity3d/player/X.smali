.class public final Lcom/unity3d/player/X;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

.field public final b:Ljava/util/concurrent/CountDownLatch;

.field public c:Landroid/os/Handler;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/unity3d/player/X;->b:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/unity3d/player/X;->d:Z

    .line 19
    iput-boolean v0, p0, Lcom/unity3d/player/X;->e:Z

    const/4 v1, 0x2

    .line 20
    iput v1, p0, Lcom/unity3d/player/X;->f:I

    .line 21
    iput v0, p0, Lcom/unity3d/player/X;->g:I

    const/4 v0, 0x5

    .line 26
    iput v0, p0, Lcom/unity3d/player/X;->j:I

    .line 30
    iput-object p1, p0, Lcom/unity3d/player/X;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 36
    const-string v0, "UnityMain"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 38
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/V;

    invoke-direct {v2, p0}, Lcom/unity3d/player/V;-><init>(Lcom/unity3d/player/X;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unity3d/player/X;->c:Landroid/os/Handler;

    .line 145
    iget-object v0, p0, Lcom/unity3d/player/X;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 146
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
