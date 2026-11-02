.class public final Lgatewayprotocol/v1/ErrorKt$Dsl;
.super Ljava/lang/Object;
.source "ErrorKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ErrorKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001%B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u001d\u001a\u00020\u0010J\u0006\u0010$\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00118G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u0008\u001a\u00020\u001e8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lgatewayprotocol/v1/ErrorKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "value",
        "",
        "errorText",
        "getErrorText",
        "()Ljava/lang/String;",
        "setErrorText",
        "(Ljava/lang/String;)V",
        "clearErrorText",
        "",
        "Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;",
        "errorCode",
        "getErrorCode",
        "()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;",
        "setErrorCode",
        "(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V",
        "",
        "errorCodeValue",
        "getErrorCodeValue",
        "()I",
        "setErrorCodeValue",
        "(I)V",
        "clearErrorCode",
        "Lcom/google/protobuf/ByteString;",
        "errorToken",
        "getErrorToken",
        "()Lcom/google/protobuf/ByteString;",
        "setErrorToken",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearErrorToken",
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
.field public static final Companion:Lgatewayprotocol/v1/ErrorKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/ErrorKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/ErrorKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/ErrorKt$Dsl;->Companion:Lgatewayprotocol/v1/ErrorKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ErrorKt$Dsl;-><init>(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 2

    .line 34
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    return-object v0
.end method

.method public final clearErrorCode()V
    .locals 1

    .line 90
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->clearErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method

.method public final clearErrorText()V
    .locals 1

    .line 58
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->clearErrorText()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method

.method public final clearErrorToken()V
    .locals 1

    .line 115
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->clearErrorToken()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method

.method public final getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .locals 2

    .line 70
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    const-string v1, "getErrorCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getErrorCodeValue()I
    .locals 1

    .line 77
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->getErrorCodeValue()I

    move-result v0

    return v0
.end method

.method public final getErrorText()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->getErrorText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getErrorText(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getErrorToken()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 102
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getErrorToken(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method

.method public final setErrorCodeValue(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->setErrorCodeValue(I)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method

.method public final setErrorText(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->setErrorText(Ljava/lang/String;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method

.method public final setErrorToken(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorKt$Dsl;->_builder:Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->setErrorToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    return-void
.end method
