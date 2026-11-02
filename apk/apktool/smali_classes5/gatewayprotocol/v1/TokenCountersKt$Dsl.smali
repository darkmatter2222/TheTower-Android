.class public final Lgatewayprotocol/v1/TokenCountersKt$Dsl;
.super Ljava/lang/Object;
.source "TokenCountersKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TokenCountersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TokenCountersKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0014\u001a\u00020\u0010J\u0006\u0010\u0018\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0012\u0010\u000c\"\u0004\u0008\u0013\u0010\u000eR$\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u000c\"\u0004\u0008\u0017\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lgatewayprotocol/v1/TokenCountersKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;",
        "value",
        "",
        "seq",
        "getSeq",
        "()I",
        "setSeq",
        "(I)V",
        "clearSeq",
        "",
        "wins",
        "getWins",
        "setWins",
        "clearWins",
        "starts",
        "getStarts",
        "setStarts",
        "clearStarts",
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
.field public static final Companion:Lgatewayprotocol/v1/TokenCountersKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/TokenCountersKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/TokenCountersKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->Companion:Lgatewayprotocol/v1/TokenCountersKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TokenCountersKt$Dsl;-><init>(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;
    .locals 2

    .line 28
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    return-object v0
.end method

.method public final clearSeq()V
    .locals 1

    .line 52
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->clearSeq()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    return-void
.end method

.method public final clearStarts()V
    .locals 1

    .line 102
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->clearStarts()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    return-void
.end method

.method public final clearWins()V
    .locals 1

    .line 77
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->clearWins()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    return-void
.end method

.method public final getSeq()I
    .locals 1

    .line 39
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->getSeq()I

    move-result v0

    return v0
.end method

.method public final getStarts()I
    .locals 1

    .line 89
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->getStarts()I

    move-result v0

    return v0
.end method

.method public final getWins()I
    .locals 1

    .line 64
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->getWins()I

    move-result v0

    return v0
.end method

.method public final setSeq(I)V
    .locals 1

    .line 42
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->setSeq(I)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    return-void
.end method

.method public final setStarts(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->setStarts(I)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    return-void
.end method

.method public final setWins(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/TokenCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->setWins(I)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;

    return-void
.end method
