.class public final Lgatewayprotocol/v1/AdRevenueEventRequestKtKt;
.super Ljava/lang/Object;
.source "AdRevenueEventRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdRevenueEventRequestKt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdRevenueEventRequestKt.kt\ngatewayprotocol/v1/AdRevenueEventRequestKtKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a*\u0010\u0000\u001a\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0087\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0008\u0007\u001a)\u0010\u0008\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006H\u0086\u0008\u00f8\u0001\u0000\"\u0017\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\"\u0017\u0010\u000e\u001a\u0004\u0018\u00010\u000f*\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\"\u0017\u0010\u0012\u001a\u0004\u0018\u00010\u0013*\u00020\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "adRevenueEventRequest",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;",
        "block",
        "Lkotlin/Function1;",
        "Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "-initializeadRevenueEventRequest",
        "copy",
        "staticDeviceInfoOrNull",
        "Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;",
        "getStaticDeviceInfoOrNull",
        "(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;",
        "dynamicDeviceInfoOrNull",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "getDynamicDeviceInfoOrNull",
        "(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;",
        "adRevenueDataOrNull",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;",
        "getAdRevenueDataOrNull",
        "(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;",
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
.method public static final -initializeadRevenueEventRequest(Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl$Companion;

    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;->newBuilder()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;

    move-result-object v1

    const-string v2, "newBuilder(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;)Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final copy(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;Lkotlin/jvm/functions/Function1;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;",
            "Lkotlin/Unit;",
            ">;)",
            "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    sget-object v0, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl$Companion;

    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;->toBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    const-string v1, "toBuilder(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl$Companion;->_create(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest$Builder;)Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestKt$Dsl;->_build()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final getAdRevenueDataOrNull(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-interface {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;->hasAdRevenueData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;->getAdRevenueData()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getDynamicDeviceInfoOrNull(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-interface {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;->hasDynamicDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getStaticDeviceInfoOrNull(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;)Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-interface {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;->hasStaticDeviceInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueEventRequestOrBuilder;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
