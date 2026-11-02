.class public final Lcom/google/firestore/v1/StructuredPipeline$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredPipeline.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredPipelineOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredPipeline;",
        "Lcom/google/firestore/v1/StructuredPipeline$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredPipelineOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 328
    invoke-static {}, Lcom/google/firestore/v1/StructuredPipeline;->access$000()Lcom/google/firestore/v1/StructuredPipeline;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredPipeline$1;)V
    .locals 0

    .line 321
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearOptions()Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearPipeline()Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$300(Lcom/google/firestore/v1/StructuredPipeline;)V

    return-object p0
.end method

.method public containsOptions(Ljava/lang/String;)Z
    .locals 1

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
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

    .line 457
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

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

    .line 472
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    .line 473
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 472
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 2

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 494
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    .line 495
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 496
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

    .line 513
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    .line 515
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getOptionsMap()Ljava/util/Map;

    move-result-object v0

    .line 516
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    return-object p1

    .line 517
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getPipeline()Lcom/google/firestore/v1/Pipeline;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->getPipeline()Lcom/google/firestore/v1/Pipeline;

    move-result-object v0

    return-object v0
.end method

.method public hasPipeline()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredPipeline;->hasPipeline()Z

    move-result v0

    return v0
.end method

.method public mergePipeline(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 387
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->access$200(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V

    return-object p0
.end method

.method public putAllOptions(Ljava/util/Map;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredPipeline$Builder;"
        }
    .end annotation

    .line 554
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putOptions(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 537
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeOptions(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 446
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 447
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredPipeline;->access$400(Lcom/google/firestore/v1/StructuredPipeline;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPipeline(Lcom/google/firestore/v1/Pipeline$Builder;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 376
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Pipeline$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Pipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->access$100(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V

    return-object p0
.end method

.method public setPipeline(Lcom/google/firestore/v1/Pipeline;)Lcom/google/firestore/v1/StructuredPipeline$Builder;
    .locals 1

    .line 362
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredPipeline$Builder;->copyOnWrite()V

    .line 363
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredPipeline$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredPipeline;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredPipeline;->access$100(Lcom/google/firestore/v1/StructuredPipeline;Lcom/google/firestore/v1/Pipeline;)V

    return-object p0
.end method
