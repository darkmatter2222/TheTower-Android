.class public final Lcom/google/firestore/v1/CommitResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommitResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/CommitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/CommitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/CommitResponse;",
        "Lcom/google/firestore/v1/CommitResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CommitResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 362
    invoke-static {}, Lcom/google/firestore/v1/CommitResponse;->access$000()Lcom/google/firestore/v1/CommitResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/CommitResponse$1;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllWriteResults(Ljava/lang/Iterable;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;)",
            "Lcom/google/firestore/v1/CommitResponse$Builder;"
        }
    .end annotation

    .line 517
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 518
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$400(Lcom/google/firestore/v1/CommitResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addWriteResults(ILcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    .line 502
    invoke-virtual {p2}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/WriteResult;

    .line 501
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->access$300(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    return-object p0
.end method

.method public addWriteResults(ILcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 468
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 469
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->access$300(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    return-object p0
.end method

.method public addWriteResults(Lcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 484
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 485
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$200(Lcom/google/firestore/v1/CommitResponse;Lcom/google/firestore/v1/WriteResult;)V

    return-object p0
.end method

.method public addWriteResults(Lcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 452
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 453
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$200(Lcom/google/firestore/v1/CommitResponse;Lcom/google/firestore/v1/WriteResult;)V

    return-object p0
.end method

.method public clearCommitTime()Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 624
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/CommitResponse;->access$900(Lcom/google/firestore/v1/CommitResponse;)V

    return-object p0
.end method

.method public clearWriteResults()Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/CommitResponse;->access$500(Lcom/google/firestore/v1/CommitResponse;)V

    return-object p0
.end method

.method public getCommitTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->getCommitTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getWriteResults(I)Lcom/google/firestore/v1/WriteResult;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->getWriteResults(I)Lcom/google/firestore/v1/WriteResult;

    move-result-object p1

    return-object p1
.end method

.method public getWriteResultsCount()I
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->getWriteResultsCount()I

    move-result v0

    return v0
.end method

.method public getWriteResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    .line 379
    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->getWriteResultsList()Ljava/util/List;

    move-result-object v0

    .line 378
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCommitTime()Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->hasCommitTime()Z

    move-result v0

    return v0
.end method

.method public mergeCommitTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$800(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public removeWriteResults(I)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 548
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$600(Lcom/google/firestore/v1/CommitResponse;I)V

    return-object p0
.end method

.method public setCommitTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 600
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$700(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setCommitTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$700(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setWriteResults(ILcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 437
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    .line 438
    invoke-virtual {p2}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firestore/v1/WriteResult;

    .line 437
    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->access$100(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    return-object p0
.end method

.method public setWriteResults(ILcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->access$100(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    return-object p0
.end method
