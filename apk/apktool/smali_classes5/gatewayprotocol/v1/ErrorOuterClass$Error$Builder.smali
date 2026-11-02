.class public final Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ErrorOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ErrorOuterClass$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error;",
        "Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ErrorOuterClass$ErrorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 753
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$000()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/ErrorOuterClass$1;)V
    .locals 0

    .line 746
    invoke-direct {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 887
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 888
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$600(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public clearErrorText()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 806
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$200(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public clearErrorToken()Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 927
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 928
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$800(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;
    .locals 1

    .line 862
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCode()Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    return-object v0
.end method

.method public getErrorCodeValue()I
    .locals 1

    .line 836
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorCodeValue()I

    move-result v0

    return v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 1

    .line 767
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 780
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 902
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getErrorToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setErrorCode(Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 874
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 875
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$500(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;)V

    return-object p0
.end method

.method public setErrorCodeValue(I)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 848
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$400(Lgatewayprotocol/v1/ErrorOuterClass$Error;I)V

    return-object p0
.end method

.method public setErrorText(Ljava/lang/String;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 793
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 794
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$100(Lgatewayprotocol/v1/ErrorOuterClass$Error;Ljava/lang/String;)V

    return-object p0
.end method

.method public setErrorTextBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 821
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$300(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setErrorToken(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;
    .locals 1

    .line 914
    invoke-virtual {p0}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->copyOnWrite()V

    .line 915
    iget-object v0, p0, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->access$700(Lgatewayprotocol/v1/ErrorOuterClass$Error;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
