.class public final Lcom/ironsource/adqualitysdk/sdk/i/ڽ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ᴮ;


# instance fields
.field public final ﾒ:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ:Landroid/content/Context;

    return-void
.end method

.method public static ﾒ(Ljava/util/concurrent/CopyOnWriteArrayList;)D
    .locals 13

    .line 170
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    move-wide v4, v1

    :goto_0
    if-gt v0, v3, :cond_3

    .line 175
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v7, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    .line 176
    aget v9, v9, v0

    float-to-double v9, v9

    add-double/2addr v7, v9

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    int-to-double v9, v6

    div-double/2addr v7, v9

    .line 181
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v9, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [F

    .line 182
    aget v11, v11, v0

    float-to-double v11, v11

    sub-double/2addr v11, v7

    mul-double/2addr v11, v11

    add-double/2addr v9, v11

    goto :goto_2

    .line 185
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v9, v6

    add-double/2addr v4, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr v4, v0

    return-wide v4
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "WOX7lnHK2atb7MCSadDZqw==\n"

    const-string v1, "OoCT9wejttk=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;
    .locals 19

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ:Landroid/content/Context;

    const-string v3, "bL0ZcLfq\n"

    const-string v4, "H9h3A9iY1Rc=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    const/16 v3, 0x3c

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    const-string v3, "i0hKU2ugaKW2TENFdvJQqrlbRUlos0eovQ==\n"

    const-string v6, "2C0kIATSJcQ=\n"

    invoke-static {v3, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v5, v0, v4, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v6, 0x1

    .line 11
    invoke-virtual {v2, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v7

    const/4 v8, 0x4

    .line 12
    invoke-virtual {v2, v8}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v8

    const/4 v9, 0x6

    .line 13
    invoke-virtual {v2, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    const/4 v10, 0x2

    .line 14
    invoke-virtual {v2, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v11

    if-nez v8, :cond_1

    const/16 v12, 0x3d

    .line 17
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v9, :cond_2

    const/16 v12, 0x3e

    .line 20
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_2
    new-instance v12, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 25
    new-instance v13, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 26
    new-array v14, v6, [F

    const/high16 v15, 0x7fc00000    # Float.NaN

    aput v15, v14, v5

    move/from16 v16, v10

    .line 27
    new-array v10, v6, [F

    aput v15, v10, v5

    .line 29
    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v15, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move/from16 v17, v6

    .line 30
    new-instance v6, Landroid/os/HandlerThread;

    const-string v4, "tnpGuHgBKbiVc328YBspuKd+Q6liDTQ=\n"

    const-string v5, "9B8u2Q5oRso=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 32
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;

    invoke-direct {v5, v12, v13, v14, v10}, Lcom/ironsource/adqualitysdk/sdk/i/ܫ;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/CopyOnWriteArrayList;[F[F)V

    if-eqz v7, :cond_3

    const/4 v14, 0x0

    .line 66
    :try_start_0
    invoke-virtual {v2, v5, v7, v14, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v6

    goto/16 :goto_a

    :catch_0
    move-object v11, v6

    move-object v14, v7

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    :goto_0
    if-eqz v8, :cond_4

    .line 70
    invoke-virtual {v2, v5, v8, v14, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_4
    if-eqz v9, :cond_5

    .line 74
    invoke-virtual {v2, v5, v9, v14, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    :cond_5
    if-eqz v11, :cond_6

    .line 78
    invoke-virtual {v2, v5, v11, v14, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 83
    :cond_6
    new-instance v8, Lcom/ironsource/adqualitysdk/sdk/i/ܐ;

    invoke-direct {v8, v15}, Lcom/ironsource/adqualitysdk/sdk/i/ܐ;-><init>(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v6

    move-object v14, v7

    const-wide/16 v6, 0x1f4

    :try_start_1
    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x258

    invoke-virtual {v15, v6, v7, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_2

    .line 100
    :catch_1
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 102
    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 97
    :goto_2
    invoke-virtual {v11}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 111
    invoke-static {v12}, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ(Ljava/util/concurrent/CopyOnWriteArrayList;)D

    move-result-wide v4

    .line 112
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v2

    const/4 v6, 0x0

    if-eqz v2, :cond_7

    move v2, v6

    goto :goto_4

    .line 115
    :cond_7
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    const/16 v18, 0x0

    .line 116
    aget v11, v8, v18

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    aget v15, v8, v17

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    add-float/2addr v15, v11

    aget v8, v8, v16

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v8, v15

    const v11, 0x3d4ccccd    # 0.05f

    cmpg-float v8, v8, v11

    if-gez v8, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    int-to-float v2, v7

    .line 121
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    .line 122
    :goto_4
    invoke-virtual {v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v14, :cond_a

    .line 123
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const v3, 0x3f666666    # 0.9f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_b

    const/16 v3, 0x3f

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_b
    invoke-static {v13}, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ(Ljava/util/concurrent/CopyOnWriteArrayList;)D

    move-result-wide v7

    .line 132
    :try_start_3
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ڽ;->ﾒ:Landroid/content/Context;

    .line 133
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v11, "kWfIKc1yY5iQbd0k3HJZiZE=\n"

    const-string v12, "4gS6TKgcPPo=\n"

    invoke-static {v11, v12}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    .line 134
    invoke-static {v3, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_c

    goto :goto_5

    :cond_c
    int-to-float v3, v3

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v3, v11

    .line 139
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    :goto_5
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_d

    .line 140
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v6, v11, v6

    if-nez v6, :cond_d

    const/16 v6, 0x40

    .line 141
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v9, :cond_e

    move/from16 v6, v17

    goto :goto_7

    :cond_e
    const/4 v6, 0x0

    :goto_7
    const/16 v18, 0x0

    .line 146
    aget v9, v10, v18

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v9, 0x0

    goto :goto_8

    :cond_f
    aget v9, v10, v18

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    .line 147
    :goto_8
    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 148
    const-string v11, "UlSgDPZlQ6BeUrcM6FZQvVpWrQr/\n"

    const-string v12, "MzfDaZoAMc8=\n"

    invoke-static {v11, v12}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 149
    const-string v4, "khtIgdPawliQNFucydjDS5A=\n"

    const-string v5, "9WI67qC5rSg=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 150
    const-string v4, "p5tb4TBe/IeykHvvCVjn\n"

    const-string v5, "3f4pjn0xiO4=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    float-to-double v7, v2

    invoke-virtual {v10, v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz v3, :cond_10

    .line 152
    const-string v2, "+7Fsd6gz9WPqsA==\n"

    const-string v4, "mcMFEMBHmwY=\n"

    invoke-static {v2, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v10, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 154
    :cond_10
    const-string v2, "dLDLkRAE+Ddpo90=\n"

    const-string v3, "HNG4wWJhi0Q=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v9, :cond_11

    .line 156
    const-string v2, "EtOm2HoZTBI526Taez5RAxrcpsJ3\n"

    const-string v3, "f7LBth9tJXE=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v10, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 158
    :cond_11
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    .line 160
    :catch_3
    const-string v2, "XLA=\n"

    const-string v3, "J81SF71mXCU=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    :goto_9
    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, 0x0

    .line 162
    invoke-direct {v3, v4, v0, v2, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﭕ;-><init>(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catchall_1
    move-exception v0

    .line 163
    :goto_a
    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 165
    invoke-virtual {v11}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 169
    throw v0
.end method
