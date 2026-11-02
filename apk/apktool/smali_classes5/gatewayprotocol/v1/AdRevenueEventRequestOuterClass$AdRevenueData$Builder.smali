.class public final Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdRevenueEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueDataOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 866
    invoke-static {}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$000()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$1;)V
    .locals 0

    .line 859
    invoke-direct {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdFormat()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1347
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1348
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1900(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    return-object p0
.end method

.method public clearAdUnitId()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1185
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1186
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1200(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    return-object p0
.end method

.method public clearCountryCode()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1023
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1024
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$600(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    return-object p0
.end method

.method public clearEventId()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 905
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 906
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$200(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    return-object p0
.end method

.method public clearNetworkName()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1104
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1105
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$900(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    return-object p0
.end method

.method public clearRevenue()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 957
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 958
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$400(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    return-object p0
.end method

.method public clearThirdPartyAdPlacementId()Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1266
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1267
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1500(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;)V

    return-object p0
.end method

.method public getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;
    .locals 1

    .line 1322
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getAdFormat()Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getAdFormatValue()I
    .locals 1

    .line 1296
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getAdFormatValue()I

    move-result v0

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1146
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1159
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getAdUnitIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 984
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 997
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getCountryCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 880
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getEventId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .line 1065
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1078
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getNetworkNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRevenue()D
    .locals 2

    .line 932
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getRevenue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getThirdPartyAdPlacementId()Ljava/lang/String;
    .locals 1

    .line 1227
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThirdPartyAdPlacementIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1240
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->getThirdPartyAdPlacementIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAdUnitId()Z
    .locals 1

    .line 1134
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->hasAdUnitId()Z

    move-result v0

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .line 972
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->hasCountryCode()Z

    move-result v0

    return v0
.end method

.method public hasNetworkName()Z
    .locals 1

    .line 1053
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->hasNetworkName()Z

    move-result v0

    return v0
.end method

.method public hasRevenue()Z
    .locals 1

    .line 920
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->hasRevenue()Z

    move-result v0

    return v0
.end method

.method public hasThirdPartyAdPlacementId()Z
    .locals 1

    .line 1215
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->hasThirdPartyAdPlacementId()Z

    move-result v0

    return v0
.end method

.method public setAdFormat(Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1334
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1335
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1800(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lgatewayprotocol/v1/AdFormatOuterClass$AdFormat;)V

    return-object p0
.end method

.method public setAdFormatValue(I)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1308
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1309
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1700(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;I)V

    return-object p0
.end method

.method public setAdUnitId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1172
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1173
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1100(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAdUnitIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1200
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1201
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1300(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCountryCode(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1010
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1011
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$500(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCountryCodeBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1038
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1039
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$700(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEventId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 892
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 893
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$100(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setNetworkName(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1091
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1092
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$800(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNetworkNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1000(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRevenue(D)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 944
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 945
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$300(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;D)V

    return-object p0
.end method

.method public setThirdPartyAdPlacementId(Ljava/lang/String;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1253
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1254
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1400(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Ljava/lang/String;)V

    return-object p0
.end method

.method public setThirdPartyAdPlacementIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;
    .locals 1

    .line 1281
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->copyOnWrite()V

    .line 1282
    iget-object v0, p0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;->access$1600(Lgatewayprotocol/v1/AdRevenueEventRequestOuterClass$AdRevenueData;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
