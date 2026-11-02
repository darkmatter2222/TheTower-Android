.class final Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "PickFirstLeafLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLeafLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestConnectionPicker"
.end annotation


# instance fields
.field private final connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pickFirstLeafLoadBalancer:Lio/grpc/internal/PickFirstLeafLoadBalancer;

.field final synthetic this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;


# direct methods
.method constructor <init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;Lio/grpc/internal/PickFirstLeafLoadBalancer;)V
    .locals 1

    .line 511
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    .line 509
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 512
    const-string p1, "pickFirstLeafLoadBalancer"

    .line 513
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/PickFirstLeafLoadBalancer;

    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->pickFirstLeafLoadBalancer:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 2

    .line 518
    iget-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->connectionRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 519
    iget-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->this$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-static {p1}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->access$1300(Lio/grpc/internal/PickFirstLeafLoadBalancer;)Lio/grpc/LoadBalancer$Helper;

    move-result-object p1

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Helper;->getSynchronizationContext()Lio/grpc/SynchronizationContext;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker;->pickFirstLeafLoadBalancer:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker$$ExternalSyntheticLambda0;-><init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;)V

    invoke-virtual {p1, v1}, Lio/grpc/SynchronizationContext;->execute(Ljava/lang/Runnable;)V

    .line 521
    :cond_0
    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    return-object p1
.end method
