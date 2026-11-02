.class public final Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;
.super Ljava/lang/Object;
.source "QuickCapabilitiesKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
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
.field public static final Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 2

    .line 247
    iget-object v0, p0, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object v0
.end method
