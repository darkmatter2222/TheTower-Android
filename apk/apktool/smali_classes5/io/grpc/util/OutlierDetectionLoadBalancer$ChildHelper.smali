.class Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;
.super Lio/grpc/util/ForwardingLoadBalancerHelper;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildHelper"
.end annotation


# instance fields
.field private delegate:Lio/grpc/LoadBalancer$Helper;

.field final synthetic this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$Helper;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;-><init>()V

    .line 202
    new-instance p1, Lio/grpc/util/HealthProducerHelper;

    invoke-direct {p1, p2}, Lio/grpc/util/HealthProducerHelper;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    return-void
.end method


# virtual methods
.method public createSubchannel(Lio/grpc/LoadBalancer$CreateSubchannelArgs;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 4

    .line 214
    new-instance v0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    invoke-direct {v0, v1, p1, v2}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$CreateSubchannelArgs;Lio/grpc/LoadBalancer$Helper;)V

    .line 218
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$CreateSubchannelArgs;->getAddresses()Ljava/util/List;

    move-result-object p1

    .line 219
    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer;->access$200(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    const/4 v2, 0x0

    .line 220
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v3}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    iget-object v1, v1, Lio/grpc/util/OutlierDetectionLoadBalancer;->trackerMap:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {p1}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTrackerMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 222
    invoke-virtual {p1, v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->addSubchannel(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;)Z

    .line 225
    invoke-static {p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;->access$300(Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {v0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionSubchannel;->eject()V

    :cond_0
    return-object v0
.end method

.method protected delegate()Lio/grpc/LoadBalancer$Helper;
    .locals 1

    .line 207
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    return-object v0
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 3

    .line 235
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->delegate:Lio/grpc/LoadBalancer$Helper;

    new-instance v1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

    iget-object v2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$ChildHelper;->this$0:Lio/grpc/util/OutlierDetectionLoadBalancer;

    invoke-direct {v1, v2, p2}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    invoke-virtual {v0, p1, v1}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    return-void
.end method
