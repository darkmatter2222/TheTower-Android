.class public final Lcom/unity3d/player/j;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/unity3d/player/o;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/o;)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/o;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 689
    iget-object p1, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/o;

    const/4 v0, 0x3

    iput v0, p1, Lcom/unity3d/player/o;->A:I

    const/4 p1, 0x6

    .line 690
    const-string v0, "Camera2: CaptureSession configuration failed."

    invoke-static {p1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 6

    .line 660
    const-string v0, "Camera2: CameraAccessException "

    const-string v1, "Camera2: IllegalStateException "

    iget-object v2, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/o;

    iget-object v3, v2, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    if-nez v3, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    iget-object v2, v2, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    monitor-enter v2

    .line 667
    :try_start_0
    iget-object v3, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/o;

    iput-object p1, v3, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 670
    :try_start_1
    iget-object v4, v3, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, v3, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 671
    iget-object v3, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/o;

    iget-object v4, v3, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, v3, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 672
    iget-object v3, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/o;

    iget-object v4, v3, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, v3, Lcom/unity3d/player/o;->n:Landroid/util/Range;

    invoke-virtual {v4, v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 673
    iget-object v3, p0, Lcom/unity3d/player/j;->a:Lcom/unity3d/player/o;

    invoke-virtual {v3}, Lcom/unity3d/player/o;->e()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 681
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 683
    :goto_0
    monitor-exit v2

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
