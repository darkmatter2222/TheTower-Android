.class public abstract Lio/grpc/util/MultiChildLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "MultiChildLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;,
        Lio/grpc/util/MultiChildLoadBalancer$Endpoint;,
        Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final childLbStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation
.end field

.field protected currentConnectivityState:Lio/grpc/ConnectivityState;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field protected final pickFirstLbProvider:Lio/grpc/LoadBalancerProvider;

.field protected resolvingAddresses:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lio/grpc/util/MultiChildLoadBalancer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    .line 64
    new-instance v0, Lio/grpc/internal/PickFirstLoadBalancerProvider;

    invoke-direct {v0}, Lio/grpc/internal/PickFirstLoadBalancerProvider;-><init>()V

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->pickFirstLbProvider:Lio/grpc/LoadBalancerProvider;

    .line 70
    const-string v0, "helper"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/LoadBalancer$Helper;

    iput-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 71
    sget-object p1, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v1, "Created"

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lio/grpc/util/MultiChildLoadBalancer;)Ljava/util/Map;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/logging/Logger;
    .locals 1

    .line 56
    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$800(Lio/grpc/util/MultiChildLoadBalancer;)Lio/grpc/LoadBalancer$Helper;
    .locals 0

    .line 56
    iget-object p0, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object p0
.end method

.method protected static aggregateState(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;
    .locals 1
    .param p0    # Lio/grpc/ConnectivityState;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    return-object p1

    .line 330
    :cond_0
    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_6

    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_1

    goto :goto_2

    .line 333
    :cond_1
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_5

    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 336
    :cond_2
    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-eq p0, v0, :cond_4

    sget-object v0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return-object p0

    .line 337
    :cond_4
    :goto_0
    sget-object p0, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    return-object p0

    .line 334
    :cond_5
    :goto_1
    sget-object p0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    return-object p0

    .line 331
    :cond_6
    :goto_2
    sget-object p0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    return-object p0
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/Status;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 153
    :try_start_0
    iput-boolean v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    .line 157
    invoke-virtual {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;->acceptResolvedAddressesInternal(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;

    move-result-object p1

    .line 158
    iget-object v0, p1, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->status:Lio/grpc/Status;

    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object p1, p1, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->status:Lio/grpc/Status;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    iput-boolean v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    return-object p1

    .line 163
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->updateOverallBalancingState()V

    .line 166
    iget-object v0, p1, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->removedChildren:Ljava/util/List;

    invoke-virtual {p0, v0}, Lio/grpc/util/MultiChildLoadBalancer;->shutdownRemoved(Ljava/util/List;)V

    .line 167
    iget-object p1, p1, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;->status:Lio/grpc/Status;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    iput-boolean v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    .line 170
    throw p1
.end method

.method protected acceptResolvedAddressesInternal(Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;
    .locals 7

    .line 215
    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Received resolution result: {0}"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;->createChildLbMap(Lio/grpc/LoadBalancer$ResolvedAddresses;)Ljava/util/Map;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v0, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NameResolver returned no usable address. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    .line 222
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;-><init>(Lio/grpc/Status;Ljava/util/List;)V

    return-object v0

    .line 226
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 228
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-virtual {v4}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getPolicyProvider()Lio/grpc/LoadBalancerProvider;

    move-result-object v4

    .line 229
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-virtual {v5}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getConfig()Ljava/lang/Object;

    move-result-object v5

    .line 230
    iget-object v6, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 231
    iget-object v4, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 234
    :cond_2
    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 235
    invoke-virtual {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->isDeactivated()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->reactivateChildOnReuse()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 236
    invoke-virtual {v2, v4}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->reactivate(Lio/grpc/LoadBalancerProvider;)V

    .line 240
    :cond_3
    :goto_1
    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 241
    invoke-virtual {p0, v3, p1, v5}, Lio/grpc/util/MultiChildLoadBalancer;->getChildAddresses(Ljava/lang/Object;Lio/grpc/LoadBalancer$ResolvedAddresses;Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object v4

    .line 242
    iget-object v5, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-virtual {v3, v4}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->setResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    .line 243
    invoke-static {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$000(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    invoke-static {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$100(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/util/GracefulSwitchLoadBalancer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lio/grpc/util/GracefulSwitchLoadBalancer;->handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V

    goto :goto_0

    .line 248
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 251
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 252
    iget-object v3, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 253
    invoke-virtual {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->deactivate()V

    .line 254
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 258
    :cond_6
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    invoke-direct {v0, v1, p1}, Lio/grpc/util/MultiChildLoadBalancer$AcceptResolvedAddressRetVal;-><init>(Lio/grpc/Status;Ljava/util/List;)V

    return-object v0
.end method

.method protected createChildLbMap(Lio/grpc/LoadBalancer$ResolvedAddresses;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer$ResolvedAddresses;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    .line 127
    new-instance v3, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    invoke-direct {v3, v2}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    .line 128
    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->getInitialPicker()Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v4

    invoke-virtual {p0, v3, v2, v4, p1}, Lio/grpc/util/MultiChildLoadBalancer;->createChildLbState(Ljava/lang/Object;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    move-result-object v2

    .line 132
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected createChildLbState(Ljava/lang/Object;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;Lio/grpc/LoadBalancer$ResolvedAddresses;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .locals 6

    .line 144
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    iget-object v3, p0, Lio/grpc/util/MultiChildLoadBalancer;->pickFirstLbProvider:Lio/grpc/LoadBalancerProvider;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;-><init>(Lio/grpc/util/MultiChildLoadBalancer;Ljava/lang/Object;Lio/grpc/LoadBalancerProvider;Ljava/lang/Object;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-object v0
.end method

.method protected getChildAddresses(Ljava/lang/Object;Lio/grpc/LoadBalancer$ResolvedAddresses;Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses;
    .locals 4

    .line 183
    instance-of v0, p1, Lio/grpc/EquivalentAddressGroup;

    if-eqz v0, :cond_0

    .line 184
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    move-object v1, p1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v0, v1}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    goto :goto_0

    .line 186
    :cond_0
    instance-of v0, p1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    const-string v1, "key is wrong type"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 187
    move-object v0, p1

    check-cast v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    .line 192
    :goto_0
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    .line 193
    new-instance v3, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    invoke-direct {v3, v2}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    invoke-virtual {v0, v3}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 199
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " no longer present in load balancer children"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$ResolvedAddresses;->toBuilder()Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    .line 202
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAddresses(Ljava/util/List;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    .line 203
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object p2

    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->IS_PETIOLE_POLICY:Lio/grpc/Attributes$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setAttributes(Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1, p3}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->setLoadBalancingPolicyConfig(Ljava/lang/Object;)Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses$Builder;->build()Lio/grpc/LoadBalancer$ResolvedAddresses;

    move-result-object p1

    return-object p1
.end method

.method protected getChildLbState(Ljava/lang/Object;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 106
    :cond_0
    instance-of v0, p1, Lio/grpc/EquivalentAddressGroup;

    if-eqz v0, :cond_1

    .line 107
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    check-cast p1, Lio/grpc/EquivalentAddressGroup;

    invoke-direct {v0, p1}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    move-object p1, v0

    .line 109
    :cond_1
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    return-object p1
.end method

.method protected getChildLbStateEag(Lio/grpc/EquivalentAddressGroup;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
    .locals 1

    .line 117
    new-instance v0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    invoke-direct {v0, p1}, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;-><init>(Lio/grpc/EquivalentAddressGroup;)V

    invoke-virtual {p0, v0}, Lio/grpc/util/MultiChildLoadBalancer;->getChildLbState(Ljava/lang/Object;)Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    move-result-object p1

    return-object p1
.end method

.method protected getChildLbStates()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected getErrorPicker(Lio/grpc/Status;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 1

    .line 82
    new-instance v0, Lio/grpc/LoadBalancer$FixedResultPicker;

    invoke-static {p1}, Lio/grpc/LoadBalancer$PickResult;->withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/grpc/LoadBalancer$FixedResultPicker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    return-object v0
.end method

.method protected getHelper()Lio/grpc/LoadBalancer$Helper;
    .locals 1

    .line 343
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method protected getImmutableChildMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialPicker()Lio/grpc/LoadBalancer$SubchannelPicker;
    .locals 2

    .line 78
    new-instance v0, Lio/grpc/LoadBalancer$FixedResultPicker;

    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/grpc/LoadBalancer$FixedResultPicker;-><init>(Lio/grpc/LoadBalancer$PickResult;)V

    return-object v0
.end method

.method protected getReadyChildren()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;"
        }
    .end annotation

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->getChildLbStates()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 356
    invoke-virtual {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->isDeactivated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->getCurrentState()Lio/grpc/ConnectivityState;

    move-result-object v3

    sget-object v4, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v3, v4, :cond_0

    .line 357
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected abstract getSubchannelPicker(Ljava/util/Map;)Lio/grpc/LoadBalancer$SubchannelPicker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;)",
            "Lio/grpc/LoadBalancer$SubchannelPicker;"
        }
    .end annotation
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 2

    .line 271
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->currentConnectivityState:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    sget-object v1, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    invoke-virtual {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer;->getErrorPicker(Lio/grpc/Status;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    :cond_0
    return-void
.end method

.method protected handleNameResolutionError(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/Status;)V
    .locals 0

    .line 277
    invoke-static {p1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$100(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/util/GracefulSwitchLoadBalancer;

    move-result-object p1

    invoke-virtual {p1, p2}, Lio/grpc/util/GracefulSwitchLoadBalancer;->handleNameResolutionError(Lio/grpc/Status;)V

    return-void
.end method

.method protected reactivateChildOnReuse()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected reconnectOnIdle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected removeChild(Ljava/lang/Object;)V
    .locals 1

    .line 347
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 300
    sget-object v0, Lio/grpc/util/MultiChildLoadBalancer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Shutdown"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 302
    invoke-virtual {v1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->shutdown()V

    goto :goto_0

    .line 304
    :cond_0
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer;->childLbStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected shutdownRemoved(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;",
            ">;)V"
        }
    .end annotation

    .line 264
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 265
    invoke-virtual {v0}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->shutdown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateOverallBalancingState()V
    .locals 6

    .line 309
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 310
    invoke-virtual {p0}, Lio/grpc/util/MultiChildLoadBalancer;->getChildLbStates()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    .line 311
    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$000(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$200(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$300(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {v3}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$400(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/ConnectivityState;

    move-result-object v3

    invoke-static {v2, v3}, Lio/grpc/util/MultiChildLoadBalancer;->aggregateState(Lio/grpc/ConnectivityState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 319
    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {p0, v0}, Lio/grpc/util/MultiChildLoadBalancer;->getSubchannelPicker(Ljava/util/Map;)Lio/grpc/LoadBalancer$SubchannelPicker;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 320
    iput-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer;->currentConnectivityState:Lio/grpc/ConnectivityState;

    :cond_2
    return-void
.end method
