.class public Lcom/google/firebase/firestore/DocumentChange;
.super Ljava/lang/Object;
.source "DocumentChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/DocumentChange$Type;
    }
.end annotation


# instance fields
.field private final document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

.field private final newIndex:I

.field private final oldIndex:I

.field private final type:Lcom/google/firebase/firestore/DocumentChange$Type;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/QueryDocumentSnapshot;Lcom/google/firebase/firestore/DocumentChange$Type;II)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    .line 56
    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 57
    iput p3, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    .line 58
    iput p4, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 63
    instance-of v0, p1, Lcom/google/firebase/firestore/DocumentChange;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/google/firebase/firestore/DocumentChange;

    .line 65
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    iget-object v2, p1, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/DocumentChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    iget-object v2, p1, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 66
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    iget v2, p1, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    iget p1, p1, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getDocument()Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    return-object v0
.end method

.method public getNewIndex()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    return v0
.end method

.method public getOldIndex()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    return v0
.end method

.method public getType()Lcom/google/firebase/firestore/DocumentChange$Type;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentChange$Type;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget v1, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget v1, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    add-int/2addr v0, v1

    return v0
.end method
