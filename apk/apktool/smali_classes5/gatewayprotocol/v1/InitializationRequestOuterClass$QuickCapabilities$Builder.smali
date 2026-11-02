.class public final Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InitializationRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7793
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13300()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$1;)V
    .locals 0

    .line 7786
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7852
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7853
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13700(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V

    return-object p0
.end method

.method public clearIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7900
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7901
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$14000(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V

    return-object p0
.end method

.method public clearPlatformSpecific()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7803
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7804
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13400(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V

    return-object p0
.end method

.method public getAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 1

    .line 7821
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->getAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object v0

    return-object v0
.end method

.method public getIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 1

    .line 7869
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->getIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformSpecificCase()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 1

    .line 7799
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->getPlatformSpecificCase()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAndroid()Z
    .locals 1

    .line 7814
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->hasAndroid()Z

    move-result v0

    return v0
.end method

.method public hasIos()Z
    .locals 1

    .line 7862
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->hasIos()Z

    move-result v0

    return v0
.end method

.method public mergeAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7844
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7845
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13600(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V

    return-object p0
.end method

.method public mergeIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7892
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7893
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13900(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V

    return-object p0
.end method

.method public setAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7836
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7837
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13500(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V

    return-object p0
.end method

.method public setAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7827
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7828
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13500(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V

    return-object p0
.end method

.method public setIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7884
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7885
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13800(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V

    return-object p0
.end method

.method public setIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7875
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->copyOnWrite()V

    .line 7876
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->access$13800(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V

    return-object p0
.end method
