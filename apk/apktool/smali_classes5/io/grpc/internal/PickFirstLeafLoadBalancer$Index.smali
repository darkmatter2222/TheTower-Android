.class final Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;
.super Ljava/lang/Object;
.source "PickFirstLeafLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLeafLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Index"
.end annotation


# instance fields
.field private addressGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation
.end field

.field private addressIndex:I

.field private groupIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurrentAddress()Ljava/net/SocketAddress;
    .locals 2

    .line 574
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    iget v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/SocketAddress;

    return-object v0

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Index is past the end of the address group list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentEagAttributes()Lio/grpc/Attributes;
    .locals 2

    .line 581
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    iget v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    return-object v0

    .line 582
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Index is off the end of the address group list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public increment()Z
    .locals 4

    .line 553
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 557
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    iget v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    .line 558
    iget v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressIndex:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressIndex:I

    .line 559
    invoke-virtual {v0}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_2

    .line 560
    iget v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    .line 561
    iput v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressIndex:I

    .line 562
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    return v3
.end method

.method public isAtBeginning()Z
    .locals 1

    .line 545
    iget v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    if-nez v0, :cond_0

    iget v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValid()Z
    .locals 2

    .line 541
    iget v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    iget-object v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 569
    iput v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    .line 570
    iput v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressIndex:I

    return-void
.end method

.method public seekTo(Ljava/net/SocketAddress;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 599
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 600
    iget-object v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/EquivalentAddressGroup;

    .line 601
    invoke-virtual {v2}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    :cond_0
    iput v1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->groupIndex:I

    .line 606
    iput v2, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressIndex:I

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 613
    iget-object v0, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateGroups(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 591
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->addressGroups:Ljava/util/List;

    .line 592
    invoke-virtual {p0}, Lio/grpc/internal/PickFirstLeafLoadBalancer$Index;->reset()V

    return-void
.end method
