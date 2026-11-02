.class public final Lgatewayprotocol/v1/ModuleKt$Dsl;
.super Ljava/lang/Object;
.source "ModuleKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00118G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lgatewayprotocol/v1/ModuleKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
        "value",
        "",
        "name",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "clearName",
        "",
        "Lcom/google/protobuf/ByteString;",
        "config",
        "getConfig",
        "()Lcom/google/protobuf/ByteString;",
        "setConfig",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearConfig",
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
.field public static final Companion:Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/ModuleKt$Dsl;->Companion:Lgatewayprotocol/v1/ModuleKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleKt$Dsl;-><init>(Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/ModuleOuterClass$Module;
    .locals 2

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    return-object v0
.end method

.method public final clearConfig()V
    .locals 1

    .line 77
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->clearConfig()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public final clearName()V
    .locals 1

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->clearName()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public final getConfig()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 64
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getConfig(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setConfig(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->setConfig(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleKt$Dsl;->_builder:Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->setName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;

    return-void
.end method
