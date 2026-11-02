.class final Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;
.super Lcom/google/firebase/firestore/model/mutation/Overlay;
.source "AutoValue_Overlay.java"


# instance fields
.field private final largestBatchId:I

.field private final mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;


# direct methods
.method constructor <init>(ILcom/google/firebase/firestore/model/mutation/Mutation;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/Overlay;-><init>()V

    .line 15
    iput p1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    if-eqz p2, :cond_0

    .line 19
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null mutation"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 45
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/mutation/Overlay;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 46
    check-cast p1, Lcom/google/firebase/firestore/model/mutation/Overlay;

    .line 47
    iget v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Overlay;->getLargestBatchId()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/mutation/Overlay;->getMutation()Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getLargestBatchId()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    return v0
.end method

.method public getMutation()Lcom/google/firebase/firestore/model/mutation/Mutation;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    iget v0, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Overlay{largestBatchId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mutation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
