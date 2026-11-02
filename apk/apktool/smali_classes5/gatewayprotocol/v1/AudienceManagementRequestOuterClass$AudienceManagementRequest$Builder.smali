.class public final Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AudienceManagementRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;",
        "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 425
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$000()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$1;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAudienceManagementData()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$1100(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V

    return-object p0
.end method

.method public clearDynamicDeviceInfo()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 637
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 638
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$900(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V

    return-object p0
.end method

.method public clearSessionCounters()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 496
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$300(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 567
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$600(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;)V

    return-object p0
.end method

.method public getAudienceManagementData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 652
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getAudienceManagementData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 591
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 449
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 520
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionCounters()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 1

    .line 509
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 626
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 627
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$800(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 484
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 485
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$200(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 555
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$500(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setAudienceManagementData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 664
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$1000(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 614
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$700(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$700(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 473
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$100(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$100(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 543
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 544
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$400(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->copyOnWrite()V

    .line 531
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;->access$400(Lgatewayprotocol/v1/AudienceManagementRequestOuterClass$AudienceManagementRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method
