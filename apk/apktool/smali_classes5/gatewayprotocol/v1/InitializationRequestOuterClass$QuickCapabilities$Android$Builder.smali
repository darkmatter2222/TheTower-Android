.class public final Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InitializationRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$AndroidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$AndroidOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7090
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12200()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$1;)V
    .locals 0

    .line 7083
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllCapabilities(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;"
        }
    .end annotation

    .line 7184
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->copyOnWrite()V

    .line 7185
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12500(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllCapabilitiesValue(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;"
        }
    .end annotation

    .line 7280
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->copyOnWrite()V

    .line 7281
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12900(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addCapabilities(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1

    .line 7167
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->copyOnWrite()V

    .line 7168
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12400(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V

    return-object p0
.end method

.method public addCapabilitiesValue(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1

    .line 7263
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->copyOnWrite()V

    .line 7264
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12800(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;I)V

    return-object p0
.end method

.method public clearCapabilities()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1

    .line 7198
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->copyOnWrite()V

    .line 7199
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12600(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V

    return-object p0
.end method

.method public getCapabilities(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;
    .locals 1

    .line 7135
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getCapabilities(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;

    move-result-object p1

    return-object p1
.end method

.method public getCapabilitiesCount()I
    .locals 1

    .line 7120
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getCapabilitiesCount()I

    move-result v0

    return v0
.end method

.method public getCapabilitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;",
            ">;"
        }
    .end annotation

    .line 7106
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getCapabilitiesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilitiesValue(I)I
    .locals 1

    .line 7231
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getCapabilitiesValue(I)I

    move-result p1

    return p1
.end method

.method public getCapabilitiesValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7215
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    .line 7216
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getCapabilitiesValueList()Ljava/util/List;

    move-result-object v0

    .line 7215
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setCapabilities(ILgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1

    .line 7151
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->copyOnWrite()V

    .line 7152
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12300(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;ILgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Capability;)V

    return-object p0
.end method

.method public setCapabilitiesValue(II)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;
    .locals 1

    .line 7247
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->copyOnWrite()V

    .line 7248
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->access$12700(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;II)V

    return-object p0
.end method
