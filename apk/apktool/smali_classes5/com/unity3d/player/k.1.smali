.class public final Lcom/unity3d/player/k;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/unity3d/player/o;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/o;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/o;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 771
    sget-object p1, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    const/4 v0, 0x5

    .line 777
    const-string v1, "Camera2: CameraDevice disconnected."

    invoke-static {v0, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/o;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/o;->a(Landroid/hardware/camera2/CameraDevice;)V

    .line 779
    sget-object p1, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: Error opening CameraDevice "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 786
    iget-object p2, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/o;

    invoke-virtual {p2, p1}, Lcom/unity3d/player/o;->a(Landroid/hardware/camera2/CameraDevice;)V

    .line 787
    sget-object p1, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/unity3d/player/k;->a:Lcom/unity3d/player/o;

    iput-object p1, v0, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    .line 764
    sget-object p1, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
