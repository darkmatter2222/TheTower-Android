.class public final Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdResponseOuterClass$AdResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 687
    invoke-static {}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$000()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AdResponseOuterClass$1;)V
    .locals 0

    .line 680
    invoke-direct {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdData()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 963
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 964
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1300(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearAdDataRefreshToken()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearAdDataVersion()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1003
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1004
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1500(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearCampaignMetadata()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1145
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1146
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$2100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearError()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1074
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1075
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1800(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearImpressionConfiguration()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 766
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$400(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearImpressionConfigurationVersion()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 806
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearTrackingToken()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 726
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$200(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public clearWebviewConfiguration()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public getAdData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 934
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAdDataRefreshToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 892
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataRefreshToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAdDataVersion()I
    .locals 1

    .line 978
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getAdDataVersion()I

    move-result v0

    return v0
.end method

.method public getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;
    .locals 1

    .line 1099
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getCampaignMetadata()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 1028
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionConfiguration()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 741
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfiguration()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionConfigurationVersion()I
    .locals 1

    .line 781
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getImpressionConfigurationVersion()I

    move-result v0

    return v0
.end method

.method public getTrackingToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 701
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getTrackingToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
    .locals 1

    .line 831
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->getWebviewConfiguration()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasCampaignMetadata()Z
    .locals 1

    .line 1088
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasCampaignMetadata()Z

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 1017
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasWebviewConfiguration()Z
    .locals 1

    .line 820
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->hasWebviewConfiguration()Z

    move-result v0

    return v0
.end method

.method public mergeCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1134
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1135
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$2000(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1063
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1064
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public mergeWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 866
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 867
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$800(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public setAdData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 948
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1200(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAdDataRefreshToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 904
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1000(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAdDataVersion(I)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 990
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 991
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1400(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;I)V

    return-object p0
.end method

.method public setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1122
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1123
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public setCampaignMetadata(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1109
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1110
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1900(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignMetadata;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1051
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1052
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 1038
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 1039
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$1600(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setImpressionConfiguration(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 754
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$300(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setImpressionConfigurationVersion(I)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$500(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;I)V

    return-object p0
.end method

.method public setTrackingToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 713
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$100(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 854
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 855
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public setWebviewConfiguration(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->copyOnWrite()V

    .line 842
    iget-object v0, p0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;->access$700(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method
