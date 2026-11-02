.class public Lcom/google/firebase/firestore/VectorValue;
.super Ljava/lang/Object;
.source "VectorValue.java"


# instance fields
.field private final values:[D


# direct methods
.method constructor <init>([D)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 29
    new-array p1, p1, [D

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :goto_0
    iput-object p1, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/VectorValue;

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    iget-object p1, p1, Lcom/google/firebase/firestore/VectorValue;->values:[D

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    return v0
.end method

.method public toArray()[D
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firebase/firestore/VectorValue;->values:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
