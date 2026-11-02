.class public Lcom/applovin/impl/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/hardware/SensorManager;

.field private b:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$0cqyUjT2yMQz4CQMEManX_1u88o(Lcom/applovin/impl/h0;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILcom/applovin/impl/sdk/p;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/h0;->a(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILcom/applovin/impl/sdk/p;)V

    return-void
.end method

.method public static synthetic $r8$lambda$shEzr54OV_iCcXEwdOP3VPzX9c8(Lcom/applovin/impl/h0;Landroid/hardware/SensorEventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/h0;->a(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/applovin/impl/h0;->a:Landroid/hardware/SensorManager;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppLovinSdk:background_sensor_manager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 6
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/applovin/impl/h0;->b:Landroid/os/Handler;

    return-void
.end method

.method private synthetic a(Landroid/hardware/SensorEventListener;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/h0;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method private synthetic a(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILcom/applovin/impl/sdk/p;)V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/h0;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/applovin/impl/h0;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "BackgroundSensorManager"

    const-string p3, "Unable to register sensor listener"

    invoke-virtual {p4, p2, p3, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Landroid/hardware/Sensor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h0;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/hardware/SensorEventListener;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/h0;->b:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/h0$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/applovin/impl/h0$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/h0;Landroid/hardware/SensorEventListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILcom/applovin/impl/sdk/p;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/h0;->b:Landroid/os/Handler;

    new-instance v1, Lcom/applovin/impl/h0$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/h0$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/h0;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILcom/applovin/impl/sdk/p;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
