.class public Lcom/google/firebase/firestore/index/OrderedCodeWriter;
.super Ljava/lang/Object;
.source "OrderedCodeWriter.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field public static final DOUBLE_ALL_BITS:J = -0x1L

.field public static final DOUBLE_SIGN_MASK:J = -0x8000000000000000L

.field public static final ESCAPE1:B = 0x0t

.field public static final ESCAPE2:B = -0x1t

.field public static final FF_BYTE:B = 0x0t

.field public static final INFINITY:B = -0x1t

.field private static final LENGTH_TO_HEADER_BITS:[[B

.field public static final NULL_BYTE:B = -0x1t

.field public static final SEPARATOR:B = 0x1t


# instance fields
.field private buffer:[B

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v0, 0x2

    .line 55
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    new-array v2, v0, [B

    fill-array-data v2, :array_1

    new-array v3, v0, [B

    fill-array-data v3, :array_2

    new-array v4, v0, [B

    fill-array-data v4, :array_3

    new-array v5, v0, [B

    fill-array-data v5, :array_4

    new-array v6, v0, [B

    fill-array-data v6, :array_5

    new-array v7, v0, [B

    fill-array-data v7, :array_6

    new-array v8, v0, [B

    fill-array-data v8, :array_7

    new-array v9, v0, [B

    fill-array-data v9, :array_8

    new-array v10, v0, [B

    fill-array-data v10, :array_9

    new-array v11, v0, [B

    fill-array-data v11, :array_a

    filled-new-array/range {v1 .. v11}, [[B

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->LENGTH_TO_HEADER_BITS:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x80t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x40t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x20t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x10t
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x8t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x4t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x2t
        0x0t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x1t
        0x0t
    .end array-data

    nop

    :array_9
    .array-data 1
        -0x1t
        -0x80t
    .end array-data

    nop

    :array_a
    .array-data 1
        -0x1t
        -0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    const/16 v0, 0x400

    .line 74
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    return-void
.end method

.method private ensureAvailable(I)V
    .locals 2

    .line 324
    iget v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/2addr p1, v0

    .line 325
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    array-length v1, v0

    if-gt p1, v1, :cond_0

    return-void

    .line 329
    :cond_0
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-ge v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    .line 335
    :goto_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    return-void
.end method

.method private signedNumLength(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    not-long p1, p1

    .line 344
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x41

    const/4 p2, 0x7

    .line 349
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0}, Lcom/google/firebase/firestore/index/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p1

    return p1
.end method

.method private unsignedNumLength(J)I
    .locals 1

    .line 354
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x40

    const/16 p2, 0x8

    .line 355
    sget-object v0, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-static {p1, p2, v0}, Lcom/google/firebase/firestore/index/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result p1

    return p1
.end method

.method private writeByteAscending(B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 277
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 278
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 280
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 281
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    return-void

    .line 283
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    return-void
.end method

.method private writeByteDescending(B)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 294
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    .line 296
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 297
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    return-void

    .line 299
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    return-void
.end method

.method private writeEscapedByteAscending(B)V
    .locals 3

    const/4 v0, 0x1

    .line 314
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 315
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private writeEscapedByteDescending(B)V
    .locals 3

    const/4 v0, 0x1

    .line 319
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 320
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    not-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method private writeSeparatorAscending()V
    .locals 1

    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    const/4 v0, 0x1

    .line 305
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    return-void
.end method

.method private writeSeparatorDescending()V
    .locals 1

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    const/4 v0, 0x1

    .line 310
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    return-void
.end method


# virtual methods
.method public encodedBytes()[B
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    return-void
.end method

.method public seed([B)V
    .locals 6

    .line 359
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 360
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    iget-object v3, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v4, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aput-byte v2, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeBytesAscending(Lcom/google/protobuf/ByteString;)V
    .locals 2

    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorAscending()V

    return-void
.end method

.method public writeBytesDescending(Lcom/google/protobuf/ByteString;)V
    .locals 2

    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorDescending()V

    return-void
.end method

.method public writeDoubleAscending(D)V
    .locals 2

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    xor-long/2addr p1, v0

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeUnsignedLongAscending(J)V

    return-void
.end method

.method public writeDoubleDescending(D)V
    .locals 2

    .line 238
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_0
    xor-long/2addr p1, v0

    .line 240
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeUnsignedLongDescending(J)V

    return-void
.end method

.method public writeInfinityAscending()V
    .locals 1

    const/4 v0, -0x1

    .line 248
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    .line 249
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteAscending(B)V

    return-void
.end method

.method public writeInfinityDescending()V
    .locals 1

    const/4 v0, -0x1

    .line 257
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    .line 258
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeEscapedByteDescending(B)V

    return-void
.end method

.method public writeSignedLongAscending(J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    not-long v1, p1

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    const-wide/16 v3, 0x40

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_1

    .line 185
    invoke-direct {p0, v5}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 186
    iget-object v0, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    sget-object v2, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->LENGTH_TO_HEADER_BITS:[[B

    aget-object v2, v2, v5

    aget-byte v2, v2, v4

    int-to-long v2, v2

    xor-long/2addr p1, v2

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 189
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->signedNumLength(J)I

    move-result v1

    .line 190
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    if-gez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v4

    .line 197
    :goto_1
    iget v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    add-int/lit8 v3, v2, 0x2

    .line 201
    iget-object v6, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    aput-byte v0, v6, v2

    add-int/lit8 v7, v2, 0x1

    .line 202
    aput-byte v0, v6, v7

    goto :goto_2

    :cond_3
    const/16 v3, 0x9

    if-ne v1, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 205
    iget-object v6, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    aput-byte v0, v6, v2

    goto :goto_2

    :cond_4
    move v3, v2

    :goto_2
    add-int/lit8 v0, v1, -0x1

    add-int/2addr v0, v2

    :goto_3
    if-lt v0, v3, :cond_5

    .line 210
    iget-object v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    const-wide/16 v6, 0xff

    and-long/2addr v6, p1

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    const/16 v2, 0x8

    shr-long/2addr p1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 214
    :cond_5
    iget-object p1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget p2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    aget-byte v0, p1, p2

    sget-object v2, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->LENGTH_TO_HEADER_BITS:[[B

    aget-object v2, v2, v1

    aget-byte v3, v2, v4

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    .line 215
    aget-byte v3, p1, v0

    aget-byte v2, v2, v5

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/2addr p2, v1

    .line 216
    iput p2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    return-void

    .line 193
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Invalid length (%d) returned by signedNumLength"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public writeSignedLongDescending(J)V
    .locals 0

    not-long p1, p1

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSignedLongAscending(J)V

    return-void
.end method

.method public writeUnsignedLongAscending(J)V
    .locals 6

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->unsignedNumLength(J)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 157
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 158
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    int-to-byte v4, v0

    aput-byte v4, v1, v2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 159
    :goto_0
    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    if-lt v3, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    const-wide/16 v4, 0xff

    and-long/2addr v4, p1

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v1, 0x8

    ushr-long/2addr p1, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    .line 163
    iput v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    return-void
.end method

.method public writeUnsignedLongDescending(J)V
    .locals 6

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->unsignedNumLength(J)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 172
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->ensureAvailable(I)V

    .line 173
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    iget v2, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    not-int v4, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 174
    :goto_0
    iget v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    if-lt v3, v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->buffer:[B

    const-wide/16 v4, 0xff

    and-long/2addr v4, p1

    not-long v4, v4

    long-to-int v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v1, 0x8

    ushr-long/2addr p1, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v0

    .line 178
    iput v1, p0, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->position:I

    return-void
.end method

.method public writeUtf8Ascending(Ljava/lang/CharSequence;)V
    .locals 5

    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 99
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    int-to-byte v2, v2

    .line 101
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    goto :goto_2

    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 103
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 104
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    goto :goto_2

    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_3

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_1

    .line 110
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v4, v2, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 112
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 113
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 114
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 115
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    goto :goto_2

    :cond_3
    :goto_1
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 106
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 107
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 108
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteAscending(B)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorAscending()V

    return-void
.end method

.method public writeUtf8Descending(Ljava/lang/CharSequence;)V
    .locals 5

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 129
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    int-to-byte v2, v2

    .line 131
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    goto :goto_2

    :cond_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_1

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 133
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 134
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    goto :goto_2

    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_3

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v4, v2, 0x12

    or-int/lit16 v4, v4, 0xf0

    int-to-byte v4, v4

    .line 142
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    ushr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 143
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 144
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 145
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    goto :goto_2

    :cond_3
    :goto_1
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 136
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 137
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 138
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeByteDescending(B)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_4
    invoke-direct {p0}, Lcom/google/firebase/firestore/index/OrderedCodeWriter;->writeSeparatorDescending()V

    return-void
.end method
