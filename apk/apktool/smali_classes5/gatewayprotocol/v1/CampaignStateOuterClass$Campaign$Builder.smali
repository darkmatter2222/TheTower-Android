.class public final Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignStateOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
        "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 526
    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$000()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$1;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearData()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$400(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public clearDataVersion()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$200(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public clearImpressionOpportunityId()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 714
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 715
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$900(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public clearLoadTimestamp()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 785
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 786
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1200(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public clearPlacementId()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 659
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 660
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$600(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public clearShowTimestamp()Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 856
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 857
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1500(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 580
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDataVersion()I
    .locals 1

    .line 540
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->getDataVersion()I

    move-result v0

    return v0
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 689
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLoadTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 1

    .line 739
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->getLoadTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 620
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 633
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->getPlacementIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getShowTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;
    .locals 1

    .line 810
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->getShowTimestamp()Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    move-result-object v0

    return-object v0
.end method

.method public hasLoadTimestamp()Z
    .locals 1

    .line 728
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->hasLoadTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasShowTimestamp()Z
    .locals 1

    .line 799
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->hasShowTimestamp()Z

    move-result v0

    return v0
.end method

.method public mergeLoadTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 774
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 775
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1100(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public mergeShowTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 845
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 846
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1400(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$300(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setDataVersion(I)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 552
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$100(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;I)V

    return-object p0
.end method

.method public setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 701
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 702
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$800(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setLoadTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 763
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1000(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public setLoadTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1000(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public setPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 647
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$500(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPlacementIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$700(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setShowTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 833
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 834
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-virtual {p1}, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1300(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method

.method public setShowTimestamp(Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;->access$1300(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;Lgatewayprotocol/v1/TimestampsOuterClass$Timestamps;)V

    return-object p0
.end method
