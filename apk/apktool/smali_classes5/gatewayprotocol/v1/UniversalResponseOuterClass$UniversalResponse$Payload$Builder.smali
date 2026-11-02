.class public final Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;",
        ">;",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$PayloadOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 976
    invoke-static {}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$000()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$1;)V
    .locals 0

    .line 969
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdDataRefreshResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1275
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1276
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearAdPlayerConfigResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1203
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1204
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1000(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearAdResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1131
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1132
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$700(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearAdViewerResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1569
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1570
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearAudienceManagementResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1419
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1420
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1900(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearInitializationResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1059
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1060
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearPrivacyUpdateResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1347
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1348
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1600(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearRewardedOffersResponse()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1497
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1498
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public clearValue()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public getAdDataRefreshResponse()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;
    .locals 1

    .line 1228
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdDataRefreshResponse()Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;
    .locals 1

    .line 1156
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdPlayerConfigResponse()Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;
    .locals 1

    .line 1084
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdResponse()Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewerResponse()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
    .locals 1

    .line 1522
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAdViewerResponse()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object v0

    return-object v0
.end method

.method public getAudienceManagementResponse()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1

    .line 1372
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getAudienceManagementResponse()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    move-result-object v0

    return-object v0
.end method

.method public getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;
    .locals 1

    .line 1012
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getInitializationResponse()Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacyUpdateResponse()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;
    .locals 1

    .line 1300
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getPrivacyUpdateResponse()Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedOffersResponse()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1446
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getRewardedOffersResponse()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;
    .locals 1

    .line 982
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->getValueCase()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAdDataRefreshResponse()Z
    .locals 1

    .line 1217
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAdDataRefreshResponse()Z

    move-result v0

    return v0
.end method

.method public hasAdPlayerConfigResponse()Z
    .locals 1

    .line 1145
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAdPlayerConfigResponse()Z

    move-result v0

    return v0
.end method

.method public hasAdResponse()Z
    .locals 1

    .line 1073
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAdResponse()Z

    move-result v0

    return v0
.end method

.method public hasAdViewerResponse()Z
    .locals 1

    .line 1511
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAdViewerResponse()Z

    move-result v0

    return v0
.end method

.method public hasAudienceManagementResponse()Z
    .locals 1

    .line 1361
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasAudienceManagementResponse()Z

    move-result v0

    return v0
.end method

.method public hasInitializationResponse()Z
    .locals 1

    .line 1001
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasInitializationResponse()Z

    move-result v0

    return v0
.end method

.method public hasPrivacyUpdateResponse()Z
    .locals 1

    .line 1289
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasPrivacyUpdateResponse()Z

    move-result v0

    return v0
.end method

.method public hasRewardedOffersResponse()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1434
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->hasRewardedOffersResponse()Z

    move-result v0

    return v0
.end method

.method public mergeAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1263
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1264
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-object p0
.end method

.method public mergeAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1191
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1192
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$900(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-object p0
.end method

.method public mergeAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$600(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public mergeAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1557
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1558
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public mergeAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1407
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1408
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1800(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V

    return-object p0
.end method

.method public mergeInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1047
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1048
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public mergePrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1335
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1336
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-object p0
.end method

.method public mergeRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1484
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1485
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-object p0
.end method

.method public setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1251
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1252
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-object p0
.end method

.method public setAdDataRefreshResponse(Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1238
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1239
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdDataRefreshResponseOuterClass$AdDataRefreshResponse;)V

    return-object p0
.end method

.method public setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1179
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1180
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$800(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-object p0
.end method

.method public setAdPlayerConfigResponse(Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1166
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1167
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$800(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdPlayerConfigResponseOuterClass$AdPlayerConfigResponse;)V

    return-object p0
.end method

.method public setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1108
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public setAdResponse(Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1094
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1095
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdResponseOuterClass$AdResponse;)V

    return-object p0
.end method

.method public setAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1545
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1546
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public setAdViewerResponse(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1532
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1533
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public setAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1395
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1396
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1700(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V

    return-object p0
.end method

.method public setAudienceManagementResponse(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1383
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1700(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V

    return-object p0
.end method

.method public setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1035
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1036
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public setInitializationResponse(Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1022
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1023
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/InitializationResponseOuterClass$InitializationResponse;)V

    return-object p0
.end method

.method public setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1323
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1324
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-object p0
.end method

.method public setPrivacyUpdateResponse(Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1

    .line 1310
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1311
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$1400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/PrivacyUpdateResponseOuterClass$PrivacyUpdateResponse;)V

    return-object p0
.end method

.method public setRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1472
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-virtual {p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2000(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-object p0
.end method

.method public setRewardedOffersResponse(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1457
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->copyOnWrite()V

    .line 1458
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;->access$2000(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-object p0
.end method
