.class public final Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MonitoringEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1144
    invoke-static {}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1100()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$1;)V
    .locals 0

    .line 1137
    invoke-direct {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDynamicDeviceInfo()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1285
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1286
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1700(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-object p0
.end method

.method public clearMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1356
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$2000(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1214
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1215
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1400(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;)V

    return-object p0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 1239
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;
    .locals 1

    .line 1310
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getMonitoringEvent()Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 1168
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasMonitoringEvent()Z
    .locals 1

    .line 1299
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->hasMonitoringEvent()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 1

    .line 1157
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1274
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1275
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1600(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1346
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1900(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1203
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1204
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1300(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1262
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1263
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1249
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1500(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1333
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1334
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public setMonitoringEvent(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1320
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1321
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1800(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEvent;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1191
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1192
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;->access$1200(Lgatewayprotocol/v1/MonitoringEventRequestOuterClass$MonitoringEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method
