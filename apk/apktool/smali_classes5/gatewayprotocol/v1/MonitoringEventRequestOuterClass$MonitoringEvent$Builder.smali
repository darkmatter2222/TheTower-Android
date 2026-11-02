.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 492
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$000()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDurationMs()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 689
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 690
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public clearEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 597
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 598
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public clearImpressionNumber()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 531
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 532
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public clearMonitoringId()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public getDurationMs()J
    .locals 2

    .line 664
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;
    .locals 1

    .line 572
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getEventType()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;

    move-result-object v0

    return-object v0
.end method

.method public getEventTypeValue()I
    .locals 1

    .line 546
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getEventTypeValue()I

    move-result v0

    return v0
.end method

.method public getImpressionNumber()J
    .locals 2

    .line 506
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getImpressionNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonitoringId()I
    .locals 1

    .line 612
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->getMonitoringId()I

    move-result v0

    return v0
.end method

.method public hasDurationMs()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->hasDurationMs()Z

    move-result v0

    return v0
.end method

.method public setDurationMs(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 676
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V

    return-object p0
.end method

.method public setEventType(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 585
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventType;)V

    return-object p0
.end method

.method public setEventTypeValue(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 558
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 559
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V

    return-object p0
.end method

.method public setImpressionNumber(J)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 518
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$100(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;J)V

    return-object p0
.end method

.method public setMonitoringId(I)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;->access$600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;I)V

    return-object p0
.end method
