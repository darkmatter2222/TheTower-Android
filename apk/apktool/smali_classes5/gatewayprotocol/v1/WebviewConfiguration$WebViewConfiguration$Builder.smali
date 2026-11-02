.class public final Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WebviewConfiguration.java"

# interfaces
.implements Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;",
        "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;",
        ">;",
        "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfigurationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 522
    invoke-static {}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$000()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/WebviewConfiguration$1;)V
    .locals 0

    .line 515
    invoke-direct {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdditionalFiles(Ljava/lang/String;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 715
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 716
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$700(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAdditionalFilesBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 758
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 759
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$1000(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addAllAdditionalFiles(Ljava/lang/Iterable;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$800(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearAdditionalFiles()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 743
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 744
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$900(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public clearEntryPoint()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$400(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public clearType()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$1200(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public clearVersion()Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 561
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 562
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$200(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;)V

    return-object p0
.end method

.method public getAdditionalFiles(I)Ljava/lang/String;
    .locals 1

    .line 672
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getAdditionalFiles(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdditionalFilesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 686
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getAdditionalFilesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAdditionalFilesCount()I
    .locals 1

    .line 659
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getAdditionalFilesCount()I

    move-result v0

    return v0
.end method

.method public getAdditionalFilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 646
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    .line 647
    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getAdditionalFilesList()Ljava/util/List;

    move-result-object v0

    .line 646
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPoint()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 589
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getEntryPointBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 773
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 786
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 536
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->getVersion()I

    move-result v0

    return v0
.end method

.method public setAdditionalFiles(ILjava/lang/String;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 700
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$600(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;ILjava/lang/String;)V

    return-object p0
.end method

.method public setEntryPoint(Ljava/lang/String;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 602
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$300(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/String;)V

    return-object p0
.end method

.method public setEntryPointBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$500(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$1100(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 827
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 828
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$1300(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setVersion(I)Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;
    .locals 1

    .line 548
    invoke-virtual {p0}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->copyOnWrite()V

    .line 549
    iget-object v0, p0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;->access$100(Lgatewayprotocol/v1/WebviewConfiguration$WebViewConfiguration;I)V

    return-object p0
.end method
