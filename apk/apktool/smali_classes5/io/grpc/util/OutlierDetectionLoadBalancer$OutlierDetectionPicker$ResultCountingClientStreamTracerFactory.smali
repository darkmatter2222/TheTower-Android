.class Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;
.super Lio/grpc/ClientStreamTracer$Factory;
.source "OutlierDetectionLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultCountingClientStreamTracerFactory"
.end annotation


# instance fields
.field private final delegateFactory:Lio/grpc/ClientStreamTracer$Factory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final synthetic this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

.field private final tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;


# direct methods
.method constructor <init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;Lio/grpc/ClientStreamTracer$Factory;)V
    .locals 0
    .param p2    # Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 441
    iput-object p1, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->this$1:Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer$Factory;-><init>()V

    .line 442
    iput-object p2, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    .line 443
    iput-object p3, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->delegateFactory:Lio/grpc/ClientStreamTracer$Factory;

    return-void
.end method

.method static synthetic access$700(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;)Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;
    .locals 0

    .line 433
    iget-object p0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->tracker:Lio/grpc/util/OutlierDetectionLoadBalancer$AddressTracker;

    return-object p0
.end method


# virtual methods
.method public newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 1

    .line 448
    iget-object v0, p0, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;->delegateFactory:Lio/grpc/ClientStreamTracer$Factory;

    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer$Factory;->newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;

    move-result-object p1

    .line 450
    new-instance p2, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;

    invoke-direct {p2, p0, p1}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$1;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;Lio/grpc/ClientStreamTracer;)V

    return-object p2

    .line 463
    :cond_0
    new-instance p1, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$2;

    invoke-direct {p1, p0}, Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory$2;-><init>(Lio/grpc/util/OutlierDetectionLoadBalancer$OutlierDetectionPicker$ResultCountingClientStreamTracerFactory;)V

    return-object p1
.end method
