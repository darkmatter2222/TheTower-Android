.class public final Lcom/google/firestore/v1/StructuredQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery;",
        "Lcom/google/firestore/v1/StructuredQuery$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQueryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6723
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->access$7100()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0

    .line 6716
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFrom(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredQuery$Builder;"
        }
    .end annotation

    .line 6943
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6944
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7800(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllOrderBy(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredQuery$Builder;"
        }
    .end annotation

    .line 7354
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7355
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8700(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6929
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6930
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6931
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 6930
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$7700(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-object p0
.end method

.method public addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6903
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6904
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$7700(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-object p0
.end method

.method public addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6916
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6917
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7600(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-object p0
.end method

.method public addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6890
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6891
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7600(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-object p0
.end method

.method public addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7321
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7322
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 7323
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 7322
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$8600(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-object p0
.end method

.method public addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7257
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7258
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$8600(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-object p0
.end method

.method public addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7289
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7290
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8500(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Order;)V

    return-object p0
.end method

.method public addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7225
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7226
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8500(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Order;)V

    return-object p0
.end method

.method public clearEndAt()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7786
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7787
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$9500(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public clearFrom()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6955
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6956
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$7900(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public clearLimit()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7954
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7955
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$10000(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public clearOffset()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7847
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7848
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$9700(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public clearOrderBy()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7385
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7386
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$8800(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public clearSelect()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6817
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6818
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$7400(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public clearStartAt()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7667
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7668
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$9200(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public clearWhere()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7038
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7039
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$8300(Lcom/google/firestore/v1/StructuredQuery;)V

    return-object p0
.end method

.method public getEndAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 7708
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getEndAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1

    .line 6853
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    move-result-object p1

    return-object p1
.end method

.method public getFromCount()I
    .locals 1

    .line 6843
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getFromCount()I

    move-result v0

    return v0
.end method

.method public getFromList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation

    .line 6831
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6832
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getFromList()Ljava/util/List;

    move-result-object v0

    .line 6831
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 7884
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getLimit()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 7808
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getOffset()I

    move-result v0

    return v0
.end method

.method public getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1

    .line 7131
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;

    move-result-object p1

    return-object p1
.end method

.method public getOrderByCount()I
    .locals 1

    .line 7102
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getOrderByCount()I

    move-result v0

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation

    .line 7071
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 7072
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getOrderByList()Ljava/util/List;

    move-result-object v0

    .line 7071
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 6755
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getSelect()Lcom/google/firestore/v1/StructuredQuery$Projection;

    move-result-object v0

    return-object v0
.end method

.method public getStartAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 7501
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getStartAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 6992
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    return-object v0
.end method

.method public hasEndAt()Z
    .locals 1

    .line 7689
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasEndAt()Z

    move-result v0

    return v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 7867
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasLimit()Z

    move-result v0

    return v0
.end method

.method public hasSelect()Z
    .locals 1

    .line 6740
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasSelect()Z

    move-result v0

    return v0
.end method

.method public hasStartAt()Z
    .locals 1

    .line 7460
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasStartAt()Z

    move-result v0

    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .line 6981
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasWhere()Z

    move-result v0

    return v0
.end method

.method public mergeEndAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7767
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7768
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9400(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    return-object p0
.end method

.method public mergeLimit(Lcom/google/protobuf/Int32Value;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7937
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7938
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9900(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V

    return-object p0
.end method

.method public mergeSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6802
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6803
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    return-object p0
.end method

.method public mergeStartAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7626
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7627
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    return-object p0
.end method

.method public mergeWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7027
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7028
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-object p0
.end method

.method public removeFrom(I)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6967
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6968
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8000(Lcom/google/firestore/v1/StructuredQuery;I)V

    return-object p0
.end method

.method public removeOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7416
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7417
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8900(Lcom/google/firestore/v1/StructuredQuery;I)V

    return-object p0
.end method

.method public setEndAt(Lcom/google/firestore/v1/Cursor$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7747
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7748
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Cursor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    return-object p0
.end method

.method public setEndAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7726
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7727
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    return-object p0
.end method

.method public setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6877
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6878
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6879
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 6878
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$7500(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-object p0
.end method

.method public setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6864
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6865
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$7500(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    return-object p0
.end method

.method public setLimit(Lcom/google/protobuf/Int32Value$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7919
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7920
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/protobuf/Int32Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Int32Value;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9800(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V

    return-object p0
.end method

.method public setLimit(Lcom/google/protobuf/Int32Value;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7900
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7901
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9800(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V

    return-object p0
.end method

.method public setOffset(I)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7827
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7828
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9600(Lcom/google/firestore/v1/StructuredQuery;I)V

    return-object p0
.end method

.method public setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7193
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7194
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 7195
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 7194
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$8400(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-object p0
.end method

.method public setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7161
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7162
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$8400(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    return-object p0
.end method

.method public setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6786
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6787
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    return-object p0
.end method

.method public setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6769
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6770
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    return-object p0
.end method

.method public setStartAt(Lcom/google/firestore/v1/Cursor$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7584
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7585
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Cursor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9000(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    return-object p0
.end method

.method public setStartAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7541
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7542
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9000(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    return-object p0
.end method

.method public setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7015
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7016
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-object p0
.end method

.method public setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 7002
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 7003
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    return-object p0
.end method
