.class public Lio/grpc/util/MultiChildLoadBalancer$Endpoint;
.super Ljava/lang/Object;
.source "MultiChildLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/MultiChildLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Endpoint"
.end annotation


# instance fields
.field final addrs:[Ljava/lang/String;

.field final hashCode:I


# direct methods
.method public constructor <init>(Lio/grpc/EquivalentAddressGroup;)V
    .locals 4

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    const-string v0, "eag"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p1}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    .line 562
    invoke-virtual {p1}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/SocketAddress;

    .line 563
    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    move v0, v3

    goto :goto_0

    .line 565
    :cond_0
    iget-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 567
    iget-object p1, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 584
    :cond_1
    instance-of v1, p1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    if-nez v1, :cond_2

    return v0

    .line 587
    :cond_2
    check-cast p1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;

    .line 588
    iget v1, p1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    iget v2, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    if-ne v1, v2, :cond_4

    iget-object p1, p1, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    array-length v1, p1

    iget-object v2, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    array-length v3, v2

    if-eq v1, v3, :cond_3

    goto :goto_0

    .line 592
    :cond_3
    invoke-static {p1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 572
    iget v0, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 597
    iget-object v0, p0, Lio/grpc/util/MultiChildLoadBalancer$Endpoint;->addrs:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
