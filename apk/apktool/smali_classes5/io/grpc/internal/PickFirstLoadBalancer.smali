.class final Lio/grpc/internal/PickFirstLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "PickFirstLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;,
        Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;,
        Lio/grpc/internal/PickFirstLoadBalancer$Picker;
    }
.end annotation


# instance fields
.field private currentState:Lio/grpc/ConnectivityState;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private subchannel:Lio/grpc/LoadBalancer$Subchannel;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 46
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    iput-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    .line 49
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/LoadBalancer$Helper;

    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lio/grpc/internal/PickFirstLoadBalancer;->processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/PickFirstLoadBalancer;)Lio/grpc/LoadBalancer$Helper;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object p0
.end method

.method private processSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 3

    .line 112
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    .line 113
    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_2

    .line 117
    :cond_1
    iget-object v1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Helper;->refreshNameResolution()V

    .line 125
    :cond_2
    iget-object v1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    sget-object v2, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    if-ne v1, v2, :cond_4

    .line 126
    sget-object v1, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_3

    :goto_0
    return-void

    .line 128
    :cond_3
    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_4

    .line 129
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLoadBalancer;->requestConnection()V

    return-void

    .line 135
    :cond_4
    sget-object v1, Lio/grpc/internal/PickFirstLoadBalancer$2;->$SwitchMap$io$grpc$ConnectivityState:[I

    invoke-virtual {v0}, Lio/grpc/ConnectivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 p1, 0x4

    if-ne v1, p1, :cond_5

    .line 148
    new-instance p1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object p2

    invoke-static {p2}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    goto :goto_2

    .line 151
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported state:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_6
    new-instance p2, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    goto :goto_1

    .line 142
    :cond_7
    new-instance p1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    goto :goto_2

    .line 137
    :cond_8
    new-instance p2, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;

    invoke-direct {p2, p0, p1}, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;-><init>(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    :goto_1
    move-object p1, p2

    .line 154
    :goto_2
    invoke-direct {p0, v0, p1}, Lio/grpc/internal/PickFirstLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method

.method private updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 1

    .line 158
    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    .line 159
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;
    .locals 4

    .line 54
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameResolver returned no usable address. addrs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lio/grpc/internal/PickFirstLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    return-object p1

    .line 65
    :cond_0
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getLoadBalancingPolicyConfig()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;

    .line 68
    iget-object v1, p1, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;->shuffleAddressList:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;->shuffleAddressList:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 71
    iget-object v0, p1, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;->randomSeed:Ljava/lang/Long;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Random;

    iget-object p1, p1, Lio/grpc/internal/PickFirstLoadBalancer$PickFirstLoadBalancerConfig;->randomSeed:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 70
    :goto_0
    invoke-static {v1, v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    move-object v0, v1

    .line 75
    :cond_2
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-nez p1, :cond_3

    .line 76
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 77
    invoke-static {}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->newBuilder()Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1, v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$CreateSubchannelArgs$Builder;->build()Lio/grpc/LoadBalancer$CreateSubchannelArgs;

    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object p1

    .line 80
    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancer$1;

    invoke-direct {v0, p0, p1}, Lio/grpc/internal/PickFirstLoadBalancer$1;-><init>(Lio/grpc/internal/PickFirstLoadBalancer;Lio/grpc/LoadBalancer$Subchannel;)V

    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$Subchannel;->start(Lio/grpc/LoadBalancer$SubchannelStateListener;)V

    .line 86
    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 90
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/PickFirstLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 91
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p1, v0}, Lio/grpc/LoadBalancer$Subchannel;->updateAddresses(Ljava/util/List;)V

    .line 96
    :goto_1
    sget-object p1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    return-object p1
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 108
    :cond_0
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    new-instance v1, Lio/grpc/internal/PickFirstLoadBalancer$Picker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    invoke-direct {v1, p1}, Lio/grpc/internal/PickFirstLoadBalancer$Picker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    invoke-direct {p0, v0, v1}, Lio/grpc/internal/PickFirstLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method

.method public requestConnection()V
    .locals 1

    .line 171
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 164
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    :cond_0
    return-void
.end method
