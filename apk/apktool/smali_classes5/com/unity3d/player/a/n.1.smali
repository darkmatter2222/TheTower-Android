.class public Lcom/unity3d/player/a/n;
.super Lcom/unity3d/player/o;
.source "SourceFile"


# static fields
.field public static F:Ljava/util/HashMap;


# instance fields
.field public E:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/a/q;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/unity3d/player/o;-><init>(Lcom/unity3d/player/a/q;)V

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/unity3d/player/a/n;->E:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 14

    .line 33
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/unity3d/player/a/n;->F:Ljava/util/HashMap;

    .line 38
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 40
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v6, Lcom/unity3d/player/a/n;->F:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    :cond_0
    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v5, v0, v4

    .line 45
    invoke-static {p0}, Lcom/unity3d/player/o;->getCameraManager(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 46
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 48
    array-length v8, v7

    move v9, v3

    :goto_2
    const-string v10, "Camera2 "

    const/4 v11, 0x4

    if-ge v9, v8, :cond_3

    aget v12, v7, v9

    const/16 v13, 0xb

    if-ne v12, v13, :cond_2

    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is a logical camera backed by two or more physical cameras"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    .line 59
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object v6

    .line 60
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 65
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v8, Lcom/unity3d/player/a/n;->F:Ljava/util/HashMap;

    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Physical camera2 found : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 73
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is a simple camera"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Lcom/unity3d/player/a/t;->Log(ILjava/lang/String;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 76
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public createCaptureSession(Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 5

    .line 134
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/unity3d/player/o;->w:Landroid/view/Surface;

    invoke-direct {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    .line 135
    iget-object v1, p0, Lcom/unity3d/player/a/n;->E:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/unity3d/player/o;->b:Landroid/hardware/camera2/CameraDevice;

    new-instance v2, Landroid/hardware/camera2/params/SessionConfiguration;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/unity3d/player/a/m;

    iget-object v4, p0, Lcom/unity3d/player/o;->d:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/unity3d/player/a/m;-><init>(Landroid/os/Handler;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0, v3, p1}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void
.end method

.method public getCameraIdToOpen(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 81
    invoke-static {p1}, Lcom/unity3d/player/o;->getCameraIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    .line 82
    sget-object p2, Lcom/unity3d/player/a/n;->F:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 85
    iput-object p2, p0, Lcom/unity3d/player/a/n;->E:Ljava/lang/String;

    return-object p1

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/unity3d/player/a/n;->E:Ljava/lang/String;

    return-object p2
.end method

.method public getCaptureCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/unity3d/player/a/l;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a/l;-><init>(Lcom/unity3d/player/a/n;)V

    iput-object v0, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/o;->s:Lcom/unity3d/player/n;

    return-object v0
.end method
