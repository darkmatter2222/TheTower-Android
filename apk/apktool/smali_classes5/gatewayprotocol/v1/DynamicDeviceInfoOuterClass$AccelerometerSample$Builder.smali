.class public final Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DynamicDeviceInfoOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSampleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;",
        ">;",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSampleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 463
    invoke-static {}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$000()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$1;)V
    .locals 0

    .line 456
    invoke-direct {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClientTimestamp()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 533
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 534
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$300(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-object p0
.end method

.method public clearX()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$500(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-object p0
.end method

.method public clearY()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 616
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$700(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-object p0
.end method

.method public clearZ()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$900(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V

    return-object p0
.end method

.method public getClientTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 487
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->getClientTimestamp()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 549
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    .line 591
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->getY()F

    move-result v0

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 631
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->getZ()F

    move-result v0

    return v0
.end method

.method public hasClientTimestamp()Z
    .locals 1

    .line 476
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->hasClientTimestamp()Z

    move-result v0

    return v0
.end method

.method public mergeClientTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$200(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setClientTimestamp(Lcom/google/protobuf/Timestamp$Builder;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 510
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 511
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$100(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setClientTimestamp(Lcom/google/protobuf/Timestamp;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$100(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setX(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$400(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;F)V

    return-object p0
.end method

.method public setY(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$600(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;F)V

    return-object p0
.end method

.method public setZ(F)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 643
    invoke-virtual {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->copyOnWrite()V

    .line 644
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->access$800(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;F)V

    return-object p0
.end method
