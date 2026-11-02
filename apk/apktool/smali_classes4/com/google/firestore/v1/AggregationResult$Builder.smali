.class public final Lcom/google/firestore/v1/AggregationResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AggregationResult.java"

# interfaces
.implements Lcom/google/firestore/v1/AggregationResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/AggregationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/AggregationResult;",
        "Lcom/google/firestore/v1/AggregationResult$Builder;",
        ">;",
        "Lcom/google/firestore/v1/AggregationResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 266
    invoke-static {}, Lcom/google/firestore/v1/AggregationResult;->access$000()Lcom/google/firestore/v1/AggregationResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/AggregationResult$1;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAggregateFields()Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 297
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public containsAggregateFields(Ljava/lang/String;)Z
    .locals 1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAggregateFields()Ljava/util/Map;
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

    .line 326
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsCount()I
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAggregateFieldsMap()Ljava/util/Map;
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

    .line 342
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    .line 343
    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 342
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    .line 366
    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 367
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

.method public getAggregateFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    .line 387
    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 388
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 389
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public putAggregateFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 409
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 410
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putAllAggregateFields(Ljava/util/Map;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/AggregationResult$Builder;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public removeAggregateFields(Ljava/lang/String;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1

    .line 315
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 317
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
