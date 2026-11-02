.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2105
    invoke-static {}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2400()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V
    .locals 0

    .line 2098
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2151
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2152
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-object p0
.end method

.method public clearTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2198
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2199
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$3000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    return-object p0
.end method

.method public getRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1

    .line 2121
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getRetryPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .locals 1

    .line 2168
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->getTimeoutPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v0

    return-object v0
.end method

.method public hasRetryPolicy()Z
    .locals 1

    .line 2114
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->hasRetryPolicy()Z

    move-result v0

    return v0
.end method

.method public hasTimeoutPolicy()Z
    .locals 1

    .line 2161
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->hasTimeoutPolicy()Z

    move-result v0

    return v0
.end method

.method public mergeRetryPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2144
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2145
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    return-object p0
.end method

.method public mergeTimeoutPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2191
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2192
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    return-object p0
.end method

.method public setRetryPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2136
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2137
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    return-object p0
.end method

.method public setRetryPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2127
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2128
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    return-object p0
.end method

.method public setTimeoutPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2183
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2184
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    return-object p0
.end method

.method public setTimeoutPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;
    .locals 1

    .line 2174
    invoke-virtual {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->copyOnWrite()V

    .line 2175
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    invoke-static {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;->access$2800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    return-object p0
.end method
