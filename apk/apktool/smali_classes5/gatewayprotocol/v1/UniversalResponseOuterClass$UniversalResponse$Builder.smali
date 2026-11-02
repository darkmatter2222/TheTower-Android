.class public final Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UniversalResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1959
    invoke-static {}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$2700()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/UniversalResponseOuterClass$1;)V
    .locals 0

    .line 1952
    invoke-direct {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2177
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2178
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3600(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;)V

    return-object p0
.end method

.method public clearMutableData()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2100
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2101
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3300(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;)V

    return-object p0
.end method

.method public clearPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2029
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2030
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3000(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;)V

    return-object p0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 2127
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getMutableData()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;
    .locals 1

    .line 2054
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getMutableData()Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;
    .locals 1

    .line 1983
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->getPayload()Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 2115
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public hasMutableData()Z
    .locals 1

    .line 2043
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasMutableData()Z

    move-result v0

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .line 1972
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->hasPayload()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2165
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2166
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3500(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public mergeMutableData(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2089
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2090
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3200(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public mergePayload(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2018
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2019
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$2900(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2152
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2153
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2138
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2139
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3400(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setMutableData(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2077
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2078
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public setMutableData(Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2064
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2065
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$3100(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/MutableDataOuterClass$MutableData;)V

    return-object p0
.end method

.method public setPayload(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 2006
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 2007
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$2800(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method

.method public setPayload(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;
    .locals 1

    .line 1993
    invoke-virtual {p0}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->copyOnWrite()V

    .line 1994
    iget-object v0, p0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;->access$2800(Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse;Lgatewayprotocol/v1/UniversalResponseOuterClass$UniversalResponse$Payload;)V

    return-object p0
.end method
