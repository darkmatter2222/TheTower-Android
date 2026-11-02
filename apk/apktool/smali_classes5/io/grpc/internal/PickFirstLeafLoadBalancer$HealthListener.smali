.class final Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;
.super Ljava/lang/Object;
.source "PickFirstLeafLoadBalancer.java"

# interfaces
.implements Lio/grpc/LoadBalancer$SubchannelStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLeafLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthListener"
.end annotation


# instance fields
.field private healthStateInfo:Lio/grpc/ConnectivityStateInfo;

.field private subchannelData:Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

.field final synthetic this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;


# direct methods
.method private constructor <init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    sget-object p1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {p1}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->healthStateInfo:Lio/grpc/ConnectivityStateInfo;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer$1;)V
    .locals 0

    .line 457
    invoke-direct {p0, p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;)V

    return-void
.end method

.method static synthetic access$500(Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;)Lio/grpc/ConnectivityStateInfo;
    .locals 0

    .line 457
    iget-object p0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->healthStateInfo:Lio/grpc/ConnectivityStateInfo;

    return-object p0
.end method

.method static synthetic access$502(Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;Lio/grpc/ConnectivityStateInfo;)Lio/grpc/ConnectivityStateInfo;
    .locals 0

    .line 457
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->healthStateInfo:Lio/grpc/ConnectivityStateInfo;

    return-object p1
.end method

.method static synthetic access$902(Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;
    .locals 0

    .line 457
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->subchannelData:Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    return-object p1
.end method


# virtual methods
.method public onSubchannelState(Lio/grpc/ConnectivityStateInfo;)V
    .locals 4

    .line 463
    invoke-static {}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$1000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->subchannelData:Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    .line 464
    invoke-static {v2}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$300(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 463
    const-string v3, "Received health status {0} for subchannel {1}"

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->healthStateInfo:Lio/grpc/ConnectivityStateInfo;

    .line 466
    iget-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$700(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    .line 467
    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$1100(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-static {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$700(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->getCurrentAddress()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;->access$400(Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 468
    iget-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$HealthListener;->subchannelData:Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;

    invoke-static {p1, v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$1200(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer$SubchannelData;)V

    :cond_0
    return-void
.end method
