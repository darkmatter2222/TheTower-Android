.class public final Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;
.super Ljava/lang/Object;
.source "AccelerometerSampleKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AccelerometerSampleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0007\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001d\u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018R$\u0010\u001e\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u0016\"\u0004\u0008 \u0010\u0018\u00a8\u0006#"
    }
    d2 = {
        "Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
        "value",
        "Lcom/google/protobuf/Timestamp;",
        "clientTimestamp",
        "getClientTimestamp",
        "()Lcom/google/protobuf/Timestamp;",
        "setClientTimestamp",
        "(Lcom/google/protobuf/Timestamp;)V",
        "clearClientTimestamp",
        "",
        "hasClientTimestamp",
        "",
        "",
        "x",
        "getX",
        "()F",
        "setX",
        "(F)V",
        "clearX",
        "y",
        "getY",
        "setY",
        "clearY",
        "z",
        "getZ",
        "setZ",
        "clearZ",
        "Companion",
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


# static fields
.field public static final Companion:Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->Companion:Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;-><init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 2

    .line 34
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object v0
.end method

.method public final clearClientTimestamp()V
    .locals 1

    .line 58
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearClientTimestamp()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final clearX()V
    .locals 1

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearX()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final clearY()V
    .locals 1

    .line 121
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearY()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final clearZ()V
    .locals 1

    .line 146
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->clearZ()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final getClientTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 45
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getClientTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    const-string v1, "getClientTimestamp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getX()F
    .locals 1

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getX()F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 108
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getY()F

    move-result v0

    return v0
.end method

.method public final getZ()F
    .locals 1

    .line 133
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->getZ()F

    move-result v0

    return v0
.end method

.method public final hasClientTimestamp()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->hasClientTimestamp()Z

    move-result v0

    return v0
.end method

.method public final setClientTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setClientTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final setX(F)V
    .locals 1

    .line 85
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setX(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final setY(F)V
    .locals 1

    .line 111
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setY(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method

.method public final setZ(F)V
    .locals 1

    .line 136
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerSampleKt$Dsl;->_builder:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->setZ(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-void
.end method
