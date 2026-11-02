.class public final Lcom/unity3d/player/a/B;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public final synthetic b:Lcom/unity3d/player/a/C;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/a/C;Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/unity3d/player/a/B;->b:Lcom/unity3d/player/a/C;

    .line 48
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/SurfaceView;)V
    .locals 6

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a/B;->a:Landroid/graphics/Bitmap;

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PlaceHolderView"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 60
    iget-object v2, p0, Lcom/unity3d/player/a/B;->a:Landroid/graphics/Bitmap;

    new-instance v3, Lcom/unity3d/player/a/A;

    invoke-direct {v3, p0, v1}, Lcom/unity3d/player/a/A;-><init>(Lcom/unity3d/player/a/B;Ljava/util/concurrent/Semaphore;)V

    new-instance v4, Landroid/os/Handler;

    .line 76
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    invoke-static {p1, v2, v3, v4}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 80
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    const-string p1, "Timeout while copying surface view."

    const/4 v1, 0x5

    invoke-static {v1, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    invoke-static {v1, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 89
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method
