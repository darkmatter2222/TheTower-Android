.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettingsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettingsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 13000
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->access$22700()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V
    .locals 0

    .line 12993
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCleanCache()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;
    .locals 1

    .line 13119
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->copyOnWrite()V

    .line 13120
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->access$23300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V

    return-object p0
.end method

.method public clearEnableTracing()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;
    .locals 1

    .line 13079
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->copyOnWrite()V

    .line 13080
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->access$23100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V

    return-object p0
.end method

.method public clearWebviewInspectable()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;
    .locals 1

    .line 13039
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->copyOnWrite()V

    .line 13040
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->access$22900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;)V

    return-object p0
.end method

.method public getCleanCache()Z
    .locals 1

    .line 13094
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->getCleanCache()Z

    move-result v0

    return v0
.end method

.method public getEnableTracing()Z
    .locals 1

    .line 13054
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->getEnableTracing()Z

    move-result v0

    return v0
.end method

.method public getWebviewInspectable()Z
    .locals 1

    .line 13014
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->getWebviewInspectable()Z

    move-result v0

    return v0
.end method

.method public setCleanCache(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;
    .locals 1

    .line 13106
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->copyOnWrite()V

    .line 13107
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->access$23200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;Z)V

    return-object p0
.end method

.method public setEnableTracing(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;
    .locals 1

    .line 13066
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->copyOnWrite()V

    .line 13067
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->access$23000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;Z)V

    return-object p0
.end method

.method public setWebviewInspectable(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;
    .locals 1

    .line 13026
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->copyOnWrite()V

    .line 13027
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;->access$22800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DebugSettings;Z)V

    return-object p0
.end method
