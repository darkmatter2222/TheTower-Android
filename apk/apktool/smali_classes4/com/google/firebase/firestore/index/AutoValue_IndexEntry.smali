.class final Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;
.super Lcom/google/firebase/firestore/index/IndexEntry;
.source "AutoValue_IndexEntry.java"


# instance fields
.field private final arrayValue:[B

.field private final directionalValue:[B

.field private final documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final indexId:I


# direct methods
.method constructor <init>(ILcom/google/firebase/firestore/model/DocumentKey;[B[B)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/IndexEntry;-><init>()V

    .line 23
    iput p1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->indexId:I

    if-eqz p2, :cond_2

    .line 27
    iput-object p2, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    if-eqz p3, :cond_1

    .line 31
    iput-object p3, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->arrayValue:[B

    if-eqz p4, :cond_0

    .line 35
    iput-object p4, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->directionalValue:[B

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null directionalValue"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null arrayValue"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null documentKey"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/index/IndexEntry;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 76
    check-cast p1, Lcom/google/firebase/firestore/index/IndexEntry;

    .line 77
    iget v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->indexId:I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getIndexId()I

    move-result v3

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 78
    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->arrayValue:[B

    .line 79
    instance-of v3, p1, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;

    if-eqz v3, :cond_1

    move-object v4, p1

    check-cast v4, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;

    iget-object v4, v4, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->arrayValue:[B

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getArrayValue()[B

    move-result-object v4

    :goto_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->directionalValue:[B

    if-eqz v3, :cond_2

    .line 80
    check-cast p1, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;

    iget-object p1, p1, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->directionalValue:[B

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/index/IndexEntry;->getDirectionalValue()[B

    move-result-object p1

    :goto_1
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public getArrayValue()[B
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->arrayValue:[B

    return-object v0
.end method

.method public getDirectionalValue()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->directionalValue:[B

    return-object v0
.end method

.method public getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getIndexId()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->indexId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 89
    iget v0, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->indexId:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 91
    iget-object v2, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 93
    iget-object v2, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->arrayValue:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 95
    iget-object v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->directionalValue:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IndexEntry{indexId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->indexId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", documentKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arrayValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->arrayValue:[B

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directionalValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/index/AutoValue_IndexEntry;->directionalValue:[B

    .line 66
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
