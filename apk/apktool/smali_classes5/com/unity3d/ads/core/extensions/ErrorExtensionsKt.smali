.class public final Lcom/unity3d/ads/core/extensions/ErrorExtensionsKt;
.super Ljava/lang/Object;
.source "ErrorExtensions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\u001a\u000c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u001a\u000c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getErrorTokenOrNull",
        "Lcom/google/protobuf/ByteString;",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "",
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
.method public static final getErrorTokenOrNull(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lcom/google/protobuf/ByteString;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final getErrorTokenOrNull(Ljava/lang/Throwable;)Lcom/google/protobuf/ByteString;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    instance-of v0, p0, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lcom/unity3d/ads/core/data/model/exception/GatewayException;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/unity3d/ads/core/data/model/exception/GatewayException;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method
