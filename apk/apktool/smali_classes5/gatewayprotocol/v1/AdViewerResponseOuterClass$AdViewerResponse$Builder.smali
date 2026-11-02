.class public final Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AdViewerResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 311
    invoke-static {}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$000()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AdViewerResponseOuterClass$1;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 461
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$700(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public clearPayload()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 350
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 351
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$200(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public clearPayloadVersion()Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$400(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;)V

    return-object p0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 415
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 325
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadVersion()I
    .locals 1

    .line 365
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->getPayloadVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 404
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 451
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$600(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 438
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$500(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 425
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 426
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$500(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 337
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 338
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$100(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPayloadVersion(I)Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;->access$300(Lgatewayprotocol/v1/AdViewerResponseOuterClass$AdViewerResponse;I)V

    return-object p0
.end method
