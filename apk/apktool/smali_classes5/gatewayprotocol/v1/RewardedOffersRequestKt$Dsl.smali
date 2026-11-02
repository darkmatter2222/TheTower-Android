.class public final Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;
.super Ljava/lang/Object;
.source "RewardedOffersRequestKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u001d\u001a\u00020\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
        "value",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
        "entryPoint",
        "getEntryPoint",
        "()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;",
        "setEntryPoint",
        "(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V",
        "",
        "entryPointValue",
        "getEntryPointValue",
        "()I",
        "setEntryPointValue",
        "(I)V",
        "clearEntryPoint",
        "",
        "Lcom/google/protobuf/ByteString;",
        "cursor",
        "getCursor",
        "()Lcom/google/protobuf/ByteString;",
        "setCursor",
        "(Lcom/google/protobuf/ByteString;)V",
        "clearCursor",
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
.field public static final Companion:Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->Companion:Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;-><init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
    .locals 2

    .line 51
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    return-object v0
.end method

.method public final clearCursor()V
    .locals 1

    .line 109
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->clearCursor()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final clearEntryPoint()V
    .locals 1

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->clearEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final getCursor()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 95
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->getCursor()Lcom/google/protobuf/ByteString;

    move-result-object v0

    const-string v1, "getCursor(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 2

    .line 62
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    const-string v1, "getEntryPoint(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEntryPointValue()I
    .locals 1

    .line 69
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->getEntryPointValue()I

    move-result v0

    return v0
.end method

.method public final setCursor(Lcom/google/protobuf/ByteString;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->setCursor(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method

.method public final setEntryPointValue(I)V
    .locals 1

    .line 72
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestKt$Dsl;->_builder:Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->setEntryPointValue(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;

    return-void
.end method
