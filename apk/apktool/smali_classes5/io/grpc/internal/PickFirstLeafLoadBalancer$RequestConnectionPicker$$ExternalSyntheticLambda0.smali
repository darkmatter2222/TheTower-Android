.class public final synthetic Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;


# direct methods
.method public synthetic constructor <init>(Lio/grpc/internal/PickFirstLeafLoadBalancer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker$$ExternalSyntheticLambda0;->f$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$RequestConnectionPicker$$ExternalSyntheticLambda0;->f$0:Lio/grpc/internal/PickFirstLeafLoadBalancer;

    invoke-virtual {v0}, Lio/grpc/internal/PickFirstLeafLoadBalancer;->requestConnection()V

    return-void
.end method
