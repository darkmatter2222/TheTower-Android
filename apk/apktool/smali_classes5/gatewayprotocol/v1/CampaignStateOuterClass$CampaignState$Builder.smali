.class public final Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignStateOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;",
        "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignStateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1387
    invoke-static {}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$1700()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/CampaignStateOuterClass$1;)V
    .locals 0

    .line 1380
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLoadedCampaigns(Ljava/lang/Iterable;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ">;)",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;"
        }
    .end annotation

    .line 1512
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1513
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2100(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllShownCampaigns(Ljava/lang/Iterable;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ">;)",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;"
        }
    .end annotation

    .line 1662
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1663
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2700(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLoadedCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1498
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1499
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1500
    invoke-virtual {p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    .line 1499
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2000(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public addLoadedCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1472
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1473
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2000(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public addLoadedCampaigns(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1485
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1486
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$1900(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public addLoadedCampaigns(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1459
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1460
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$1900(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public addShownCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1648
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1649
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1650
    invoke-virtual {p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    .line 1649
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2600(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public addShownCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1622
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1623
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2600(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public addShownCampaigns(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1635
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1636
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2500(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public addShownCampaigns(Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1609
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1610
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2500(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public clearLoadedCampaigns()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1524
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1525
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2200(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public clearShownCampaigns()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1674
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1675
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2800(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public getLoadedCampaigns(I)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;
    .locals 1

    .line 1422
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getLoadedCampaigns(I)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    move-result-object p1

    return-object p1
.end method

.method public getLoadedCampaignsCount()I
    .locals 1

    .line 1412
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getLoadedCampaignsCount()I

    move-result v0

    return v0
.end method

.method public getLoadedCampaignsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1401
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getLoadedCampaignsList()Ljava/util/List;

    move-result-object v0

    .line 1400
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShownCampaigns(I)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;
    .locals 1

    .line 1572
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getShownCampaigns(I)Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    move-result-object p1

    return-object p1
.end method

.method public getShownCampaignsCount()I
    .locals 1

    .line 1562
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getShownCampaignsCount()I

    move-result v0

    return v0
.end method

.method public getShownCampaignsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;",
            ">;"
        }
    .end annotation

    .line 1550
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1551
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->getShownCampaignsList()Ljava/util/List;

    move-result-object v0

    .line 1550
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeLoadedCampaigns(I)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1536
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1537
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2300(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;I)V

    return-object p0
.end method

.method public removeShownCampaigns(I)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1686
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1687
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2900(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;I)V

    return-object p0
.end method

.method public setLoadedCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1446
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1447
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1448
    invoke-virtual {p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    .line 1447
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$1800(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public setLoadedCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1433
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1434
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$1800(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public setShownCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1596
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1597
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    .line 1598
    invoke-virtual {p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignStateOuterClass$Campaign;

    .line 1597
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2400(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method

.method public setShownCampaigns(ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;
    .locals 1

    .line 1583
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->copyOnWrite()V

    .line 1584
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;->access$2400(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;ILgatewayprotocol/v1/CampaignStateOuterClass$Campaign;)V

    return-object p0
.end method
