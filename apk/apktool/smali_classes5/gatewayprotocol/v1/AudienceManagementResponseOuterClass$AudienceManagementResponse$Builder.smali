.class public final Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AudienceManagementResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;",
        "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 255
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->access$000()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$1;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAudienceManagementData()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->access$200(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V

    return-object p0
.end method

.method public clearError()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 365
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->copyOnWrite()V

    .line 366
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->access$500(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V

    return-object p0
.end method

.method public getAudienceManagementData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 269
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->getAudienceManagementData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 319
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->hasError()Z

    move-result v0

    return v0
.end method

.method public mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 354
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->copyOnWrite()V

    .line 355
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->access$400(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setAudienceManagementData(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->copyOnWrite()V

    .line 282
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->access$100(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 342
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->copyOnWrite()V

    .line 343
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->access$300(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method

.method public setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->access$300(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-object p0
.end method
