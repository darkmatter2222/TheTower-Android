.class public final Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LifecycleEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;",
        "Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 531
    invoke-static {}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$000()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$1;)V
    .locals 0

    .line 524
    invoke-direct {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDynamicDeviceInfo()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 672
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$600(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    return-object p0
.end method

.method public clearEventId()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 781
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$1100(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    return-object p0
.end method

.method public clearLifecycleEventType()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 738
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 739
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$900(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$300(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;)V

    return-object p0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 626
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 754
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->getEventId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleEventType()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;
    .locals 1

    .line 713
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->getLifecycleEventType()Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;

    move-result-object v0

    return-object v0
.end method

.method public getLifecycleEventTypeValue()I
    .locals 1

    .line 687
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->getLifecycleEventTypeValue()I

    move-result v0

    return v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 555
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 615
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 661
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 662
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$500(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 590
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 591
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$200(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 649
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 650
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$400(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 636
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$400(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setEventId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$1000(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLifecycleEventType(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 725
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$800(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventType;)V

    return-object p0
.end method

.method public setLifecycleEventTypeValue(I)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 699
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 700
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$700(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;I)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$100(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;->access$100(Lgatewayprotocol/v1/LifecycleEventRequestOuterClass$LifecycleEventRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method
