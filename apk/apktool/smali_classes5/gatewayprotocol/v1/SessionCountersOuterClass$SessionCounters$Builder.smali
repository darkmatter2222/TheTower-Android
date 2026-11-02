.class public final Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SessionCountersOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCountersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;",
        "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;",
        ">;",
        "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCountersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 747
    invoke-static {}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$000()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/SessionCountersOuterClass$1;)V
    .locals 0

    .line 740
    invoke-direct {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAllErrorsCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1189
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1190
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$2200(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearBannerImpressions()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 946
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 947
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1000(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearBannerLoadRequests()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 866
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 867
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$600(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearBannerRequestsAdm()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 906
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 907
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$800(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearCacheTimeoutErrorsCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1229
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1230
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$2400(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearFocusChangeCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1067
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1600(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearGlobalAdsFocusChangeCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1026
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1027
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1400(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearGlobalAdsFocusTime()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1200(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearInitializationLatency()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1109
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1110
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1800(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearLastLoadLatency()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1149
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1150
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$2000(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearLoadRequests()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$200(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearLoadRequestsAdm()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 826
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 827
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$400(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public clearSuccessCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1269
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1270
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$2600(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;)V

    return-object p0
.end method

.method public getAllErrorsCount()I
    .locals 1

    .line 1164
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getAllErrorsCount()I

    move-result v0

    return v0
.end method

.method public getBannerImpressions()I
    .locals 1

    .line 921
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getBannerImpressions()I

    move-result v0

    return v0
.end method

.method public getBannerLoadRequests()I
    .locals 1

    .line 841
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getBannerLoadRequests()I

    move-result v0

    return v0
.end method

.method public getBannerRequestsAdm()I
    .locals 1

    .line 881
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getBannerRequestsAdm()I

    move-result v0

    return v0
.end method

.method public getCacheTimeoutErrorsCount()I
    .locals 1

    .line 1204
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getCacheTimeoutErrorsCount()I

    move-result v0

    return v0
.end method

.method public getFocusChangeCount()I
    .locals 1

    .line 1041
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getFocusChangeCount()I

    move-result v0

    return v0
.end method

.method public getGlobalAdsFocusChangeCount()I
    .locals 1

    .line 1001
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getGlobalAdsFocusChangeCount()I

    move-result v0

    return v0
.end method

.method public getGlobalAdsFocusTime()I
    .locals 1

    .line 961
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getGlobalAdsFocusTime()I

    move-result v0

    return v0
.end method

.method public getInitializationLatency()I
    .locals 1

    .line 1082
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getInitializationLatency()I

    move-result v0

    return v0
.end method

.method public getLastLoadLatency()I
    .locals 1

    .line 1124
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getLastLoadLatency()I

    move-result v0

    return v0
.end method

.method public getLoadRequests()I
    .locals 1

    .line 761
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getLoadRequests()I

    move-result v0

    return v0
.end method

.method public getLoadRequestsAdm()I
    .locals 1

    .line 801
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getLoadRequestsAdm()I

    move-result v0

    return v0
.end method

.method public getSuccessCount()I
    .locals 1

    .line 1244
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->getSuccessCount()I

    move-result v0

    return v0
.end method

.method public setAllErrorsCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1176
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1177
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$2100(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setBannerImpressions(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 934
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$900(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setBannerLoadRequests(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 853
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$500(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setBannerRequestsAdm(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 894
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$700(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setCacheTimeoutErrorsCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1216
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1217
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$2300(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setFocusChangeCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1053
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1054
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1500(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setGlobalAdsFocusChangeCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1013
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1014
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1300(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setGlobalAdsFocusTime(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 973
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 974
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1100(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setInitializationLatency(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1095
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1096
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1700(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setLastLoadLatency(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1136
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1137
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$1900(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setLoadRequests(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 773
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 774
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$100(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setLoadRequestsAdm(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 813
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 814
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$300(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method

.method public setSuccessCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .locals 1

    .line 1256
    invoke-virtual {p0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->copyOnWrite()V

    .line 1257
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;->access$2500(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;I)V

    return-object p0
.end method
