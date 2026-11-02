.class public final Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RewardedOffersResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;",
        "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 327
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$000()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$1;)V
    .locals 0

    .line 320
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearError()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$700(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-object p0
.end method

.method public clearRewardedOffers()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$200(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-object p0
.end method

.method public clearRewardedOffersVersion()Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 407
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$400(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;)V

    return-object p0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 431
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedOffers()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 341
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getRewardedOffers()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRewardedOffersVersion()I
    .locals 1

    .line 381
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->getRewardedOffersVersion()I

    move-result v0

    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 420
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 466
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$600(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 454
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 455
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$500(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 441
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$500(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setRewardedOffers(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 353
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 354
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$100(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRewardedOffersVersion(I)Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;->access$300(Lgatewayprotocol/v1/RewardedOffersResponseOuterClass$RewardedOffersResponse;I)V

    return-object p0
.end method
