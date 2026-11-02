.class final Lcom/google/re2j/Prog;
.super Ljava/lang/Object;
.source "Prog.java"


# instance fields
.field inst:[Lcom/google/re2j/Inst;

.field instSize:I

.field numCap:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 19
    new-array v0, v0, [Lcom/google/re2j/Inst;

    iput-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/google/re2j/Prog;->instSize:I

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/google/re2j/Prog;->numCap:I

    return-void
.end method


# virtual methods
.method addInst(I)V
    .locals 3

    .line 42
    iget v0, p0, Lcom/google/re2j/Prog;->instSize:I

    iget-object v1, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 43
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/Inst;

    iput-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    iget v1, p0, Lcom/google/re2j/Prog;->instSize:I

    new-instance v2, Lcom/google/re2j/Inst;

    invoke-direct {v2, p1}, Lcom/google/re2j/Inst;-><init>(I)V

    aput-object v2, v0, v1

    .line 46
    iget p1, p0, Lcom/google/re2j/Prog;->instSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/re2j/Prog;->instSize:I

    return-void
.end method

.method append(II)I
    .locals 3

    if-nez p1, :cond_0

    return p2

    :cond_0
    if-nez p2, :cond_1

    return p1

    :cond_1
    move v0, p1

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/re2j/Prog;->next(I)I

    move-result v1

    if-nez v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    shr-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    .line 155
    iput p2, v1, Lcom/google/re2j/Inst;->out:I

    return p1

    .line 157
    :cond_2
    iput p2, v1, Lcom/google/re2j/Inst;->arg:I

    return p1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method getInst(I)Lcom/google/re2j/Inst;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object p1, v0, p1

    return-object p1
.end method

.method next(I)I
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    shr-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 120
    iget p1, v0, Lcom/google/re2j/Inst;->out:I

    return p1

    .line 122
    :cond_0
    iget p1, v0, Lcom/google/re2j/Inst;->arg:I

    return p1
.end method

.method numInst()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/re2j/Prog;->instSize:I

    return v0
.end method

.method patch(II)V
    .locals 2

    :goto_0
    if-eqz p1, :cond_1

    .line 127
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    shr-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 129
    iget p1, v0, Lcom/google/re2j/Inst;->out:I

    .line 130
    iput p2, v0, Lcom/google/re2j/Inst;->out:I

    goto :goto_0

    .line 132
    :cond_0
    iget p1, v0, Lcom/google/re2j/Inst;->arg:I

    .line 133
    iput p2, v0, Lcom/google/re2j/Inst;->arg:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method prefix(Ljava/lang/StringBuilder;)Z
    .locals 5

    .line 64
    iget v0, p0, Lcom/google/re2j/Prog;->start:I

    invoke-virtual {p0, v0}, Lcom/google/re2j/Prog;->skipNop(I)Lcom/google/re2j/Inst;

    move-result-object v0

    .line 67
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    invoke-static {v1}, Lcom/google/re2j/Inst;->isRuneOp(I)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/re2j/Inst;->runes:[I

    array-length v1, v1

    if-eq v1, v4, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    invoke-static {v1}, Lcom/google/re2j/Inst;->isRuneOp(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/re2j/Inst;->runes:[I

    array-length v1, v1

    if-ne v1, v4, :cond_1

    iget v1, v0, Lcom/google/re2j/Inst;->arg:I

    and-int/2addr v1, v4

    if-nez v1, :cond_1

    .line 73
    iget-object v1, v0, Lcom/google/re2j/Inst;->runes:[I

    aget v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 74
    iget v0, v0, Lcom/google/re2j/Inst;->out:I

    invoke-virtual {p0, v0}, Lcom/google/re2j/Prog;->skipNop(I)Lcom/google/re2j/Inst;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    iget p1, v0, Lcom/google/re2j/Inst;->op:I

    if-ne p1, v2, :cond_2

    return v4

    :cond_2
    return v3

    .line 68
    :cond_3
    :goto_1
    iget p1, v0, Lcom/google/re2j/Inst;->op:I

    if-ne p1, v2, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method skipNop(I)Lcom/google/re2j/Inst;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v0, v0, p1

    .line 53
    :goto_0
    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/google/re2j/Inst;->op:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    return-object v0

    .line 54
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v0, v0, p1

    .line 55
    iget p1, v0, Lcom/google/re2j/Inst;->out:I

    goto :goto_0
.end method

.method startCond()I
    .locals 4

    .line 83
    iget v0, p0, Lcom/google/re2j/Prog;->start:I

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v0, v2, v0

    .line 87
    iget v2, v0, Lcom/google/re2j/Inst;->op:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0

    .line 89
    :cond_1
    iget v2, v0, Lcom/google/re2j/Inst;->arg:I

    or-int/2addr v1, v2

    .line 99
    :cond_2
    iget v0, v0, Lcom/google/re2j/Inst;->out:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 167
    :goto_0
    iget v2, p0, Lcom/google/re2j/Prog;->instSize:I

    if-ge v1, v2, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    iget v3, p0, Lcom/google/re2j/Prog;->start:I

    if-ne v1, v3, :cond_0

    const/16 v3, 0x2a

    .line 171
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 175
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const-string v2, "        "

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/re2j/Prog;->inst:[Lcom/google/re2j/Inst;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
