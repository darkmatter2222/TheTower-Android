.class public final Lgatewayprotocol/v1/QuickCapabilitiesKtKt;
.super Ljava/lang/Object;
.source "QuickCapabilitiesKt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQuickCapabilitiesKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickCapabilitiesKt.kt\ngatewayprotocol/v1/QuickCapabilitiesKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,266:1\n1#2:267\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0007\u001a)\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010\u0008\u001a\u00020\t*\u00020\t2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\u001a)\u0010\u0008\u001a\u00020\u000b*\u00020\u000b2\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\"\u0017\u0010\r\u001a\u0004\u0018\u00010\t*\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\"\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u000b*\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "quickCapabilities",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;",
        "block",
        "Lkotlin/Function1;",
        "Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializequickCapabilities",
        "copy",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
        "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;",
        "androidOrNull",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;",
        "getAndroidOrNull",
        "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "iosOrNull",
        "getIosOrNull",
        "(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
        "unity-ads_defaultRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final -initializequickCapabilities(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;)Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$Companion;

    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "toBuilder(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;)Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$AndroidKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;

    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "toBuilder(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;)Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$IosKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    sget-object v0, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->Companion:Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;

    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "toBuilder(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;)Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgatewayprotocol/v1/QuickCapabilitiesKt$Dsl;->_build()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static final getAndroidOrNull(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;->hasAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;->getAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getIosOrNull(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;->hasIos()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;->getIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
