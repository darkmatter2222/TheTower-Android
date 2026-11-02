.class Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReadyPicker"
.end annotation


# instance fields
.field private final hashCode:I

.field private final index:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final subchannelPickers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 114
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 115
    const-string v0, "index"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 126
    :cond_0
    iput p2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    return-void
.end method

.method private nextIndex()I
    .locals 2

    .line 142
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 143
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 158
    instance-of v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 161
    :cond_0
    check-cast p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    .line 166
    :cond_1
    iget v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    iget v3, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 168
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 169
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method getSubchannelPickers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$SubchannelPicker;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 153
    iget v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->hashCode:I

    return v0
.end method

.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 2

    .line 131
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->nextIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$SubchannelPicker;

    invoke-virtual {v0, p1}, Lio/grpc/LoadBalancer$SubchannelPicker;->pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 136
    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "subchannelPickers"

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->subchannelPickers:Ljava/util/List;

    .line 137
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
