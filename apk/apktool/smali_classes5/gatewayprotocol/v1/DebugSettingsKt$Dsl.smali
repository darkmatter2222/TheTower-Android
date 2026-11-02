.class public final Lgatewayprotocol/v1/DebugSettingsKt$Dsl;
.super Ljava/lang/Object;
.source "DebugSettingsKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DebugSettingsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u0006\u0010\u0018\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000c\"\u0004\u0008\u0013\u0010\u000eR$\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lgatewayprotocol/v1/DebugSettingsKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;",
        "value",
        "",
        "webviewInspectable",
        "getWebviewInspectable",
        "()Z",
        "setWebviewInspectable",
        "(Z)V",
        "clearWebviewInspectable",
        "",
        "enableTracing",
        "getEnableTracing",
        "setEnableTracing",
        "clearEnableTracing",
        "cleanCache",
        "getCleanCache",
        "setCleanCache",
        "clearCleanCache",
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
.field public static final Companion:Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->Companion:Lgatewayprotocol/v1/DebugSettingsKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;
    .locals 2

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    return-object v0
.end method

.method public final clearCleanCache()V
    .locals 1

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->clearCleanCache()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final clearEnableTracing()V
    .locals 1

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->clearEnableTracing()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final clearWebviewInspectable()V
    .locals 1

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->clearWebviewInspectable()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final getCleanCache()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->getCleanCache()Z

    move-result v0

    return v0
.end method

.method public final getEnableTracing()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->getEnableTracing()Z

    move-result v0

    return v0
.end method

.method public final getWebviewInspectable()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->getWebviewInspectable()Z

    move-result v0

    return v0
.end method

.method public final setCleanCache(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->setCleanCache(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final setEnableTracing(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->setEnableTracing(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method

.method public final setWebviewInspectable(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/DebugSettingsKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->setWebviewInspectable(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;

    return-void
.end method
