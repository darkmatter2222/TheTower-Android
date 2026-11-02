.class public final Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ModuleInitParamsOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
        "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParamsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 360
    invoke-static {}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$000()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$1;)V
    .locals 0

    .line 353
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClassName()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 527
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$700(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public clearName()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 413
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 414
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$200(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public clearParams()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 469
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$500(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 498
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getClassNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 387
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 443
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getParams()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 512
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 513
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$600(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Ljava/lang/String;)V

    return-object p0
.end method

.method public setClassNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 542
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 543
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$800(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$100(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$300(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setParams(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 455
    invoke-virtual {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->copyOnWrite()V

    .line 456
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->access$400(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
