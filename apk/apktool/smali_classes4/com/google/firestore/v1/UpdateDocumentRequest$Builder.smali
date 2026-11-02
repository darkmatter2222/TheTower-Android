.class public final Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UpdateDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/UpdateDocumentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/UpdateDocumentRequest;",
        "Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 440
    invoke-static {}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$000()Lcom/google/firestore/v1/UpdateDocumentRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/UpdateDocumentRequest$1;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurrentDocument()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 789
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1200(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$300(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 712
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 713
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$900(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    return-object p0
.end method

.method public clearUpdateMask()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 623
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$600(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    return-object p0
.end method

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getUpdateMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasCurrentDocument()Z

    move-result v0

    return v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasMask()Z
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMask()Z
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasUpdateMask()Z

    move-result v0

    return v0
.end method

.method public mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 777
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 778
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    return-object p0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$200(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    return-object p0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 698
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 699
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$800(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    return-object p0
.end method

.method public mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 607
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$500(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 764
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 765
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1000(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1000(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 492
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$700(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 667
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$700(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 588
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$400(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 569
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 570
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$400(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    return-object p0
.end method
