.class public final Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ModuleOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleOuterClass$Module;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module;",
        "Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ModuleOuterClass$ModuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 257
    invoke-static {}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$000()Lgatewayprotocol/v1/ModuleOuterClass$Module;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/ModuleOuterClass$1;)V
    .locals 0

    .line 250
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConfig()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$500(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public clearName()Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$200(Lgatewayprotocol/v1/ModuleOuterClass$Module;)V

    return-object p0
.end method

.method public getConfig()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 340
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getConfig()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 284
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setConfig(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$400(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .locals 1

    .line 297
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->copyOnWrite()V

    .line 298
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$100(Lgatewayprotocol/v1/ModuleOuterClass$Module;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleOuterClass$Module$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleOuterClass$Module;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleOuterClass$Module;->access$300(Lgatewayprotocol/v1/ModuleOuterClass$Module;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
