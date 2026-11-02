.class public final Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdViewerRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 568
    invoke-static {}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$000()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AdViewerRequestOuterClass$1;)V
    .locals 0

    .line 561
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCampaignState()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearDynamicDeviceInfo()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 780
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 781
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$900(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearImpressionOpportunityId()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 891
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearPayload()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 931
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 932
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearSessionCounters()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 638
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 639
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 709
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$600(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;)V

    return-object p0
.end method

.method public getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .locals 1

    .line 805
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 734
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 866
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 906
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 592
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 663
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasCampaignState()Z
    .locals 1

    .line 794
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasCampaignState()Z

    move-result v0

    return v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 723
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionCounters()Z
    .locals 1

    .line 581
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 1

    .line 652
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 840
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 841
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 769
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 770
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$800(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$200(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 698
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 699
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1000(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 815
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1000(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 757
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$700(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 744
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$700(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 878
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 879
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1300(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 918
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 919
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$1500(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$100(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 686
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;
    .locals 1

    .line 673
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;->access$400(Lgatewayprotocol/v1/AdViewerRequestOuterClass$AdViewerRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method
