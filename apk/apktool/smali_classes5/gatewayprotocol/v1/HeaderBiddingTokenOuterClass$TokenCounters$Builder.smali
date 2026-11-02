.class public final Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HeaderBiddingTokenOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCountersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;",
        "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;",
        ">;",
        "Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCountersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 263
    invoke-static {}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->access$000()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$1;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSeq()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->copyOnWrite()V

    .line 303
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->access$200(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;)V

    return-object p0
.end method

.method public clearStarts()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;
    .locals 1

    .line 382
    invoke-virtual {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->copyOnWrite()V

    .line 383
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->access$600(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;)V

    return-object p0
.end method

.method public clearWins()Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->copyOnWrite()V

    .line 343
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-static {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->access$400(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;)V

    return-object p0
.end method

.method public getSeq()I
    .locals 1

    .line 277
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->getSeq()I

    move-result v0

    return v0
.end method

.method public getStarts()I
    .locals 1

    .line 357
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->getStarts()I

    move-result v0

    return v0
.end method

.method public getWins()I
    .locals 1

    .line 317
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-virtual {v0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->getWins()I

    move-result v0

    return v0
.end method

.method public setSeq(I)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->copyOnWrite()V

    .line 290
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->access$100(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;I)V

    return-object p0
.end method

.method public setStarts(I)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;
    .locals 1

    .line 369
    invoke-virtual {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->copyOnWrite()V

    .line 370
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->access$500(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;I)V

    return-object p0
.end method

.method public setWins(I)Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;->access$300(Lgatewayprotocol/v1/HeaderBiddingTokenOuterClass$TokenCounters;I)V

    return-object p0
.end method
