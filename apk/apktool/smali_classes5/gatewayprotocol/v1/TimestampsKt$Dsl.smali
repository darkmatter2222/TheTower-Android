.class public final Lgatewayprotocol/v1/TimestampsKt$Dsl;
.super Ljava/lang/Object;
.source "TimestampsKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TimestampsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\t\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0019\u001a\u00020\u0010J\u0006\u0010\u001d\u001a\u00020\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R$\u0010\u001a\u001a\u00020\u00132\u0006\u0010\u0008\u001a\u00020\u00138G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001b\u0010\u0016\"\u0004\u0008\u001c\u0010\u0018\u00a8\u0006\u001f"
    }
    d2 = {
        "Lgatewayprotocol/v1/TimestampsKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;",
        "value",
        "Lcom/google/protobuf/Timestamp;",
        "timestamp",
        "getTimestamp",
        "()Lcom/google/protobuf/Timestamp;",
        "setTimestamp",
        "(Lcom/google/protobuf/Timestamp;)V",
        "clearTimestamp",
        "",
        "hasTimestamp",
        "",
        "",
        "sessionTimestamp",
        "getSessionTimestamp",
        "()J",
        "setSessionTimestamp",
        "(J)V",
        "clearSessionTimestamp",
        "sessionDurationInForeground",
        "getSessionDurationInForeground",
        "setSessionDurationInForeground",
        "clearSessionDurationInForeground",
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
.field public static final Companion:Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->Companion:Lgatewayprotocol/v1/TimestampsKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TimestampsKt$Dsl;-><init>(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 2

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    return-object v0
.end method

.method public final clearSessionDurationInForeground()V
    .locals 1

    .line 123
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->clearSessionDurationInForeground()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final clearSessionTimestamp()V
    .locals 1

    .line 92
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->clearSessionTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final clearTimestamp()V
    .locals 1

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->clearTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final getSessionDurationInForeground()J
    .locals 2

    .line 107
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->getSessionDurationInForeground()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getSessionTimestamp()J
    .locals 2

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->getSessionTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->getTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    const-string v1, "getTimestamp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasTimestamp()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public final setSessionDurationInForeground(J)V
    .locals 1

    .line 110
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->setSessionDurationInForeground(J)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final setSessionTimestamp(J)V
    .locals 1

    .line 82
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->setSessionTimestamp(J)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method

.method public final setTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/TimestampsKt$Dsl;->_builder:Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->setTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;

    return-void
.end method
