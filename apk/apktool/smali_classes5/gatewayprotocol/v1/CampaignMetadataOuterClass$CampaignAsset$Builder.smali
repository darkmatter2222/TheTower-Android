.class public final Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignMetadataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;",
        ">;",
        "Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAssetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 243
    invoke-static {}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$000()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/CampaignMetadataOuterClass$1;)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPriority()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 319
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->copyOnWrite()V

    .line 320
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$500(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public clearRequired()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 347
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->copyOnWrite()V

    .line 348
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$700(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public clearUrl()Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 280
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->copyOnWrite()V

    .line 281
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$200(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;)V

    return-object p0
.end method

.method public getPriority()I
    .locals 1

    .line 302
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getPriority()I

    move-result v0

    return v0
.end method

.method public getRequired()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getRequired()Z

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 262
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-virtual {v0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(I)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$400(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;I)V

    return-object p0
.end method

.method public setRequired(Z)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->copyOnWrite()V

    .line 339
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$600(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Z)V

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->copyOnWrite()V

    .line 272
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$100(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;
    .locals 1

    .line 291
    invoke-virtual {p0}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->copyOnWrite()V

    .line 292
    iget-object v0, p0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;->access$300(Lgatewayprotocol/v1/CampaignMetadataOuterClass$CampaignAsset;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
