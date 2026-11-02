.class public final Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RewardedOffersRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 405
    invoke-static {}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$000()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$1;)V
    .locals 0

    .line 398
    invoke-direct {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCursor()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .locals 1

    .line 513
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->copyOnWrite()V

    .line 514
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$500(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V

    return-object p0
.end method

.method public clearEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$300(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;)V

    return-object p0
.end method

.method public getCursor()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 486
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getCursor()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;
    .locals 1

    .line 445
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getEntryPoint()Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPointValue()I
    .locals 1

    .line 419
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->getEntryPointValue()I

    move-result v0

    return v0
.end method

.method public setCursor(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$400(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setEntryPoint(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .locals 1

    .line 457
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->copyOnWrite()V

    .line 458
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$200(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersEntryPoint;)V

    return-object p0
.end method

.method public setEntryPointValue(I)Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;->access$100(Lgatewayprotocol/v1/RewardedOffersRequestOuterClass$RewardedOffersRequest;I)V

    return-object p0
.end method
