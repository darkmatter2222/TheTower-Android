.class public final Lgatewayprotocol/v1/MonitoringEventKt$Dsl;
.super Ljava/lang/Object;
.source "MonitoringEventKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0001J\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u001d\u001a\u00020\u0010J\u0006\u0010!\u001a\u00020\u0010J\u0006\u0010%\u001a\u00020\u0010J\u0006\u0010&\u001a\u00020\'R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0008\u001a\u00020\u00118G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0008\u001a\u00020\u00178G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR$\u0010\"\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010\u000c\"\u0004\u0008$\u0010\u000e\u00a8\u0006)"
    }
    d2 = {
        "Lgatewayprotocol/v1/MonitoringEventKt$Dsl;",
        "",
        "_builder",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;",
        "<init>",
        "(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)V",
        "_build",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
        "value",
        "",
        "impressionNumber",
        "getImpressionNumber",
        "()J",
        "setImpressionNumber",
        "(J)V",
        "clearImpressionNumber",
        "",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;",
        "eventType",
        "getEventType",
        "()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;",
        "setEventType",
        "(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V",
        "",
        "eventTypeValue",
        "getEventTypeValue",
        "()I",
        "setEventTypeValue",
        "(I)V",
        "clearEventType",
        "monitoringId",
        "getMonitoringId",
        "setMonitoringId",
        "clearMonitoringId",
        "durationMs",
        "getDurationMs",
        "setDurationMs",
        "clearDurationMs",
        "hasDurationMs",
        "",
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
.field public static final Companion:Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;


# instance fields
.field private final _builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->Companion:Lgatewayprotocol/v1/MonitoringEventKt$Dsl$Companion;

    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;-><init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 2

    .line 32
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    return-object v0
.end method

.method public final clearDurationMs()V
    .locals 1

    .line 138
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearDurationMs()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final clearEventType()V
    .locals 1

    .line 88
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final clearImpressionNumber()V
    .locals 1

    .line 56
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearImpressionNumber()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final clearMonitoringId()V
    .locals 1

    .line 113
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->clearMonitoringId()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final getDurationMs()J
    .locals 2

    .line 125
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .locals 2

    .line 68
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    const-string v1, "getEventType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getEventTypeValue()I
    .locals 1

    .line 75
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getEventTypeValue()I

    move-result v0

    return v0
.end method

.method public final getImpressionNumber()J
    .locals 2

    .line 43
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getImpressionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMonitoringId()I
    .locals 1

    .line 100
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->getMonitoringId()I

    move-result v0

    return v0
.end method

.method public final hasDurationMs()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->hasDurationMs()Z

    move-result v0

    return v0
.end method

.method public final setDurationMs(J)V
    .locals 1

    .line 128
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setDurationMs(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setEventTypeValue(I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setEventTypeValue(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setImpressionNumber(J)V
    .locals 1

    .line 46
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setImpressionNumber(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method

.method public final setMonitoringId(I)V
    .locals 1

    .line 103
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventKt$Dsl;->_builder:Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->setMonitoringId(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;

    return-void
.end method
