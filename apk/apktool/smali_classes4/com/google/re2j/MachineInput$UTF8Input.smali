.class Lcom/google/re2j/MachineInput$UTF8Input;
.super Lcom/google/re2j/MachineInput;
.source "MachineInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/MachineInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UTF8Input"
.end annotation


# instance fields
.field final b:[B

.field final end:I

.field final start:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/google/re2j/MachineInput;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    .line 72
    array-length p1, p1

    iput p1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    return-void
.end method

.method constructor <init>([BII)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/google/re2j/MachineInput;-><init>()V

    .line 76
    array-length v0, p1

    if-gt p3, v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    .line 81
    iput p2, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    .line 82
    iput p3, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    return-void

    .line 77
    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "end is greater than length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " > "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method canCheckPrefix()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method context(I)I
    .locals 5

    .line 143
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    add-int/2addr p1, v0

    const/4 v1, -0x1

    if-le p1, v0, :cond_3

    .line 145
    iget v2, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    if-gt p1, v2, :cond_3

    add-int/lit8 v2, p1, -0x1

    .line 147
    iget-object v3, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v4, p1, -0x2

    aget-byte v2, v3, v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_4

    add-int/lit8 v2, p1, -0x4

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-lt v4, v0, :cond_1

    .line 154
    iget-object v2, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xc0

    if-ne v2, v3, :cond_1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 157
    :cond_1
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    if-ge v4, v0, :cond_2

    move v4, v0

    .line 160
    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/re2j/MachineInput$UTF8Input;->step(I)I

    move-result v0

    shr-int/lit8 v2, v0, 0x3

    goto :goto_1

    :cond_3
    move v2, v1

    .line 163
    :cond_4
    :goto_1
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    if-ge p1, v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/google/re2j/MachineInput$UTF8Input;->step(I)I

    move-result p1

    shr-int/lit8 v1, p1, 0x3

    .line 164
    :cond_5
    invoke-static {v2, v1}, Lcom/google/re2j/Utils;->emptyOpContext(II)I

    move-result p1

    return p1
.end method

.method endPos()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    return v0
.end method

.method index(Lcom/google/re2j/RE2;I)I
    .locals 1

    .line 136
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    add-int/2addr p2, v0

    .line 137
    iget-object v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    iget-object p1, p1, Lcom/google/re2j/RE2;->prefixUTF8:[B

    invoke-static {v0, p1, p2}, Lcom/google/re2j/Utils;->indexOf([B[BI)I

    move-result p1

    if-gez p1, :cond_0

    return p1

    :cond_0
    sub-int/2addr p1, p2

    return p1
.end method

.method step(I)I
    .locals 7

    .line 87
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->start:I

    add-int/2addr p1, v0

    .line 88
    iget v0, p0, Lcom/google/re2j/MachineInput$UTF8Input;->end:I

    const/4 v1, -0x8

    if-lt p1, v0, :cond_0

    return v1

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/google/re2j/MachineInput$UTF8Input;->b:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v4, v2, p1

    and-int/lit16 v5, v4, 0xff

    and-int/lit16 v6, v4, 0x80

    if-nez v6, :cond_1

    shl-int/lit8 p1, v5, 0x3

    or-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    and-int/lit16 v5, v4, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_3

    and-int/lit8 p1, v4, 0x1f

    if-lt v3, v0, :cond_2

    return v1

    :cond_2
    shl-int/lit8 p1, p1, 0x6

    .line 107
    aget-byte v0, v2, v3

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x2

    return p1

    :cond_3
    and-int/lit16 v5, v4, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_5

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 p1, p1, 0x2

    if-lt p1, v0, :cond_4

    return v1

    :cond_4
    shl-int/lit8 v0, v4, 0x6

    .line 114
    aget-byte v1, v2, v3

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x6

    .line 115
    aget-byte p1, v2, p1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x3

    return p1

    :cond_5
    and-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, p1, 0x3

    if-lt v5, v0, :cond_6

    return v1

    :cond_6
    shl-int/lit8 v0, v4, 0x6

    add-int/lit8 v1, p1, 0x2

    .line 122
    aget-byte v3, v2, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 p1, p1, 0x3

    .line 123
    aget-byte v1, v2, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x6

    .line 124
    aget-byte p1, v2, p1

    and-int/lit8 p1, p1, 0x3f

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x3

    or-int/lit8 p1, p1, 0x4

    return p1
.end method
