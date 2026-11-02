.class Lcom/google/re2j/Unicode;
.super Ljava/lang/Object;
.source "Unicode.java"


# static fields
.field static final MAX_ASCII:I = 0x7f

.field static final MAX_FOLD:I = 0x1044f

.field static final MAX_LATIN1:I = 0xff

.field static final MAX_RUNE:I = 0x10ffff

.field static final MIN_FOLD:I = 0x41


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static is([[II)Z
    .locals 6

    const/16 v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_3

    .line 57
    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p0, v3

    .line 58
    aget v5, v4, v1

    if-le p1, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_0
    aget p0, v4, v2

    if-ge p1, p0, :cond_1

    return v2

    :cond_1
    sub-int/2addr p1, p0

    const/4 p0, 0x2

    .line 64
    aget p0, v4, p0

    rem-int/2addr p1, p0

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 68
    :cond_3
    array-length v0, p0

    if-lez v0, :cond_4

    aget-object v0, p0, v2

    aget v0, v0, v2

    if-lt p1, v0, :cond_4

    invoke-static {p0, p1}, Lcom/google/re2j/Unicode;->is32([[II)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method private static is32([[II)Z
    .locals 9

    .line 38
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    sub-int v3, v0, v2

    const/4 v4, 0x2

    .line 39
    div-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 40
    aget-object v5, p0, v3

    .line 41
    aget v6, v5, v1

    if-gt v6, p1, :cond_1

    const/4 v7, 0x1

    aget v8, v5, v7

    if-gt p1, v8, :cond_1

    sub-int/2addr p1, v6

    .line 42
    aget p0, v5, v4

    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    return v7

    :cond_0
    return v1

    :cond_1
    if-ge p1, v6, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method static isPrint(I)Z
    .locals 3

    const/16 v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_3

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1

    :cond_0
    const/16 v0, 0xa1

    if-lt p0, v0, :cond_2

    const/16 v0, 0xad

    if-eq p0, v0, :cond_2

    :cond_1
    return v2

    :cond_2
    return v1

    .line 85
    :cond_3
    sget-object v0, Lcom/google/re2j/UnicodeTables;->L:[[I

    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/re2j/UnicodeTables;->M:[[I

    .line 86
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/re2j/UnicodeTables;->N:[[I

    .line 87
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/re2j/UnicodeTables;->P:[[I

    .line 88
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/google/re2j/UnicodeTables;->S:[[I

    .line 89
    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method static isUpper(I)Z
    .locals 1

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    int-to-char p0, p0

    .line 75
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p0

    return p0

    .line 77
    :cond_0
    sget-object v0, Lcom/google/re2j/UnicodeTables;->Upper:[[I

    invoke-static {v0, p0}, Lcom/google/re2j/Unicode;->is([[II)Z

    move-result p0

    return p0
.end method

.method static simpleFold(I)I
    .locals 1

    .line 111
    sget-object v0, Lcom/google/re2j/UnicodeTables;->CASE_ORBIT:[C

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/re2j/UnicodeTables;->CASE_ORBIT:[C

    aget-char v0, v0, p0

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/google/re2j/UnicodeTables;->CASE_ORBIT:[C

    aget-char p0, v0, p0

    return p0

    .line 118
    :cond_0
    invoke-static {p0}, Lcom/google/re2j/Characters;->toLowerCase(I)I

    move-result v0

    if-eq v0, p0, :cond_1

    return v0

    .line 122
    :cond_1
    invoke-static {p0}, Lcom/google/re2j/Characters;->toUpperCase(I)I

    move-result p0

    return p0
.end method
