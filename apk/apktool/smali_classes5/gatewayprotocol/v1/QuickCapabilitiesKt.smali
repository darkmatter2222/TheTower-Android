.class public final Lgatewayprotocol/v1/QuickCapabilitiesKt;
.super Ljava/lang/Object;
.source "QuickCapabilitiesKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt;,
        Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;,
        Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickCapabilitiesKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickCapabilitiesKt.kt\ngatewayprotocol/v1/QuickCapabilitiesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,266:1\n1#2:267\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0003\u0010\u0011\u0012B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J*\u0010\u0004\u001a\u00020\u00052\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0008\nH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000bJ*\u0010\u000c\u001a\u00020\r2\u0017\u0010\u0006\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\t0\u0007\u00a2\u0006\u0002\u0008\nH\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u000f\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0013"
    }
    d2 = {
        "Lgatewayprotocol/v1/QuickCapabilitiesKt;",
        "",
        "<init>",
        "()V",
        "android",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "block",
        "Lkotlin/Function1;",
        "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializeandroid",
        "ios",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
        "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;",
        "-initializeios",
        "Dsl",
        "AndroidKt",
        "IosKt",
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
.field public static final INSTANCE:Lgatewayprotocol/v1/QuickCapabilitiesKt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgatewayprotocol/v1/QuickCapabilitiesKt;

    invoke-direct {v0}, Lgatewayprotocol/v1/QuickCapabilitiesKt;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt;->INSTANCE:Lgatewayprotocol/v1/QuickCapabilitiesKt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final -initializeandroid(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;)Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object p1

    return-object p1
.end method

.method public final -initializeios(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;)Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    move-result-object p1

    return-object p1
.end method
