.class public final Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;
.super Ljava/lang/Object;
.source "QuickCapabilitiesKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/QuickCapabilitiesKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001a\u001a\u00020\u0012J\u0006\u0010\u001f\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001b\u001a\u00020\u001c8G\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;",
        "value",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "android",
        "getAndroid",
        "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "setAndroid",
        "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V",
        "clearAndroid",
        "",
        "hasAndroid",
        "",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
        "ios",
        "getIos",
        "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
        "setIos",
        "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V",
        "clearIos",
        "hasIos",
        "platformSpecificCase",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;",
        "getPlatformSpecificCase",
        "()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;",
        "clearPlatformSpecific",
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
.field public static final Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 2

    .line 36
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object v0
.end method

.method public final clearAndroid()V
    .locals 1

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->clearAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-void
.end method

.method public final clearIos()V
    .locals 1

    .line 76
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->clearIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-void
.end method

.method public final clearPlatformSpecific()V
    .locals 1

    .line 90
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->clearPlatformSpecific()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-void
.end method

.method public final getAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->getAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object v0

    const-string v1, "getAndroid(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 2

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->getIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    move-result-object v0

    const-string v1, "getIos(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPlatformSpecificCase()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 2

    .line 87
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->getPlatformSpecificCase()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    move-result-object v0

    const-string v1, "getPlatformSpecificCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAndroid()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->hasAndroid()Z

    move-result v0

    return v0
.end method

.method public final hasIos()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->hasIos()Z

    move-result v0

    return v0
.end method

.method public final setAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->setAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-void
.end method

.method public final setIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->setIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-void
.end method
