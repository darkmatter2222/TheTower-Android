.class public final Lcom/google/firebase/firestore/proto/NoDocument$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NoDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/NoDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/NoDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/NoDocument;",
        "Lcom/google/firebase/firestore/proto/NoDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/NoDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 258
    invoke-static {}, Lcom/google/firebase/firestore/proto/NoDocument;->access$000()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/NoDocument$1;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 316
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->access$200(Lcom/google/firebase/firestore/proto/NoDocument;)V

    return-object p0
.end method

.method public clearReadTime()Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 403
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->access$600(Lcom/google/firebase/firestore/proto/NoDocument;)V

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 392
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$500(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$100(Lcom/google/firebase/firestore/proto/NoDocument;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 332
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$300(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 379
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 380
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$400(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 367
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$400(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/Timestamp;)V

    return-object p0
.end method
