.class final Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;
.super Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;
.source "IntArrayList.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;
.implements Ljava/util/RandomAccess;
.implements Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;",
        "Ljava/util/RandomAccess;",
        "Lcom/google/crypto/tink/shaded/protobuf/PrimitiveNonBoxingCollection;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[I

.field private static final EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;


# instance fields
.field private array:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 26
    new-array v1, v0, [I

    sput-object v1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->EMPTY_ARRAY:[I

    .line 28
    new-instance v2, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    invoke-direct {v2, v1, v0, v0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;-><init>([IIZ)V

    sput-object v2, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 45
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->EMPTY_ARRAY:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;-><init>([IIZ)V

    return-void
.end method

.method private constructor <init>([IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "other",
            "size",
            "isMutable"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;-><init>(Z)V

    .line 53
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    .line 54
    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    return-void
.end method

.method private addInt(II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIsMutable()V

    if-ltz p1, :cond_1

    .line 190
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    if-gt p1, v0, :cond_1

    .line 194
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 196
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 198
    :cond_0
    array-length v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->growSize(I)I

    move-result v0

    .line 199
    new-array v0, v0, [I

    .line 202
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    aput p2, v0, p1

    .line 210
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    .line 211
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    return-void

    .line 191
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static emptyList()Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;
    .locals 1

    .line 31
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->EMPTY_LIST:Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    return-object v0
.end method

.method private ensureIndexInRange(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 291
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    if-ge p1, v0, :cond_0

    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static growSize(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previousSize"
        }
    .end annotation

    mul-int/lit8 p0, p0, 0x3

    .line 281
    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0x1

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private makeOutOfBoundsExceptionMessage(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", Size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public add(ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 169
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(II)V

    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 23
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->add(ILjava/lang/Integer;)V

    return-void
.end method

.method public add(Ljava/lang/Integer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->addInt(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "element"
        }
    .end annotation

    .line 23
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->add(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIsMutable()V

    .line 218
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    if-nez v0, :cond_0

    .line 222
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 225
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 226
    iget v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 230
    :cond_1
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3

    add-int/2addr v2, v0

    .line 237
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    array-length v3, v0

    if-le v2, v3, :cond_2

    .line 238
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    .line 241
    :cond_2
    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    iget v4, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    iget p1, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    .line 243
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    return v0

    .line 233
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public addInt(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIsMutable()V

    .line 176
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 177
    array-length v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->growSize(I)I

    move-result v0

    .line 178
    new-array v0, v0, [I

    .line 180
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method ensureCapacity(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minCapacity"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    .line 265
    :cond_0
    array-length v1, v0

    if-nez v1, :cond_1

    const/16 v0, 0xa

    .line 266
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    return-void

    .line 272
    :cond_1
    array-length v0, v0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 274
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->growSize(I)I

    move-result v0

    goto :goto_0

    .line 276
    :cond_2
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 75
    :cond_0
    instance-of v1, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    if-nez v1, :cond_1

    .line 76
    invoke-super {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/AbstractProtobufList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 78
    :cond_1
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    .line 79
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    iget v2, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 83
    :cond_2
    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    move v1, v3

    .line 84
    :goto_0
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    if-ge v1, v2, :cond_4

    .line 85
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    aget v2, v2, v1

    aget v4, p1, v1

    if-eq v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public get(I)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->get(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    aget p1, v0, p1

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    :goto_0
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 97
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 124
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 127
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 128
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 130
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    aget v3, v3, v2

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    if-lt p1, v0, :cond_1

    if-nez p1, :cond_0

    .line 107
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->EMPTY_ARRAY:[I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    .line 108
    :goto_0
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;-><init>([IIZ)V

    return-object v0

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->mutableCopyWithCapacity(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$IntList;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIsMutable()V

    .line 250
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 251
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    aget v1, v0, p1

    .line 252
    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 253
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    :cond_0
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    .line 256
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    .line 257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->remove(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected removeRange(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIsMutable()V

    if-lt p2, p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    .line 66
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->modCount:I

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(ILjava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 149
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->setInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 23
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->set(ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setInt(II)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIsMutable()V

    .line 155
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->ensureIndexInRange(I)V

    .line 156
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->array:[I

    aget v1, v0, p1

    .line 157
    aput p2, v0, p1

    return v1
.end method

.method public size()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->size:I

    return v0
.end method
