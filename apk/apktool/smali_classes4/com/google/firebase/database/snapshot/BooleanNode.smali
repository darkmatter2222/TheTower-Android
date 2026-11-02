.class public Lcom/google/firebase/database/snapshot/BooleanNode;
.super Lcom/google/firebase/database/snapshot/LeafNode;
.source "BooleanNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/database/snapshot/LeafNode<",
        "Lcom/google/firebase/database/snapshot/BooleanNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final value:Z


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lcom/google/firebase/database/snapshot/LeafNode;-><init>(Lcom/google/firebase/database/snapshot/Node;)V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    return-void
.end method


# virtual methods
.method protected compareLeafValues(Lcom/google/firebase/database/snapshot/BooleanNode;)I
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    iget-boolean p1, p1, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected bridge synthetic compareLeafValues(Lcom/google/firebase/database/snapshot/LeafNode;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/google/firebase/database/snapshot/BooleanNode;

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;->compareLeafValues(Lcom/google/firebase/database/snapshot/BooleanNode;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 53
    instance-of v0, p1, Lcom/google/firebase/database/snapshot/BooleanNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    check-cast p1, Lcom/google/firebase/database/snapshot/BooleanNode;

    .line 57
    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    iget-boolean v2, p1, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    iget-object p1, p1, Lcom/google/firebase/database/snapshot/BooleanNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getHashRepresentation(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;
    .locals 1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;->getPriorityHash(Lcom/google/firebase/database/snapshot/Node$HashVersion;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "boolean:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getLeafType()Lcom/google/firebase/database/snapshot/LeafNode$LeafType;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/firebase/database/snapshot/LeafNode$LeafType;->Boolean:Lcom/google/firebase/database/snapshot/LeafNode$LeafType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 62
    iget-boolean v0, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    iget-object v1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->priority:Lcom/google/firebase/database/snapshot/Node;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/BooleanNode;
    .locals 2

    .line 38
    new-instance v0, Lcom/google/firebase/database/snapshot/BooleanNode;

    iget-boolean v1, p0, Lcom/google/firebase/database/snapshot/BooleanNode;->value:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;-><init>(Ljava/lang/Boolean;Lcom/google/firebase/database/snapshot/Node;)V

    return-object v0
.end method

.method public bridge synthetic updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/google/firebase/database/snapshot/BooleanNode;->updatePriority(Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/BooleanNode;

    move-result-object p1

    return-object p1
.end method
