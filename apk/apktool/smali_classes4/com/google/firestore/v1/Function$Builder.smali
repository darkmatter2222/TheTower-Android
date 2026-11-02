.class public final Lcom/google/firestore/v1/Function$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Function.java"

# interfaces
.implements Lcom/google/firestore/v1/FunctionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Function;",
        "Lcom/google/firestore/v1/Function$Builder;",
        ">;",
        "Lcom/google/firestore/v1/FunctionOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 482
    invoke-static {}, Lcom/google/firestore/v1/Function;->access$000()Lcom/google/firestore/v1/Function;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Function$1;)V
    .locals 0

    .line 475
    invoke-direct {p0}, Lcom/google/firestore/v1/Function$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllArgs(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Function$Builder;"
        }
    .end annotation

    .line 696
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$700(Lcom/google/firestore/v1/Function;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 684
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/Value;

    .line 683
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Function;->access$600(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Function;->access$600(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$500(Lcom/google/firestore/v1/Function;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public addArgs(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 643
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 644
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$500(Lcom/google/firestore/v1/Function;Lcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public clearArgs()Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 708
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 709
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$800(Lcom/google/firestore/v1/Function;)V

    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$200(Lcom/google/firestore/v1/Function;)V

    return-object p0
.end method

.method public clearOptions()Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 746
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 747
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public containsOptions(Ljava/lang/String;)Z
    .locals 1

    .line 741
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getArgs(I)Lcom/google/firestore/v1/Value;
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Function;->getArgs(I)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1
.end method

.method public getArgsCount()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getArgsCount()I

    move-result v0

    return v0
.end method

.method public getArgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 584
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 585
    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getArgsList()Ljava/util/List;

    move-result-object v0

    .line 584
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 771
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getOptionsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 782
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 783
    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 782
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 800
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 801
    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 802
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getOptionsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 817
    invoke-virtual {v0}, Lcom/google/firestore/v1/Function;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 818
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 819
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAllOptions(Ljava/util/Map;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Function$Builder;"
        }
    .end annotation

    .line 848
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 849
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putOptions(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 834
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 835
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 836
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeArgs(I)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 720
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 721
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$900(Lcom/google/firestore/v1/Function;I)V

    return-object p0
.end method

.method public removeOptions(Ljava/lang/String;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 761
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0}, Lcom/google/firestore/v1/Function;->access$1000(Lcom/google/firestore/v1/Function;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 630
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 631
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    .line 632
    invoke-virtual {p2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/Value;

    .line 631
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Function;->access$400(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setArgs(ILcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Function;->access$400(Lcom/google/firestore/v1/Function;ILcom/google/firestore/v1/Value;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$100(Lcom/google/firestore/v1/Function;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Function$Builder;
    .locals 1

    .line 570
    invoke-virtual {p0}, Lcom/google/firestore/v1/Function$Builder;->copyOnWrite()V

    .line 571
    iget-object v0, p0, Lcom/google/firestore/v1/Function$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Function;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Function;->access$300(Lcom/google/firestore/v1/Function;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
