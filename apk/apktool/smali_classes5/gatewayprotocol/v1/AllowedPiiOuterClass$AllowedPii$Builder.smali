.class public final Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AllowedPiiOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPiiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;",
        "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPiiOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 279
    invoke-static {}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$000()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AllowedPiiOuterClass$1;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppsetId()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 414
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 415
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$800(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-object p0
.end method

.method public clearFid()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 374
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 375
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$600(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-object p0
.end method

.method public clearIdfa()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 306
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 307
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$200(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-object p0
.end method

.method public clearIdfv()Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 334
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 335
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$400(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;)V

    return-object p0
.end method

.method public getAppsetId()Z
    .locals 1

    .line 389
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getAppsetId()Z

    move-result v0

    return v0
.end method

.method public getFid()Z
    .locals 1

    .line 349
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getFid()Z

    move-result v0

    return v0
.end method

.method public getIdfa()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getIdfa()Z

    move-result v0

    return v0
.end method

.method public getIdfv()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->getIdfv()Z

    move-result v0

    return v0
.end method

.method public setAppsetId(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 401
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$700(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method

.method public setFid(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 361
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 362
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$500(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method

.method public setIdfa(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 297
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 298
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$100(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method

.method public setIdfv(Z)Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;->access$300(Lgatewayprotocol/v1/AllowedPiiOuterClass$AllowedPii;Z)V

    return-object p0
.end method
