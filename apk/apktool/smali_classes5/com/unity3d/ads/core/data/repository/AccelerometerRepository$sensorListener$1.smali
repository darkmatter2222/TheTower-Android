.class public final Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;
.super Ljava/lang/Object;
.source "AccelerometerRepository.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;-><init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/log/Logger;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccelerometerRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccelerometerRepository.kt\ncom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1\n+ 2 AccelerometerSampleKt.kt\ngatewayprotocol/v1/AccelerometerSampleKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n10#2:163\n1#3:164\n*S KotlinDebug\n*F\n+ 1 AccelerometerRepository.kt\ncom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1\n*L\n47#1:163\n47#1:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1",
        "Landroid/hardware/SensorEventListener;",
        "onSensorChanged",
        "",
        "event",
        "Landroid/hardware/SensorEvent;",
        "onAccuracyChanged",
        "sensor",
        "Landroid/hardware/Sensor;",
        "accuracy",
        "",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;->this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;->this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->access$getNanoTimeProvider$p(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;)Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->access$shouldAccept(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;J)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository$sensorListener$1;->this$0:Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;

    .line 163
    sget-object v1, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->Companion:Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->newBuilder()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    move-result-object v2

    const-string v3, "newBuilder(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;

    move-result-object v1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unity3d/ads/core/extensions/TimestampExtensionsKt;->fromMillis(J)Lcom/google/protobuf/Timestamp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setClientTimestamp(Lcom/google/protobuf/Timestamp;)V

    .line 49
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setX(F)V

    .line 50
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setY(F)V

    .line 51
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->setZ(F)V

    .line 163
    invoke-virtual {v1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_build()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;->access$record(Lcom/unity3d/ads/core/data/repository/AccelerometerRepository;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-void
.end method
