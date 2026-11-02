.class public final Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TestDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TestDataOuterClass$TestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/TestDataOuterClass$TestDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 547
    invoke-static {}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$000()Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/TestDataOuterClass$1;)V
    .locals 0

    .line 540
    invoke-direct {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearForceCampaignId()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 592
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$200(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceCountry()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 649
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 650
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$500(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceCountrySubdivision()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 706
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 707
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$800(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceExchangeTestMode()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 789
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public clearForceGeoKey()Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 855
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 856
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1300(Lgatewayprotocol/v1/TestDataOuterClass$TestData;)V

    return-object p0
.end method

.method public getForceCampaignId()Ljava/lang/String;
    .locals 1

    .line 565
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCampaignId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 574
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCampaignIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountry()Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 631
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountrySubdivision()Ljava/lang/String;
    .locals 1

    .line 679
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountrySubdivision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 688
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceCountrySubdivisionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getForceExchangeTestMode()I
    .locals 1

    .line 754
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceExchangeTestMode()I

    move-result v0

    return v0
.end method

.method public getForceGeoKey()Ljava/lang/String;
    .locals 1

    .line 816
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceGeoKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForceGeoKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 829
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->getForceGeoKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasForceCampaignId()Z
    .locals 1

    .line 557
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCampaignId()Z

    move-result v0

    return v0
.end method

.method public hasForceCountry()Z
    .locals 1

    .line 614
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCountry()Z

    move-result v0

    return v0
.end method

.method public hasForceCountrySubdivision()Z
    .locals 1

    .line 671
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceCountrySubdivision()Z

    move-result v0

    return v0
.end method

.method public hasForceExchangeTestMode()Z
    .locals 1

    .line 737
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceExchangeTestMode()Z

    move-result v0

    return v0
.end method

.method public hasForceGeoKey()Z
    .locals 1

    .line 804
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->hasForceGeoKey()Z

    move-result v0

    return v0
.end method

.method public setForceCampaignId(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 583
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 584
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$100(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCampaignIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$300(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceCountry(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 640
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 641
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$400(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCountryBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 660
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 661
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$600(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceCountrySubdivision(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$700(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceCountrySubdivisionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 717
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 718
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$900(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setForceExchangeTestMode(I)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 771
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 772
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1000(Lgatewayprotocol/v1/TestDataOuterClass$TestData;I)V

    return-object p0
.end method

.method public setForceGeoKey(Ljava/lang/String;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1200(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setForceGeoKeyBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;
    .locals 1

    .line 870
    invoke-virtual {p0}, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->copyOnWrite()V

    .line 871
    iget-object v0, p0, Lgatewayprotocol/v1/TestDataOuterClass$TestData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/TestDataOuterClass$TestData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/TestDataOuterClass$TestData;->access$1400(Lgatewayprotocol/v1/TestDataOuterClass$TestData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
