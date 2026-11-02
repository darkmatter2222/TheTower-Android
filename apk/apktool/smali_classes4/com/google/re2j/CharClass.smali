.class Lcom/google/re2j/CharClass;
.super Ljava/lang/Object;
.source "CharClass.java"


# instance fields
.field private len:I

.field private r:[I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/google/re2j/Utils;->EMPTY_INTS:[I

    iput-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/re2j/CharClass;->len:I

    return-void
.end method

.method constructor <init>([I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/re2j/CharClass;->r:[I

    .line 27
    array-length p1, p1

    iput p1, p0, Lcom/google/re2j/CharClass;->len:I

    return-void
.end method

.method static charClassToString([II)Ljava/lang/String;
    .locals 5

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    if-lez v1, :cond_0

    const/16 v2, 0x20

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    :cond_0
    aget v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    .line 343
    const-string v4, "0x"

    if-ne v2, v3, :cond_1

    .line 344
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 347
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v2, "-0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    const/16 p0, 0x5d

    .line 353
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static cmp([IIII)I
    .locals 1

    .line 293
    aget v0, p0, p1

    sub-int/2addr v0, p2

    if-eqz v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 294
    aget p0, p0, p1

    sub-int/2addr p3, p0

    return p3
.end method

.method private ensureCapacity(I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    array-length v1, v0

    if-ge v1, p1, :cond_1

    .line 42
    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    mul-int/lit8 v2, v1, 0x2

    if-ge p1, v2, :cond_0

    mul-int/lit8 p1, v1, 0x2

    .line 45
    :cond_0
    new-array p1, p1, [I

    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    iput-object p1, p0, Lcom/google/re2j/CharClass;->r:[I

    :cond_1
    return-void
.end method

.method private static qsortIntPair([III)V
    .locals 8

    add-int v0, p1, p2

    .line 300
    div-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x2

    .line 301
    aget v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    move v2, p1

    move v3, p2

    :cond_0
    :goto_0
    if-gt v2, v3, :cond_4

    :goto_1
    if-ge v2, p2, :cond_1

    .line 305
    invoke-static {p0, v2, v1, v0}, Lcom/google/re2j/CharClass;->cmp([IIII)I

    move-result v4

    if-gez v4, :cond_1

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_1
    :goto_2
    if-le v3, p1, :cond_2

    .line 308
    invoke-static {p0, v3, v1, v0}, Lcom/google/re2j/CharClass;->cmp([IIII)I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    :cond_2
    if-gt v2, v3, :cond_0

    if-eq v2, v3, :cond_3

    .line 313
    aget v4, p0, v2

    .line 314
    aget v5, p0, v3

    aput v5, p0, v2

    .line 315
    aput v4, p0, v3

    add-int/lit8 v4, v2, 0x1

    .line 316
    aget v5, p0, v4

    add-int/lit8 v6, v3, 0x1

    .line 317
    aget v7, p0, v6

    aput v7, p0, v4

    .line 318
    aput v5, p0, v6

    :cond_3
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    :cond_4
    if-ge p1, v3, :cond_5

    .line 325
    invoke-static {p0, p1, v3}, Lcom/google/re2j/CharClass;->qsortIntPair([III)V

    :cond_5
    if-ge v2, p2, :cond_6

    .line 328
    invoke-static {p0, v2, p2}, Lcom/google/re2j/CharClass;->qsortIntPair([III)V

    :cond_6
    return-void
.end method


# virtual methods
.method appendClass([I)Lcom/google/re2j/CharClass;
    .locals 3

    const/4 v0, 0x0

    .line 167
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 168
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method appendClassWithSign([II)Lcom/google/re2j/CharClass;
    .locals 0

    if-gez p2, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendNegatedClass([I)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendClass([I)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1
.end method

.method appendFoldedClass([I)Lcom/google/re2j/CharClass;
    .locals 3

    const/4 v0, 0x0

    .line 176
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 177
    aget v1, p1, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/CharClass;->appendFoldedRange(II)Lcom/google/re2j/CharClass;

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method appendFoldedRange(II)Lcom/google/re2j/CharClass;
    .locals 3

    const v0, 0x1044f

    const/16 v1, 0x41

    if-gt p1, v1, :cond_0

    if-lt p2, v0, :cond_0

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1

    :cond_0
    if-lt p2, v1, :cond_6

    if-le p1, v0, :cond_1

    goto :goto_2

    :cond_1
    if-ge p1, v1, :cond_2

    const/16 v2, 0x40

    .line 145
    invoke-virtual {p0, p1, v2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move p1, v1

    :cond_2
    if-le p2, v0, :cond_3

    const v1, 0x10450

    .line 150
    invoke-virtual {p0, v1, p2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move p2, v0

    :cond_3
    :goto_0
    if-gt p1, p2, :cond_5

    .line 156
    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 157
    invoke-static {p1}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    :goto_1
    if-eq v0, p1, :cond_4

    .line 158
    invoke-virtual {p0, v0, v0}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    .line 157
    invoke-static {v0}, Lcom/google/re2j/Unicode;->simpleFold(I)I

    move-result v0

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-object p0

    .line 141
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1
.end method

.method appendGroup(Lcom/google/re2j/CharGroup;Z)Lcom/google/re2j/CharClass;
    .locals 1

    .line 282
    iget-object v0, p1, Lcom/google/re2j/CharGroup;->cls:[I

    if-eqz p2, :cond_0

    .line 284
    new-instance p2, Lcom/google/re2j/CharClass;

    invoke-direct {p2}, Lcom/google/re2j/CharClass;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/re2j/CharClass;->appendFoldedClass([I)Lcom/google/re2j/CharClass;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/re2j/CharClass;->cleanClass()Lcom/google/re2j/CharClass;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/re2j/CharClass;->toArray()[I

    move-result-object v0

    .line 286
    :cond_0
    iget p1, p1, Lcom/google/re2j/CharGroup;->sign:I

    invoke-virtual {p0, v0, p1}, Lcom/google/re2j/CharClass;->appendClassWithSign([II)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1
.end method

.method appendLiteral(II)Lcom/google/re2j/CharClass;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/CharClass;->appendFoldedRange(II)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1
.end method

.method appendNegatedClass([I)Lcom/google/re2j/CharClass;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 186
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 187
    aget v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    .line 188
    aget v3, p1, v3

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_0

    .line 190
    invoke-virtual {p0, v1, v2}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    :cond_0
    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const p1, 0x10ffff

    if-gt v1, p1, :cond_2

    .line 195
    invoke-virtual {p0, v1, p1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    :cond_2
    return-object p0
.end method

.method appendNegatedTable([[I)Lcom/google/re2j/CharClass;
    .locals 9

    .line 220
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p1, v2

    .line 221
    aget v5, v4, v1

    const/4 v6, 0x1

    aget v7, v4, v6

    const/4 v8, 0x2

    aget v4, v4, v8

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_0

    .line 224
    invoke-virtual {p0, v3, v5}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    :cond_0
    add-int/lit8 v7, v7, 0x1

    move v3, v7

    goto :goto_2

    :cond_1
    :goto_1
    if-gt v5, v7, :cond_3

    add-int/lit8 v6, v5, -0x1

    if-gt v3, v6, :cond_2

    .line 231
    invoke-virtual {p0, v3, v6}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    :cond_2
    add-int/lit8 v3, v5, 0x1

    add-int/2addr v5, v4

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const p1, 0x10ffff

    if-gt v3, p1, :cond_5

    .line 237
    invoke-virtual {p0, v3, p1}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    :cond_5
    return-object p0
.end method

.method appendRange(II)Lcom/google/re2j/CharClass;
    .locals 7

    .line 107
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    const/4 v1, 0x2

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-gt v0, v2, :cond_3

    .line 109
    iget v2, p0, Lcom/google/re2j/CharClass;->len:I

    if-lt v2, v0, :cond_2

    .line 110
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    sub-int v4, v2, v0

    aget v4, v3, v4

    sub-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    .line 111
    aget v5, v3, v5

    add-int/lit8 v6, v5, 0x1

    if-gt p1, v6, :cond_2

    add-int/lit8 v6, p2, 0x1

    if-gt v4, v6, :cond_2

    if-ge p1, v4, :cond_0

    sub-int v1, v2, v0

    .line 114
    aput p1, v3, v1

    :cond_0
    if-le p2, v5, :cond_1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 117
    aput p2, v3, v2

    :cond_1
    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 125
    :cond_3
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/re2j/CharClass;->ensureCapacity(I)V

    .line 126
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v2, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/re2j/CharClass;->len:I

    aput p1, v0, v2

    add-int/2addr v2, v1

    .line 127
    iput v2, p0, Lcom/google/re2j/CharClass;->len:I

    aput p2, v0, v3

    return-object p0
.end method

.method appendTable([[I)Lcom/google/re2j/CharClass;
    .locals 8

    .line 203
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 204
    aget v4, v3, v1

    const/4 v5, 0x1

    aget v6, v3, v5

    const/4 v7, 0x2

    aget v3, v3, v7

    if-ne v3, v5, :cond_0

    .line 206
    invoke-virtual {p0, v4, v6}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    goto :goto_2

    :cond_0
    :goto_1
    if-gt v4, v6, :cond_1

    .line 210
    invoke-virtual {p0, v4, v4}, Lcom/google/re2j/CharClass;->appendRange(II)Lcom/google/re2j/CharClass;

    add-int/2addr v4, v3

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method appendTableWithSign([[II)Lcom/google/re2j/CharClass;
    .locals 0

    if-gez p2, :cond_0

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendNegatedTable([[I)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/re2j/CharClass;->appendTable([[I)Lcom/google/re2j/CharClass;

    move-result-object p1

    return-object p1
.end method

.method cleanClass()Lcom/google/re2j/CharClass;
    .locals 8

    .line 67
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-object p0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    const/4 v2, 0x0

    const/4 v3, 0x2

    sub-int/2addr v0, v3

    invoke-static {v1, v2, v0}, Lcom/google/re2j/CharClass;->qsortIntPair([III)V

    move v0, v3

    .line 76
    :goto_0
    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    if-ge v3, v1, :cond_3

    .line 77
    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    aget v2, v1, v3

    add-int/lit8 v4, v3, 0x1

    .line 78
    aget v4, v1, v4

    add-int/lit8 v5, v0, -0x1

    .line 79
    aget v6, v1, v5

    add-int/lit8 v7, v6, 0x1

    if-gt v2, v7, :cond_1

    if-le v4, v6, :cond_2

    .line 82
    aput v4, v1, v5

    goto :goto_1

    .line 87
    :cond_1
    aput v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    .line 88
    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 91
    :cond_3
    iput v0, p0, Lcom/google/re2j/CharClass;->len:I

    return-object p0
.end method

.method negateClass()Lcom/google/re2j/CharClass;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 252
    :goto_0
    iget v3, p0, Lcom/google/re2j/CharClass;->len:I

    if-ge v0, v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/google/re2j/CharClass;->r:[I

    aget v4, v3, v0

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_0

    .line 255
    aput v2, v3, v1

    add-int/lit8 v2, v1, 0x1

    .line 256
    aput v4, v3, v2

    add-int/lit8 v1, v1, 0x2

    :cond_0
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 261
    :cond_1
    iput v1, p0, Lcom/google/re2j/CharClass;->len:I

    const v0, 0x10ffff

    if-gt v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    .line 266
    invoke-direct {p0, v1}, Lcom/google/re2j/CharClass;->ensureCapacity(I)V

    .line 267
    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v3, p0, Lcom/google/re2j/CharClass;->len:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/re2j/CharClass;->len:I

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x2

    .line 268
    iput v3, p0, Lcom/google/re2j/CharClass;->len:I

    aput v0, v1, v4

    :cond_2
    return-object p0
.end method

.method toArray()[I
    .locals 4

    .line 55
    iget v0, p0, Lcom/google/re2j/CharClass;->len:I

    iget-object v1, p0, Lcom/google/re2j/CharClass;->r:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 58
    :cond_0
    new-array v2, v0, [I

    const/4 v3, 0x0

    .line 59
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/google/re2j/CharClass;->r:[I

    iget v1, p0, Lcom/google/re2j/CharClass;->len:I

    invoke-static {v0, v1}, Lcom/google/re2j/CharClass;->charClassToString([II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
