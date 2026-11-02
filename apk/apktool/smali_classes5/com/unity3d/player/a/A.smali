.class public final Lcom/unity3d/player/a/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Semaphore;

.field public final synthetic b:Lcom/unity3d/player/a/B;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/a/B;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/unity3d/player/a/A;->b:Lcom/unity3d/player/a/B;

    iput-object p2, p0, Lcom/unity3d/player/a/A;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/unity3d/player/a/A;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/unity3d/player/a/A;->b:Lcom/unity3d/player/a/B;

    iget-object p1, p1, Lcom/unity3d/player/a/B;->b:Lcom/unity3d/player/a/C;

    iget-object p1, p1, Lcom/unity3d/player/a/C;->a:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/unity3d/player/a/z;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a/z;-><init>(Lcom/unity3d/player/a/A;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
