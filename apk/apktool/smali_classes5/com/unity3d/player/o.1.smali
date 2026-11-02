.class public Lcom/unity3d/player/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static B:Landroid/hardware/camera2/CameraManager;

.field public static C:[Ljava/lang/String;

.field public static final D:Ljava/util/concurrent/Semaphore;


# instance fields
.field public A:I

.field public final a:Lcom/unity3d/player/a/q;

.field public b:Landroid/hardware/camera2/CameraDevice;

.field public c:Landroid/os/HandlerThread;

.field public d:Landroid/os/Handler;

.field public e:Landroid/graphics/Rect;

.field public f:Landroid/graphics/Rect;

.field public g:I

.field public h:I

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:Z

.field public n:Landroid/util/Range;

.field public o:Landroid/media/ImageReader;

.field public p:Landroid/media/Image;

.field public q:Landroid/hardware/camera2/CaptureRequest$Builder;

.field public r:Landroid/hardware/camera2/CameraCaptureSession;

.field public s:Lcom/unity3d/player/n;

.field public final t:Ljava/lang/Object;

.field public u:I

.field public v:Landroid/graphics/SurfaceTexture;

.field public w:Landroid/view/Surface;

.field public final x:Lcom/unity3d/player/k;

.field public final y:Lcom/unity3d/player/l;

.field public final z:Lcom/unity3d/player/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/player/a/q;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/a/q;

    const/high16 v1, -0x40800000    # -1.0f

    .line 49
    iput v1, p0, Lcom/unity3d/player/o;->i:F

    iput v1, p0, Lcom/unity3d/player/o;->j:F

    const/4 v1, 0x0

    .line 51
    iput-boolean v1, p0, Lcom/unity3d/player/o;->m:Z

    .line 53
    iput-object v0, p0, Lcom/unity3d/player/o;->o:Landroid/media/ImageReader;

    .line 56
    iput-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    .line 57
    iput-object v0, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    .line 61
    iput-object v0, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    const/4 v0, 0x3

    .line 72
    iput v0, p0, Lcom/unity3d/player/o;->A:I

    .line 756
    new-instance v0, Lcom/unity3d/player/k;

    invoke-direct {v0, p0}, Lcom/unity3d/player/k;-><init>(Lcom/unity3d/player/o;)V

    iput-object v0, p0, Lcom/unity3d/player/o;->x:Lcom/unity3d/player/k;

    .line 792
    new-instance v0, Lcom/unity3d/player/l;

    invoke-direct {v0, p0}, Lcom/unity3d/player/l;-><init>(Lcom/unity3d/player/o;)V

    iput-object v0, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/l;

    .line 825
    new-instance v0, Lcom/unity3d/player/m;

    invoke-direct {v0, p0}, Lcom/unity3d/player/m;-><init>(Lcom/unity3d/player/o;)V

    iput-object v0, p0, Lcom/unity3d/player/o;->z:Lcom/unity3d/player/m;

    .line 89
    iput-object p1, p0, Lcom/unity3d/player/o;->a:Lcom/unity3d/player/a/q;

    .line 246
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "CameraBackground"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unity3d/player/o;->c:Landroid/os/HandlerThread;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 248
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/unity3d/player/o;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    return-void
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 2

    const/4 v0, 0x0

    .line 178
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 179
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_FOCAL_LENGTHS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 185
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_PHYSICAL_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SizeF;

    .line 187
    array-length v1, p1

    if-lez v1, :cond_0

    .line 189
    aget p1, p1, v0

    const/high16 v1, 0x42100000    # 36.0f

    mul-float/2addr p1, v1

    invoke-virtual {p0}, Landroid/util/SizeF;->getWidth()F

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    div-float/2addr p1, p0

    float-to-int p0, p1

    return p0

    :catch_0
    move-exception p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Context;I)[I
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 223
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez p0, :cond_1

    .line 206
    const-string p0, "Camera2: configuration map is not available."

    invoke-static {v0, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_0
    :goto_0
    move-object p0, v1

    goto :goto_1

    :cond_1
    const/16 p1, 0x23

    .line 209
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 210
    array-length p1, p0

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p0, :cond_4

    .line 233
    array-length p1, p0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 234
    :goto_2
    array-length v1, p0

    if-ge v0, v1, :cond_3

    mul-int/lit8 v1, v0, 0x2

    .line 236
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 237
    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-object p1

    :cond_4
    return-object v1

    :catch_0
    move-exception p0

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-object v1
.end method

.method public static c(Landroid/content/Context;I)I
    .locals 1

    .line 135
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 136
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Camera2: CameraAccessException "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static d(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 163
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 164
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return v0
.end method

.method public static e(Landroid/content/Context;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 150
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return v0
.end method

.method public static getCameraIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    .line 104
    sget-object v0, Lcom/unity3d/player/o;->C:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 108
    :try_start_0
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->QUINCE_TART_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p0}, Lcom/unity3d/player/a/n;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unity3d/player/o;->C:[Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unity3d/player/o;->C:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    invoke-static {v0, p0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 120
    new-array p0, p0, [Ljava/lang/String;

    sput-object p0, Lcom/unity3d/player/o;->C:[Ljava/lang/String;

    .line 123
    :cond_1
    :goto_0
    sget-object p0, Lcom/unity3d/player/o;->C:[Ljava/lang/String;

    return-object p0
.end method

.method public static getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    .line 95
    sget-object v0, Lcom/unity3d/player/o;->B:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_0

    .line 97
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    sput-object p0, Lcom/unity3d/player/o;->B:Landroid/hardware/camera2/CameraManager;

    .line 99
    :cond_0
    sget-object p0, Lcom/unity3d/player/o;->B:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/unity3d/player/o;->g()V

    .line 423
    invoke-virtual {p0}, Lcom/unity3d/player/o;->b()V

    .line 424
    iput-object v1, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    .line 426
    iput-object v1, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    .line 427
    iput-object v1, p0, Lcom/unity3d/player/o;->v:Landroid/graphics/SurfaceTexture;

    .line 428
    iget-object v0, p0, Lcom/unity3d/player/o;->p:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 431
    iput-object v1, p0, Lcom/unity3d/player/o;->p:Landroid/media/Image;

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/o;->o:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 436
    iput-object v1, p0, Lcom/unity3d/player/o;->o:Landroid/media/ImageReader;

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/o;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/o;->c:Landroid/os/HandlerThread;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Thread;->join(J)V

    .line 257
    iput-object v1, p0, Lcom/unity3d/player/o;->c:Landroid/os/HandlerThread;

    .line 258
    iput-object v1, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 262
    iget-object v1, p0, Lcom/unity3d/player/o;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: Interrupted while waiting for the background thread to finish "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 750
    :try_start_0
    iput-object v1, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    .line 751
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 753
    iput-object v1, p0, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    return-void

    :catchall_0
    move-exception p1

    .line 751
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5

    .line 481
    const-string v0, "Camera2: CameraAccessException "

    const-string v1, "Focus"

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    .line 484
    iput-boolean p1, p0, Lcom/unity3d/player/o;->m:Z

    .line 485
    iget-object v1, p0, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 491
    :try_start_1
    iget-object v2, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 492
    iget-object p1, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v2, "Regular"

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 493
    iget-object p1, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {p0}, Lcom/unity3d/player/o;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 497
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {v0, p1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 500
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 502
    :cond_1
    const-string v0, "Cancel focus"

    if-ne p1, v0, :cond_3

    .line 505
    iget-object p1, p0, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    monitor-enter p1

    .line 507
    :try_start_3
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/unity3d/player/o;->e()V

    .line 511
    :cond_2
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Landroid/content/Context;IIIIILandroid/view/Surface;)Z
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p5

    .line 279
    const-string v2, "Camera2: CameraAccessException "

    const/4 v3, 0x6

    :try_start_0
    sget-object v5, Lcom/unity3d/player/o;->B:Landroid/hardware/camera2/CameraManager;

    invoke-static/range {p1 .. p1}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_5

    .line 288
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ne v6, v7, :cond_0

    .line 290
    const-string v6, "Camera2: only LEGACY hardware level is supported."

    invoke-static {v8, v6}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 203
    :cond_0
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 206
    const-string v6, "Camera2: configuration map is not available."

    invoke-static {v3, v6}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v9, 0x23

    .line 209
    invoke-virtual {v6, v9}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 210
    array-length v9, v6

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v6

    :cond_3
    :goto_0
    if-eqz v7, :cond_12

    .line 294
    array-length v6, v7

    if-nez v6, :cond_4

    goto/16 :goto_a

    :cond_4
    move/from16 v6, p3

    int-to-double v9, v6

    move/from16 v6, p4

    int-to-double v11, v6

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 841
    :goto_1
    array-length v14, v7

    if-ge v6, v14, :cond_6

    .line 843
    aget-object v14, v7, v6

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v14

    .line 844
    aget-object v18, v7, v6

    invoke-virtual/range {v18 .. v18}, Landroid/util/Size;->getHeight()I

    move-result v3

    move-wide/from16 v19, v9

    int-to-double v8, v14

    div-double v9, v19, v8

    .line 845
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    move-object/from16 v21, v5

    int-to-double v4, v3

    div-double v4, v11, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v4, v8

    cmpg-double v8, v4, v16

    if-gez v8, :cond_5

    move v13, v3

    move-wide/from16 v16, v4

    move v15, v14

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v9, v19

    move-object/from16 v5, v21

    const/4 v3, 0x6

    const/4 v8, 0x5

    goto :goto_1

    :cond_6
    move-object/from16 v21, v5

    .line 854
    new-instance v3, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-direct {v3, v10, v10, v15, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 298
    iput-object v3, v1, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    .line 300
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v4, v21

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/util/Range;

    if-eqz v3, :cond_11

    .line 301
    array-length v5, v3

    if-nez v5, :cond_7

    goto/16 :goto_9

    :cond_7
    const/4 v5, -0x1

    const/4 v6, 0x0

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 862
    :goto_2
    array-length v7, v3

    if-ge v6, v7, :cond_a

    .line 864
    aget-object v7, v3, v6

    invoke-virtual {v7}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 865
    aget-object v8, v3, v6

    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v9, v0

    const v11, 0x3dcccccd    # 0.1f

    add-float v12, v9, v11

    int-to-float v15, v7

    cmpl-float v12, v12, v15

    if-lez v12, :cond_8

    sub-float/2addr v9, v11

    int-to-float v11, v8

    cmpg-float v9, v9, v11

    if-gez v9, :cond_8

    goto :goto_4

    :cond_8
    sub-int v7, v0, v7

    .line 873
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    float-to-double v7, v7

    cmpg-double v9, v7, v13

    if-gez v9, :cond_9

    move v5, v6

    move-wide v13, v7

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 881
    :cond_a
    aget-object v6, v3, v5

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v0, v6, :cond_b

    aget-object v0, v3, v5

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_3

    :cond_b
    aget-object v0, v3, v5

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    :goto_3
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 308
    :goto_4
    new-instance v3, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v3, v1, Lcom/unity3d/player/o;->n:Landroid/util/Range;

    .line 312
    :try_start_1
    sget-object v0, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x4

    invoke-virtual {v0, v5, v6, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 314
    const-string v0, "Camera2: Timeout waiting to lock camera for opening."

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v10, 0x0

    return v10

    .line 326
    :cond_c
    :try_start_2
    sget-object v0, Lcom/unity3d/player/o;->B:Landroid/hardware/camera2/CameraManager;

    invoke-virtual/range {p0 .. p2}, Lcom/unity3d/player/o;->getCameraIdToOpen(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v1, Lcom/unity3d/player/o;->x:Lcom/unity3d/player/k;

    iget-object v8, v1, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v3, v7, v8}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: IllegalArgumentException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    goto :goto_5

    :catch_1
    move-exception v0

    const/4 v2, 0x6

    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Camera2: SecurityException "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 345
    :goto_5
    :try_start_3
    sget-object v0, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5, v6, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 347
    const-string v0, "Camera2: Timeout waiting to open camera."

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 v10, 0x0

    return v10

    .line 350
    :cond_d
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting to open camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :goto_6
    move/from16 v2, p6

    .line 357
    iput v2, v1, Lcom/unity3d/player/o;->u:I

    move-object/from16 v2, p7

    .line 358
    iput-object v2, v1, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    .line 367
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/unity3d/player/o;->h:I

    if-lez v0, :cond_f

    .line 370
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    .line 371
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 372
    iget-object v2, v1, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v0, v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    if-lez v0, :cond_e

    const/4 v10, 0x0

    .line 375
    iput v10, v1, Lcom/unity3d/player/o;->k:I

    .line 376
    iget-object v0, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/unity3d/player/o;->l:I

    goto :goto_7

    :cond_e
    const/4 v10, 0x0

    .line 380
    iput v10, v1, Lcom/unity3d/player/o;->l:I

    .line 381
    iget-object v0, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v4, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Lcom/unity3d/player/o;->k:I

    .line 383
    :goto_7
    iget-object v0, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, v1, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    iput v0, v1, Lcom/unity3d/player/o;->g:I

    .line 362
    :cond_f
    iget-object v0, v1, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    return v4

    :catch_3
    move-exception v0

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 331
    sget-object v0, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    const/4 v10, 0x0

    return v10

    :catch_4
    move-exception v0

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while trying to lock camera for opening "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 v10, 0x0

    return v10

    :cond_11
    :goto_9
    const/4 v2, 0x6

    const/4 v10, 0x0

    .line 303
    const-string v0, "Camera2: target FPS ranges are not avialable."

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return v10

    :cond_12
    :goto_a
    const/4 v10, 0x0

    return v10

    :catch_5
    move-exception v0

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    const/4 v10, 0x0

    return v10
.end method

.method public final b()V
    .locals 7

    const/4 v0, 0x6

    .line 446
    :try_start_0
    sget-object v1, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    const/4 v6, 0x5

    if-nez v5, :cond_0

    .line 448
    const-string v1, "Camera2: Timeout waiting to lock camera for closing."

    invoke-static {v6, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 458
    :cond_0
    iget-object v5, p0, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 462
    :try_start_1
    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 464
    const-string v1, "Camera2: Timeout waiting to close camera."

    invoke-static {v6, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting to close camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    .line 472
    sget-object v0, Lcom/unity3d/player/o;->D:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catch_1
    move-exception v1

    .line 454
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while trying to lock camera for closing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 4

    .line 707
    const-string v0, "Camera2: CameraAccessException "

    iget-object v1, p0, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 709
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 713
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    const/4 v2, 0x2

    .line 714
    iput v2, p0, Lcom/unity3d/player/o;->A:I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 718
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 721
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public createCaptureSession(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 4

    .line 614
    iget-object v0, p0, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/Surface;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 596
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 599
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 600
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Cancel focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 602
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/player/o;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 12

    .line 556
    :try_start_0
    iget v0, p0, Lcom/unity3d/player/o;->h:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/unity3d/player/o;->i:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-ltz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/unity3d/player/o;->j:F

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 565
    iput-boolean v0, p0, Lcom/unity3d/player/o;->m:Z

    .line 566
    iget-object v1, p0, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/unity3d/player/o;->k:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/unity3d/player/o;->i:F

    mul-float/2addr v1, v3

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 567
    iget-object v2, p0, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/unity3d/player/o;->l:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-double v4, v2

    iget v2, p0, Lcom/unity3d/player/o;->j:F

    float-to-double v6, v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v6

    mul-double/2addr v8, v4

    int-to-double v2, v3

    add-double/2addr v8, v2

    double-to-int v2, v8

    .line 569
    iget v3, p0, Lcom/unity3d/player/o;->g:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/o;->g:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 570
    iget v3, p0, Lcom/unity3d/player/o;->g:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/o;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/o;->g:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 571
    iget-object v3, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v5, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    new-instance v6, Landroid/hardware/camera2/params/MeteringRectangle;

    iget v7, p0, Lcom/unity3d/player/o;->g:I

    sub-int/2addr v1, v7

    sub-int v8, v2, v7

    mul-int/lit8 v9, v7, 0x2

    const/16 v11, 0x3e7

    move v10, v9

    move v7, v1

    invoke-direct/range {v6 .. v11}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 580
    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 581
    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 583
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/player/o;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 558
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Regular"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 561
    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/player/o;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final f()V
    .locals 4

    .line 621
    iget v0, p0, Lcom/unity3d/player/o;->u:I

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 625
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/unity3d/player/o;->u:I

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/unity3d/player/o;->v:Landroid/graphics/SurfaceTexture;

    .line 626
    iget-object v2, p0, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 627
    iget-object v0, p0, Lcom/unity3d/player/o;->v:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/unity3d/player/o;->z:Lcom/unity3d/player/m;

    iget-object v3, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 628
    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/unity3d/player/o;->v:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/unity3d/player/o;->o:Landroid/media/ImageReader;

    if-nez v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/unity3d/player/o;->e:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/o;->o:Landroid/media/ImageReader;

    .line 636
    iget-object v2, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/l;

    iget-object v3, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/unity3d/player/o;->p:Landroid/media/Image;

    .line 638
    iget-object v0, p0, Lcom/unity3d/player/o;->o:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    .line 644
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_2

    .line 647
    iget v2, p0, Lcom/unity3d/player/o;->A:I

    if-ne v2, v1, :cond_3

    .line 648
    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p0}, Lcom/unity3d/player/o;->getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_1

    .line 652
    :cond_2
    new-instance v0, Lcom/unity3d/player/j;

    invoke-direct {v0, p0}, Lcom/unity3d/player/j;-><init>(Lcom/unity3d/player/o;)V

    .line 694
    invoke-virtual {p0, v0}, Lcom/unity3d/player/o;->createCaptureSession(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 696
    iput v0, p0, Lcom/unity3d/player/o;->A:I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 700
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 727
    const-string v0, "Camera2: CameraAccessException "

    iget-object v1, p0, Lcom/unity3d/player/o;->t:Ljava/lang/Object;

    monitor-enter v1

    .line 729
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 733
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 737
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 739
    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 740
    iput-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v0, 0x3

    .line 741
    iput v0, p0, Lcom/unity3d/player/o;->A:I

    .line 743
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getCameraIdToOpen(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 269
    invoke-static {p1}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lcom/unity3d/player/n;

    invoke-direct {v0, p0}, Lcom/unity3d/player/n;-><init>(Lcom/unity3d/player/o;)V

    iput-object v0, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    return-object v0
.end method
