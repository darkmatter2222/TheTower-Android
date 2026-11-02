.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 807
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$900()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V
    .locals 0

    .line 800
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAssetsToCache(Ljava/lang/Iterable;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;)",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;"
        }
    .end annotation

    .line 948
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 938
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 939
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 940
    invoke-virtual {p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    .line 939
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public addAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 929
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public addAssetsToCache(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 911
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public clearAdDataRefreshDelayMs()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearAssetsToCache()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 956
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1800(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearCampaignStateData()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 862
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 863
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearCampaignStateDataVersion()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 834
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 835
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public clearTtlSeconds()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 1044
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 1045
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public getAdDataRefreshDelayMs()I
    .locals 1

    .line 979
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAdDataRefreshDelayMs()I

    move-result v0

    return v0
.end method

.method public getAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
    .locals 1

    .line 886
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    move-result-object p1

    return-object p1
.end method

.method public getAssetsToCacheCount()I
    .locals 1

    .line 880
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheCount()I

    move-result v0

    return v0
.end method

.method public getAssetsToCacheList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
            ">;"
        }
    .end annotation

    .line 872
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 873
    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getAssetsToCacheList()Ljava/util/List;

    move-result-object v0

    .line 872
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignStateData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 845
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getCampaignStateData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignStateDataVersion()I
    .locals 1

    .line 817
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getCampaignStateDataVersion()I

    move-result v0

    return v0
.end method

.method public getTtlSeconds()I
    .locals 1

    .line 1019
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->getTtlSeconds()I

    move-result v0

    return v0
.end method

.method public removeAssetsToCache(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 964
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 965
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1900(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method

.method public setAdDataRefreshDelayMs(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 991
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method

.method public setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 902
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 903
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    .line 904
    invoke-virtual {p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    .line 903
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public setAssetsToCache(ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 894
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;ILgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public setCampaignStateData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 853
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCampaignStateDataVersion(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$1000(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method

.method public setTtlSeconds(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;
    .locals 1

    .line 1031
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->copyOnWrite()V

    .line 1032
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;->access$2200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;I)V

    return-object p0
.end method
