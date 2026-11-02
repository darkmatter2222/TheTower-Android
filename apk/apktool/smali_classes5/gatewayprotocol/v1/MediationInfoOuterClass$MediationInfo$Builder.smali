.class public final Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MediationInfoOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;",
        ">;",
        "Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 528
    invoke-static {}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$000()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/MediationInfoOuterClass$1;)V
    .locals 0

    .line 521
    invoke-direct {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAdapterVersion()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 821
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 822
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$1100(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-object p0
.end method

.method public clearCustomName()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 659
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 660
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$500(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-object p0
.end method

.method public clearProvider()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$300(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-object p0
.end method

.method public clearVersion()Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 740
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 741
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$800(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;)V

    return-object p0
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 782
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapterVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 795
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getAdapterVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustomName()Ljava/lang/String;
    .locals 1

    .line 620
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getCustomName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 633
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getCustomNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;
    .locals 1

    .line 568
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getProvider()Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object v0

    return-object v0
.end method

.method public getProviderValue()I
    .locals 1

    .line 542
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getProviderValue()I

    move-result v0

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 701
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 714
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->getVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAdapterVersion()Z
    .locals 1

    .line 770
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->hasAdapterVersion()Z

    move-result v0

    return v0
.end method

.method public hasCustomName()Z
    .locals 1

    .line 608
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->hasCustomName()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .line 689
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-virtual {v0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public setAdapterVersion(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 808
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 809
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$1000(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAdapterVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 836
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 837
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$1200(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCustomName(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 647
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$400(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCustomNameBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 674
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 675
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$600(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setProvider(Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 580
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 581
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$200(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lgatewayprotocol/v1/ClientInfoOuterClass$MediationProvider;)V

    return-object p0
.end method

.method public setProviderValue(I)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$100(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;I)V

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 727
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 728
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$700(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setVersionBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->copyOnWrite()V

    .line 756
    iget-object v0, p0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;->access$900(Lgatewayprotocol/v1/MediationInfoOuterClass$MediationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
