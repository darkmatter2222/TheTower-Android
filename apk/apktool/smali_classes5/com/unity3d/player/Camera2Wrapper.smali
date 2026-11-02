.class public Lcom/unity3d/player/Camera2Wrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unity3d/player/a/q;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Lcom/unity3d/player/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    .line 14
    iput-object p1, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    .line 15
    invoke-direct {p0}, Lcom/unity3d/player/Camera2Wrapper;->initCamera2Jni()V

    return-void
.end method

.method private final native initCamera2Jni()V
.end method

.method private final native nativeFrameReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V
.end method

.method private final native nativeSurfaceTextureReady(Ljava/lang/Object;)V
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/unity3d/player/Camera2Wrapper;->nativeSurfaceTextureReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 0

    .line 116
    invoke-direct/range {p0 .. p6}, Lcom/unity3d/player/Camera2Wrapper;->nativeFrameReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    return-void
.end method

.method public closeCamera2()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lcom/unity3d/player/o;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    return-void
.end method

.method public getCamera2Count()I
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    .line 128
    invoke-static {v0}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getCamera2FocalLengthEquivalent(I)I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/o;->a(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getCamera2Resolutions(I)[I
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/o;->b(Landroid/content/Context;I)[I

    move-result-object p1

    return-object p1
.end method

.method public getCamera2SensorOrientation(I)I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/o;->c(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public getFrameSizeCamera2()Landroid/graphics/Rect;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, v0, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    return-object v0

    .line 78
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public initializeCamera2(IIIIILandroid/view/Surface;)Z
    .locals 9

    .line 54
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    if-nez v0, :cond_1

    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 56
    sget-object v0, Lcom/unity3d/player/o;->B:Landroid/hardware/camera2/CameraManager;

    .line 76
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->QUINCE_TART_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/unity3d/player/a/n;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a/n;-><init>(Lcom/unity3d/player/a/q;)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Lcom/unity3d/player/o;

    invoke-direct {v0, p0}, Lcom/unity3d/player/o;-><init>(Lcom/unity3d/player/a/q;)V

    :goto_0
    move-object v1, v0

    .line 56
    iput-object v1, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    .line 57
    iget-object v2, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/unity3d/player/o;->a(Landroid/content/Context;IIIIILandroid/view/Surface;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isCamera2AutoFocusPointSupported(I)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/o;->d(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public isCamera2FrontFacing(I)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/unity3d/player/o;->e(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public pauseCamera2()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lcom/unity3d/player/o;->c()V

    :cond_0
    return-void
.end method

.method public setAutoFocusPoint(FF)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 389
    iget v2, v0, Lcom/unity3d/player/o;->h:I

    if-lez v2, :cond_2

    .line 391
    iget-boolean v2, v0, Lcom/unity3d/player/o;->m:Z

    if-nez v2, :cond_1

    .line 393
    iput p1, v0, Lcom/unity3d/player/o;->i:F

    .line 394
    iput p2, v0, Lcom/unity3d/player/o;->j:F

    .line 395
    iget-object p1, v0, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 397
    :try_start_0
    iget-object p2, v0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p2, :cond_0

    iget p2, v0, Lcom/unity3d/player/o;->A:I

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    .line 399
    invoke-virtual {v0}, Lcom/unity3d/player/o;->d()V

    .line 401
    :cond_0
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    const/4 p1, 0x5

    .line 406
    const-string p2, "Camera2: Setting manual focus point already started."

    invoke-static {p1, p2}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_2
    return v1
.end method

.method public startCamera2()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/unity3d/player/o;->f()V

    :cond_0
    return-void
.end method

.method public stopCamera2()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/unity3d/player/Camera2Wrapper;->b:Lcom/unity3d/player/o;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/unity3d/player/o;->g()V

    :cond_0
    return-void
.end method
