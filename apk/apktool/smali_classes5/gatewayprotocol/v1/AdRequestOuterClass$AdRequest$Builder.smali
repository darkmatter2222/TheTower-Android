.class public final Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;",
        "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2023
    invoke-static {}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$600()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AdRequestOuterClass$1;)V
    .locals 0

    .line 2016
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdFormat()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2826
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2827
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearAdRequestType()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2677
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2678
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearBannerSize()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2748
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2749
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearCampaignState()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2306
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2307
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearDynamicDeviceInfo()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2235
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2236
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearExternalUserIdentifier()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3172
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3173
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearExtras()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2933
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2934
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearImpressionOpportunityId()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2346
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2347
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearMediationAdUnitId()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2892
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2893
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearMediationInfo()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3106
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3107
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearPlacementId()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2400
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2401
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearRequestImpressionConfiguration()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2455
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2456
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearScarSignal()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2495
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2496
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearSessionCounters()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2093
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2094
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearStaticDeviceInfo()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2164
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2165
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearTcf()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2599
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2600
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public clearWebviewVersion()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2547
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2548
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)V

    return-object p0
.end method

.method public containsExtras(Ljava/lang/String;)Z
    .locals 1

    .line 2928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2929
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 1

    .line 2801
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getAdFormatValue()I
    .locals 1

    .line 2775
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getAdFormatValue()I

    move-result v0

    return v0
.end method

.method public getAdRequestType()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;
    .locals 1

    .line 2652
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getAdRequestType()Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;

    move-result-object v0

    return-object v0
.end method

.method public getAdRequestTypeValue()I
    .locals 1

    .line 2626
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getAdRequestTypeValue()I

    move-result v0

    return v0
.end method

.method public getBannerSize()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;
    .locals 1

    .line 2702
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getBannerSize()Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;
    .locals 1

    .line 2260
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getCampaignState()Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;
    .locals 1

    .line 2189
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getDynamicDeviceInfo()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUserIdentifier()Ljava/lang/String;
    .locals 1

    .line 3133
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExternalUserIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUserIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3146
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExternalUserIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2958
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasCount()I
    .locals 1

    .line 2915
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getExtrasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2969
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    .line 2970
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    .line 2969
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2986
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2987
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    .line 2988
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    .line 2989
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getExtrasOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3002
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3003
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    .line 3004
    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    .line 3005
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3008
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3006
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getImpressionOpportunityId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2321
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getImpressionOpportunityId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdUnitId()Ljava/lang/String;
    .locals 1

    .line 2853
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getMediationAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediationAdUnitIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2866
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getMediationAdUnitIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMediationInfo()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
    .locals 1

    .line 3060
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getMediationInfo()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 2361
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2374
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getPlacementIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestImpressionConfiguration()Z
    .locals 1

    .line 2430
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getRequestImpressionConfiguration()Z

    move-result v0

    return v0
.end method

.method public getScarSignal()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2470
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getScarSignal()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 1

    .line 2047
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getSessionCounters()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    return-object v0
.end method

.method public getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;
    .locals 1

    .line 2118
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getStaticDeviceInfo()Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTcf()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2574
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getTcf()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWebviewVersion()I
    .locals 1

    .line 2522
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->getWebviewVersion()I

    move-result v0

    return v0
.end method

.method public hasAdFormat()Z
    .locals 1

    .line 2763
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasAdFormat()Z

    move-result v0

    return v0
.end method

.method public hasAdRequestType()Z
    .locals 1

    .line 2614
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasAdRequestType()Z

    move-result v0

    return v0
.end method

.method public hasBannerSize()Z
    .locals 1

    .line 2691
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasBannerSize()Z

    move-result v0

    return v0
.end method

.method public hasCampaignState()Z
    .locals 1

    .line 2249
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasCampaignState()Z

    move-result v0

    return v0
.end method

.method public hasDynamicDeviceInfo()Z
    .locals 1

    .line 2178
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasDynamicDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasExternalUserIdentifier()Z
    .locals 1

    .line 3121
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasExternalUserIdentifier()Z

    move-result v0

    return v0
.end method

.method public hasMediationAdUnitId()Z
    .locals 1

    .line 2841
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasMediationAdUnitId()Z

    move-result v0

    return v0
.end method

.method public hasMediationInfo()Z
    .locals 1

    .line 3049
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasMediationInfo()Z

    move-result v0

    return v0
.end method

.method public hasSessionCounters()Z
    .locals 1

    .line 2036
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasSessionCounters()Z

    move-result v0

    return v0
.end method

.method public hasStaticDeviceInfo()Z
    .locals 1

    .line 2107
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasStaticDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasTcf()Z
    .locals 1

    .line 2562
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasTcf()Z

    move-result v0

    return v0
.end method

.method public hasWebviewVersion()Z
    .locals 1

    .line 2510
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->hasWebviewVersion()Z

    move-result v0

    return v0
.end method

.method public mergeBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2737
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2738
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V

    return-object p0
.end method

.method public mergeCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2295
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2296
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public mergeDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2224
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2225
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public mergeMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3095
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3096
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-object p0
.end method

.method public mergeSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2082
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2083
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public mergeStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2153
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2154
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public putAllExtras(Ljava/util/Map;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;"
        }
    .end annotation

    .line 3035
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3036
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putExtras(Ljava/lang/String;Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3020
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3021
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3022
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3023
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeExtras(Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2948
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2949
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2814
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-object p0
.end method

.method public setAdFormatValue(I)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2787
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2788
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;I)V

    return-object p0
.end method

.method public setAdRequestType(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2664
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2665
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdRequestOuterClass$AdRequestType;)V

    return-object p0
.end method

.method public setAdRequestTypeValue(I)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2638
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2639
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3200(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;I)V

    return-object p0
.end method

.method public setBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2725
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2726
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V

    return-object p0
.end method

.method public setBannerSize(Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2712
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2713
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/AdRequestOuterClass$BannerSize;)V

    return-object p0
.end method

.method public setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2283
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2284
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setCampaignState(Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2270
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2271
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/CampaignStateOuterClass$CampaignState;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2212
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2213
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setDynamicDeviceInfo(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2199
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2200
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$DynamicDeviceInfo;)V

    return-object p0
.end method

.method public setExternalUserIdentifier(Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3159
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3160
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExternalUserIdentifierBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3187
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3188
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$5000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setImpressionOpportunityId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2333
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2334
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1900(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMediationAdUnitId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2879
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2880
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMediationAdUnitIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2907
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2908
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3083
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3084
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-object p0
.end method

.method public setMediationInfo(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 3070
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 3071
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$4500(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-object p0
.end method

.method public setPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2387
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2388
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2100(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPlacementIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2415
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2416
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2300(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRequestImpressionConfiguration(Z)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2442
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2443
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2400(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Z)V

    return-object p0
.end method

.method public setScarSignal(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2482
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2483
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2600(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2070
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2071
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setSessionCounters(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2057
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2058
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$700(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2141
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2142
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setStaticDeviceInfo(Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2128
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2129
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$1000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lgatewayprotocol/v1/StaticDeviceInfoOuterClass$StaticDeviceInfo;)V

    return-object p0
.end method

.method public setTcf(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2586
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2587
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$3000(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setWebviewVersion(I)Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;
    .locals 1

    .line 2534
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->copyOnWrite()V

    .line 2535
    iget-object v0, p0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;->access$2800(Lgatewayprotocol/v1/AdRequestOuterClass$AdRequest;I)V

    return-object p0
.end method
