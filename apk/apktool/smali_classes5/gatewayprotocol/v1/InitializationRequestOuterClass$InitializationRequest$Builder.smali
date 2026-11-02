.class public final Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "InitializationRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 4638
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$5900()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$1;)V
    .locals 0

    .line 4631
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllModuleInitParams(Ljava/lang/Iterable;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;"
        }
    .end annotation

    .line 6059
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6060
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addModuleInitParams(ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6045
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6046
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 6047
    invoke-virtual {p2}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    .line 6046
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10900(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public addModuleInitParams(ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6019
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6020
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10900(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public addModuleInitParams(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6032
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6033
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10800(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public addModuleInitParams(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6006
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6007
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10800(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public clearAnalyticsUserId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5120
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5121
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7800(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearAuid()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5044
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5045
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7600(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearAuidString()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5320
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5321
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8600(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearCache()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4905
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4906
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7100(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearClientInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4684
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4685
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6200(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5208
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5209
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8200(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearExternalUserIdentifier()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5557
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5558
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9500(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearExtras()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5598
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5599
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearGoogleAppId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5918
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5919
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10500(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearIdfi()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4790
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4791
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6600(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearInstallReferrer()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5852
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5853
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10300(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearInstallSource()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6164
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6165
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11400(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearIsFirstInit()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5254
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5255
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8400(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearLegacyFlowUserConsent()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4976
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4977
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7300(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearModuleInitParams()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6071
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6072
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11100(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearPrivacy()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4736
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4737
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6400(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearQuickCapabilities()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6265
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6266
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11800(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearSessionId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4845
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4846
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6900(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearTcf()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6317
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6318
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$12000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearUadsInitBlob()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5387
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5388
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8900(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearUnityBuildGuid()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5766
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5767
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9900(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearUnityInstallationId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5439
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5440
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9100(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public clearUnityMegaSessionId()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5491
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5492
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9300(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-object p0
.end method

.method public containsExtras(Ljava/lang/String;)Z
    .locals 1

    .line 5593
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5594
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnalyticsUserId()Ljava/lang/String;
    .locals 1

    .line 5075
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getAnalyticsUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnalyticsUserIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5090
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getAnalyticsUserIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAuid()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5019
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getAuid()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAuidString()Ljava/lang/String;
    .locals 1

    .line 5281
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getAuidString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuidStringBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5294
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getAuidStringBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4876
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getCache()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClientInfo()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;
    .locals 1

    .line 4654
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getClientInfo()Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;
    .locals 1

    .line 5162
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getDeviceInfo()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUserIdentifier()Ljava/lang/String;
    .locals 1

    .line 5518
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getExternalUserIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUserIdentifierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5531
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getExternalUserIdentifierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5623
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasCount()I
    .locals 1

    .line 5580
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getExtrasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5634
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 5635
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    .line 5634
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExtrasOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5651
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5652
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 5653
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    .line 5654
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getExtrasOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 5667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5668
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 5669
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getExtrasMap()Ljava/util/Map;

    move-result-object v0

    .line 5670
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5673
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 5671
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getGoogleAppId()Ljava/lang/String;
    .locals 1

    .line 5879
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5892
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdfi()Ljava/lang/String;
    .locals 1

    .line 4751
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getIdfi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdfiBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4764
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getIdfiBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReferrer()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;
    .locals 1

    .line 5806
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getInstallReferrer()Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;

    move-result-object v0

    return-object v0
.end method

.method public getInstallSource()Ljava/lang/String;
    .locals 1

    .line 6116
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getInstallSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallSourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6132
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getInstallSourceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFirstInit()Z
    .locals 1

    .line 5225
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getIsFirstInit()Z

    move-result v0

    return v0
.end method

.method public getLegacyFlowUserConsent()Ljava/lang/String;
    .locals 1

    .line 4934
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getLegacyFlowUserConsent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegacyFlowUserConsentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4948
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getLegacyFlowUserConsentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getModuleInitParams(I)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1

    .line 5969
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getModuleInitParams(I)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object p1

    return-object p1
.end method

.method public getModuleInitParamsCount()I
    .locals 1

    .line 5959
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getModuleInitParamsCount()I

    move-result v0

    return v0
.end method

.method public getModuleInitParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;"
        }
    .end annotation

    .line 5947
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 5948
    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getModuleInitParamsList()Ljava/util/List;

    move-result-object v0

    .line 5947
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPrivacy()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4711
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getPrivacy()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuickCapabilities()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1

    .line 6211
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getQuickCapabilities()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4820
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTcf()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6292
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getTcf()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUadsInitBlob()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5362
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getUadsInitBlob()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnityBuildGuid()Ljava/lang/String;
    .locals 1

    .line 5727
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getUnityBuildGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnityBuildGuidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5740
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getUnityBuildGuidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnityInstallationId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5414
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getUnityInstallationId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnityMegaSessionId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5466
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getUnityMegaSessionId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAnalyticsUserId()Z
    .locals 1

    .line 5061
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasAnalyticsUserId()Z

    move-result v0

    return v0
.end method

.method public hasAuid()Z
    .locals 1

    .line 5007
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasAuid()Z

    move-result v0

    return v0
.end method

.method public hasAuidString()Z
    .locals 1

    .line 5269
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasAuidString()Z

    move-result v0

    return v0
.end method

.method public hasCache()Z
    .locals 1

    .line 4862
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasCache()Z

    move-result v0

    return v0
.end method

.method public hasClientInfo()Z
    .locals 1

    .line 4647
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasClientInfo()Z

    move-result v0

    return v0
.end method

.method public hasDeviceInfo()Z
    .locals 1

    .line 5151
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasDeviceInfo()Z

    move-result v0

    return v0
.end method

.method public hasExternalUserIdentifier()Z
    .locals 1

    .line 5506
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasExternalUserIdentifier()Z

    move-result v0

    return v0
.end method

.method public hasGoogleAppId()Z
    .locals 1

    .line 5867
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasGoogleAppId()Z

    move-result v0

    return v0
.end method

.method public hasInstallReferrer()Z
    .locals 1

    .line 5795
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasInstallReferrer()Z

    move-result v0

    return v0
.end method

.method public hasInstallSource()Z
    .locals 1

    .line 6101
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasInstallSource()Z

    move-result v0

    return v0
.end method

.method public hasLegacyFlowUserConsent()Z
    .locals 1

    .line 4921
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasLegacyFlowUserConsent()Z

    move-result v0

    return v0
.end method

.method public hasPrivacy()Z
    .locals 1

    .line 4699
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasPrivacy()Z

    move-result v0

    return v0
.end method

.method public hasQuickCapabilities()Z
    .locals 1

    .line 6198
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasQuickCapabilities()Z

    move-result v0

    return v0
.end method

.method public hasTcf()Z
    .locals 1

    .line 6280
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasTcf()Z

    move-result v0

    return v0
.end method

.method public hasUadsInitBlob()Z
    .locals 1

    .line 5350
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasUadsInitBlob()Z

    move-result v0

    return v0
.end method

.method public hasUnityBuildGuid()Z
    .locals 1

    .line 5715
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasUnityBuildGuid()Z

    move-result v0

    return v0
.end method

.method public hasUnityInstallationId()Z
    .locals 1

    .line 5402
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasUnityInstallationId()Z

    move-result v0

    return v0
.end method

.method public hasUnityMegaSessionId()Z
    .locals 1

    .line 5454
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->hasUnityMegaSessionId()Z

    move-result v0

    return v0
.end method

.method public mergeClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4677
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4678
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6100(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public mergeDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5197
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5198
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8100(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V

    return-object p0
.end method

.method public mergeInstallReferrer(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5841
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5842
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10200(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)V

    return-object p0
.end method

.method public mergeQuickCapabilities(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6252
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6253
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V

    return-object p0
.end method

.method public putAllExtras(Ljava/util/Map;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;"
        }
    .end annotation

    .line 5700
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5701
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putExtras(Ljava/lang/String;Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5686
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5687
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5688
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeExtras(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5612
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5613
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5614
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeModuleInitParams(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6083
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6084
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11200(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;I)V

    return-object p0
.end method

.method public setAnalyticsUserId(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5105
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5106
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAnalyticsUserIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5137
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5138
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7900(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAuid(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5031
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5032
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7500(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setAuidString(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5307
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5308
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8500(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAuidStringBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5335
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5336
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCache(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4890
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4891
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4669
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4670
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public setClientInfo(Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4660
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4661
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/ClientInfoOuterClass$ClientInfo;)V

    return-object p0
.end method

.method public setDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5185
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5186
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V

    return-object p0
.end method

.method public setDeviceInfo(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5172
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5173
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationDeviceInfo;)V

    return-object p0
.end method

.method public setExternalUserIdentifier(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5544
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5545
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9400(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExternalUserIdentifierBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5572
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5573
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9600(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGoogleAppId(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5905
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5906
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10400(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGoogleAppIdBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5933
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5934
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10600(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIdfi(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4777
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4778
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6500(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIdfiBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4805
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4806
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setInstallReferrer(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5829
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5830
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10100(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)V

    return-object p0
.end method

.method public setInstallReferrer(Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5816
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5817
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10100(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$InstallReferrer;)V

    return-object p0
.end method

.method public setInstallSource(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6148
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6149
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11300(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInstallSourceBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6182
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6183
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11500(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIsFirstInit(Z)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5239
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5240
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8300(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Z)V

    return-object p0
.end method

.method public setLegacyFlowUserConsent(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4962
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4963
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7200(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setLegacyFlowUserConsentBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4992
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4993
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$7400(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setModuleInitParams(ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5993
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5994
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 5995
    invoke-virtual {p2}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    .line 5994
    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public setModuleInitParams(ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5980
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5981
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10700(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;ILgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V

    return-object p0
.end method

.method public setPrivacy(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4723
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4724
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6300(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setQuickCapabilities(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6238
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6239
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11600(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V

    return-object p0
.end method

.method public setQuickCapabilities(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6223
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6224
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11600(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V

    return-object p0
.end method

.method public setSessionId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 4832
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 4833
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$6800(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTcf(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 6304
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 6305
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$11900(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUadsInitBlob(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5374
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5375
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$8800(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUnityBuildGuid(Ljava/lang/String;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5753
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5754
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9800(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUnityBuildGuidBytes(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5781
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5782
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$10000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUnityInstallationId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5426
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5427
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9000(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setUnityMegaSessionId(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;
    .locals 1

    .line 5478
    invoke-virtual {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->copyOnWrite()V

    .line 5479
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->access$9200(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
