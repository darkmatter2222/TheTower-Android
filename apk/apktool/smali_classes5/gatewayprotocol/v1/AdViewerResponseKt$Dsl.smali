.class public final Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;
.super Ljava/lang/Object;
.source "AdViewerResponseKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 $2\u00020\u0001:\u0001$B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0017\u001a\u00020\u0010J\u0006\u0010\u001e\u001a\u00020\u0010J\u0006\u0010\u001f\u001a\u00020 R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00118G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0008\u001a\u00020\u00188G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0017\u0010!\u001a\u0004\u0018\u00010\u0018*\u00020\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
        "value",
        "Lcom/google/protobuf/ByteString;",
        "payload",
        "getPayload",
        "()Lcom/google/protobuf/ByteString;",
        "setPayload",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearPayload",
        "",
        "",
        "payloadVersion",
        "getPayloadVersion",
        "()I",
        "setPayloadVersion",
        "(I)V",
        "clearPayloadVersion",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "error",
        "getError",
        "()Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "setError",
        "(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V",
        "clearError",
        "hasError",
        "",
        "errorOrNull",
        "getErrorOrNull",
        "(Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;",
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
.field public static final Companion:Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->Companion:Lgatewayprotocol/v1/AdViewerResponseKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;-><init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .locals 2

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    return-object v0
.end method

.method public final clearError()V
    .locals 1

    .line 106
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->clearError()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final clearPayload()V
    .locals 1

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->clearPayload()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final clearPayloadVersion()V
    .locals 1

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->clearPayloadVersion()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 2

    .line 93
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    const-string v1, "getError(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getErrorOrNull(Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;)Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object p1, p1, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    check-cast p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;

    invoke-static {p1}, Lgatewayprotocol/v1/AdViewerResponseKtKt;->getErrorOrNull(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;)Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object p1

    return-object p1
.end method

.method public final getPayload()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getPayload(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPayloadVersion()I
    .locals 1

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->getPayloadVersion()I

    move-result v0

    return v0
.end method

.method public final hasError()Z
    .locals 1

    .line 117
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->hasError()Z

    move-result v0

    return v0
.end method

.method public final setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->setPayload(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method

.method public final setPayloadVersion(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseKt$Dsl;->_builder:Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->setPayloadVersion(I)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;

    return-void
.end method
