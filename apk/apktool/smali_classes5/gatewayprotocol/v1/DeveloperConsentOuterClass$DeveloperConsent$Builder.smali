.class public final Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;",
        ">;",
        "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1299
    invoke-static {}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1100()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$1;)V
    .locals 0

    .line 1292
    invoke-direct {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;)",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;"
        }
    .end annotation

    .line 1424
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1425
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1500(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOptions(ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1410
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1411
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    .line 1412
    invoke-virtual {p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    .line 1411
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1400(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-object p0
.end method

.method public addOptions(ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1384
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1385
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1400(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-object p0
.end method

.method public addOptions(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1397
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1398
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-virtual {p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1300(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-object p0
.end method

.method public addOptions(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1371
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1372
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1300(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-object p0
.end method

.method public clearOptions()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1436
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1437
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1600(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;)V

    return-object p0
.end method

.method public getOptions(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1

    .line 1334
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->getOptions(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    move-result-object p1

    return-object p1
.end method

.method public getOptionsCount()I
    .locals 1

    .line 1324
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation

    .line 1312
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    .line 1313
    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 1312
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOptions(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1448
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1449
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1700(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;I)V

    return-object p0
.end method

.method public setOptions(ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1358
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    .line 1360
    invoke-virtual {p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    .line 1359
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1200(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-object p0
.end method

.method public setOptions(ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;
    .locals 1

    .line 1345
    invoke-virtual {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->copyOnWrite()V

    .line 1346
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;->access$1200(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsent;ILgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V

    return-object p0
.end method
