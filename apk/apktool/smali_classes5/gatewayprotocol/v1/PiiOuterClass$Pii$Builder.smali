.class public final Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PiiOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiOuterClass$Pii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;",
        ">;",
        "Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 496
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$000()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/PiiOuterClass$1;)V
    .locals 0

    .line 489
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdvertisingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 535
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 536
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$200(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearAppsetId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 763
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$1100(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearFid()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$800(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearOpenAdvertisingTrackingId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$600(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public clearVendorId()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 575
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$400(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V

    return-object p0
.end method

.method public getAdvertisingId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 510
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAppsetId()Ljava/lang/String;
    .locals 1

    .line 723
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAppsetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppsetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 736
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAppsetIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .line 642
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getFid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 655
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getFidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 590
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVendorId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 550
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getVendorId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAppsetId()Z
    .locals 1

    .line 711
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->hasAppsetId()Z

    move-result v0

    return v0
.end method

.method public hasFid()Z
    .locals 1

    .line 630
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->hasFid()Z

    move-result v0

    return v0
.end method

.method public setAdvertisingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 522
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$100(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAppsetId(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$1000(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppsetIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$1200(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setFid(Ljava/lang/String;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 668
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 669
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$700(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFidBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 696
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$900(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$500(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVendorId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->access$300(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
