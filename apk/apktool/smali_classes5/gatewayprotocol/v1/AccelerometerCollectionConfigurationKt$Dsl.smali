.class public final Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;
.super Ljava/lang/Object;
.source "AccelerometerCollectionConfigurationKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000c\"\u0004\u0008\u0013\u0010\u000e\u00a8\u0006\u0016"
    }
    d2 = {
        "Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;",
        "value",
        "",
        "samplingIntervalMs",
        "getSamplingIntervalMs",
        "()I",
        "setSamplingIntervalMs",
        "(I)V",
        "clearSamplingIntervalMs",
        "",
        "maxSamples",
        "getMaxSamples",
        "setMaxSamples",
        "clearMaxSamples",
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
.field public static final Companion:Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->Companion:Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 2

    .line 34
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object v0
.end method

.method public final clearMaxSamples()V
    .locals 1

    .line 91
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->clearMaxSamples()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    return-void
.end method

.method public final clearSamplingIntervalMs()V
    .locals 1

    .line 62
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->clearSamplingIntervalMs()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    return-void
.end method

.method public final getMaxSamples()I
    .locals 1

    .line 76
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->getMaxSamples()I

    move-result v0

    return v0
.end method

.method public final getSamplingIntervalMs()I
    .locals 1

    .line 47
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->getSamplingIntervalMs()I

    move-result v0

    return v0
.end method

.method public final setMaxSamples(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->setMaxSamples(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    return-void
.end method

.method public final setSamplingIntervalMs(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lgatewayprotocol/v1/AccelerometerCollectionConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;->setSamplingIntervalMs(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    return-void
.end method
