.class public final Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;
.super Ljava/lang/Object;
.source "RequestUrlOverrideKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RequestUrlOverrideKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;",
        "value",
        "Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;",
        "requestType",
        "getRequestType",
        "()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;",
        "setRequestType",
        "(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V",
        "",
        "requestTypeValue",
        "getRequestTypeValue",
        "()I",
        "setRequestTypeValue",
        "(I)V",
        "clearRequestType",
        "",
        "",
        "url",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "clearUrl",
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
.field public static final Companion:Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->Companion:Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;-><init>(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;
    .locals 2

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride;

    return-object v0
.end method

.method public final clearRequestType()V
    .locals 1

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->clearRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final clearUrl()V
    .locals 1

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->clearUrl()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;
    .locals 2

    .line 35
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->getRequestType()Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;

    move-result-object v0

    const-string v1, "getRequestType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getRequestTypeValue()I
    .locals 1

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->getRequestTypeValue()I

    move-result v0

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    .line 59
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->setRequestType(Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestType;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final setRequestTypeValue(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->setRequestTypeValue(I)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lgatewayprotocol/v1/RequestUrlOverrideKt$Dsl;->_builder:Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;->setUrl(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationResponseOuterClass$RequestUrlOverride$Builder;

    return-void
.end method
