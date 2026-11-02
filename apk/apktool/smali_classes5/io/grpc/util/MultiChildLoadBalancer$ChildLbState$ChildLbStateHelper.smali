.class final Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;
.super Lio/grpc/util/ForwardingLoadBalancerHelper;
.source "MultiChildLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ChildLbStateHelper"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;


# direct methods
.method private constructor <init>(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-direct {p0}, Lio/grpc/util/ForwardingLoadBalancerHelper;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/util/MultiChildLoadBalancer$1;)V
    .locals 0

    .line 518
    invoke-direct {p0, p1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;-><init>(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)V

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/LoadBalancer$Helper;
    .locals 1

    .line 542
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    iget-object v0, v0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->this$0:Lio/grpc/util/MultiChildLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/MultiChildLoadBalancer;->access$800(Lio/grpc/util/MultiChildLoadBalancer;)Lio/grpc/LoadBalancer$Helper;

    move-result-object v0

    return-object v0
.end method

.method public updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V
    .locals 2

    .line 525
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    iget-object v0, v0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->this$0:Lio/grpc/util/MultiChildLoadBalancer;

    invoke-static {v0}, Lio/grpc/util/MultiChildLoadBalancer;->access$600(Lio/grpc/util/MultiChildLoadBalancer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-static {v1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$200(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-static {v0, p1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$402(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityState;

    .line 531
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-static {v0, p2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$302(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;Lio/grpc/LoadBalancer$SubchannelPicker;)Lio/grpc/LoadBalancer$SubchannelPicker;

    .line 532
    iget-object p2, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-static {p2}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$000(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    iget-object p2, p2, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->this$0:Lio/grpc/util/MultiChildLoadBalancer;

    iget-boolean p2, p2, Lio/grpc/util/MultiChildLoadBalancer;->resolvingAddresses:Z

    if-nez p2, :cond_2

    .line 533
    sget-object p2, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    iget-object p1, p1, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->this$0:Lio/grpc/util/MultiChildLoadBalancer;

    invoke-virtual {p1}, Lio/grpc/util/MultiChildLoadBalancer;->reconnectOnIdle()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 534
    iget-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    invoke-static {p1}, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->access$100(Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;)Lio/grpc/util/GracefulSwitchLoadBalancer;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/util/GracefulSwitchLoadBalancer;->requestConnection()V

    .line 536
    :cond_1
    iget-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState$ChildLbStateHelper;->this$1:Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;

    iget-object p1, p1, Lio/grpc/util/MultiChildLoadBalancer$ChildLbState;->this$0:Lio/grpc/util/MultiChildLoadBalancer;

    invoke-virtual {p1}, Lio/grpc/util/MultiChildLoadBalancer;->updateOverallBalancingState()V

    :cond_2
    :goto_0
    return-void
.end method
