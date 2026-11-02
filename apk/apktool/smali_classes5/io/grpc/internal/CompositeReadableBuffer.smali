.class public Lio/grpc/internal/CompositeReadableBuffer;
.super Lio/grpc/internal/AbstractReadableBuffer;
.source "CompositeReadableBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;,
        Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
    }
.end annotation


# static fields
.field private static final BYTE_ARRAY_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final BYTE_BUF_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SKIP_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_OP:Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$ReadOperation<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final UBYTE_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buffers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/internal/ReadableBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private marked:Z

.field private final readableBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/grpc/internal/ReadableBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private readableBytes:I

.field private rewindableBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/grpc/internal/ReadableBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$1;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$1;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->UBYTE_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 102
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$2;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$2;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->SKIP_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 116
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$3;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$3;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_ARRAY_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 130
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$4;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$4;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_BUF_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    .line 149
    new-instance v0, Lio/grpc/internal/CompositeReadableBuffer$5;

    invoke-direct {v0}, Lio/grpc/internal/CompositeReadableBuffer$5;-><init>()V

    sput-object v0, Lio/grpc/internal/CompositeReadableBuffer;->STREAM_OP:Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    .line 50
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 45
    invoke-direct {p0}, Lio/grpc/internal/AbstractReadableBuffer;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    return-void
.end method

.method private advanceBuffer()V
    .locals 2

    .line 356
    iget-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->mark()V

    :cond_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    return-void
.end method

.method private advanceBufferIfNecessary()V
    .locals 1

    .line 346
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 347
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBuffer()V

    :cond_0
    return-void
.end method

.method private enqueueBuffer(Lio/grpc/internal/ReadableBuffer;)V
    .locals 2

    .line 68
    instance-of v0, p1, Lio/grpc/internal/CompositeReadableBuffer;

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 70
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    return-void

    .line 74
    :cond_0
    check-cast p1, Lio/grpc/internal/CompositeReadableBuffer;

    .line 75
    :goto_0
    iget-object v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 77
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_1
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    iget v1, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    const/4 v0, 0x0

    .line 80
    iput v0, p1, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 81
    invoke-virtual {p1}, Lio/grpc/internal/CompositeReadableBuffer;->close()V

    return-void
.end method

.method private execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;ILjava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/CompositeReadableBuffer$ReadOperation<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p2}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 311
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBufferIfNecessary()V

    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 315
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 316
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 317
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 320
    invoke-interface {p1, v0, v1, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;->read(Lio/grpc/internal/ReadableBuffer;ILjava/lang/Object;I)I

    move-result p4

    sub-int/2addr p2, v1

    .line 323
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, v1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 315
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBufferIfNecessary()V

    goto :goto_0

    :cond_1
    if-gtz p2, :cond_2

    return p4

    .line 328
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Failed executing read operation"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation<",
            "TT;>;ITT;I)I"
        }
    .end annotation

    .line 336
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;ILjava/lang/Object;I)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 338
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public addBuffer(Lio/grpc/internal/ReadableBuffer;)V
    .locals 1

    .line 60
    iget-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 61
    :goto_0
    invoke-direct {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->enqueueBuffer(Lio/grpc/internal/ReadableBuffer;)V

    if-eqz v0, :cond_1

    .line 63
    iget-object p1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {p1}, Lio/grpc/internal/ReadableBuffer;->mark()V

    :cond_1
    return-void
.end method

.method public byteBufferSupported()Z
    .locals 2

    .line 275
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    .line 276
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->byteBufferSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    .line 294
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    if-eqz v0, :cond_1

    .line 298
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 286
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mark()V
    .locals 3

    .line 242
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    .line 245
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 248
    iput-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    .line 249
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    if-eqz v0, :cond_2

    .line 251
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->mark()V

    :cond_2
    return-void
.end method

.method public markSupported()Z
    .locals 2

    .line 232
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    .line 233
    invoke-interface {v1}, Lio/grpc/internal/ReadableBuffer;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public readBytes(I)Lio/grpc/internal/ReadableBuffer;
    .locals 6

    if-gtz p1, :cond_0

    .line 192
    invoke-static {}, Lio/grpc/internal/ReadableBuffers;->empty()Lio/grpc/internal/ReadableBuffer;

    move-result-object p1

    return-object p1

    .line 194
    :cond_0
    invoke-virtual {p0, p1}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 195
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, p1

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    const/4 v0, 0x0

    move-object v1, v0

    .line 200
    :goto_0
    iget-object v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ReadableBuffer;

    .line 201
    invoke-interface {v2}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 204
    invoke-interface {v2, p1}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object p1

    const/4 v2, 0x0

    goto :goto_2

    .line 207
    :cond_1
    iget-boolean v4, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v4, :cond_2

    .line 208
    invoke-interface {v2, v3}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object v2

    .line 209
    invoke-direct {p0}, Lio/grpc/internal/CompositeReadableBuffer;->advanceBuffer()V

    goto :goto_1

    .line 211
    :cond_2
    iget-object v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/internal/ReadableBuffer;

    :goto_1
    sub-int/2addr p1, v3

    move-object v5, v2

    move v2, p1

    move-object p1, v5

    :goto_2
    if-nez v0, :cond_3

    move-object v0, p1

    goto :goto_4

    :cond_3
    if-nez v1, :cond_5

    .line 219
    new-instance v1, Lio/grpc/internal/CompositeReadableBuffer;

    const/4 v3, 0x2

    if-nez v2, :cond_4

    goto :goto_3

    .line 220
    :cond_4
    iget-object v4, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v3, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_3
    invoke-direct {v1, v3}, Lio/grpc/internal/CompositeReadableBuffer;-><init>(I)V

    .line 221
    invoke-virtual {v1, v0}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    move-object v0, v1

    .line 224
    :cond_5
    invoke-virtual {v1, p1}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    :goto_4
    if-gtz v2, :cond_6

    return-object v0

    :cond_6
    move p1, v2

    goto :goto_0
.end method

.method public readBytes(Lio/grpc/internal/CompositeReadableBuffer;I)V
    .locals 2

    .line 174
    invoke-virtual {p0, p2}, Lio/grpc/internal/CompositeReadableBuffer;->checkReadable(I)V

    .line 175
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    sub-int/2addr v0, p2

    iput v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    :goto_0
    if-lez p2, :cond_1

    .line 178
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    .line 179
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 180
    invoke-interface {v0, p2}, Lio/grpc/internal/ReadableBuffer;->readBytes(I)Lio/grpc/internal/ReadableBuffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    const/4 p2, 0x0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->buffers:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {p1, v1}, Lio/grpc/internal/CompositeReadableBuffer;->addBuffer(Lio/grpc/internal/ReadableBuffer;)V

    .line 184
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readBytes(Ljava/io/OutputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->STREAM_OP:Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p1, v1}, Lio/grpc/internal/CompositeReadableBuffer;->execute(Lio/grpc/internal/CompositeReadableBuffer$ReadOperation;ILjava/lang/Object;I)I

    return-void
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 146
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_BUF_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    return-void
.end method

.method public readBytes([BII)V
    .locals 1

    .line 127
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->BYTE_ARRAY_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    invoke-direct {p0, v0, p3, p1, p2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    return-void
.end method

.method public readUnsignedByte()I
    .locals 4

    .line 99
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->UBYTE_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public readableBytes()I
    .locals 1

    .line 86
    iget v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    return v0
.end method

.method public reset()V
    .locals 3

    .line 257
    iget-boolean v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->marked:Z

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    if-eqz v0, :cond_0

    .line 262
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v1

    .line 263
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->reset()V

    .line 264
    iget v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/2addr v2, v0

    iput v2, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    .line 266
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CompositeReadableBuffer;->rewindableBuffers:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ReadableBuffer;

    if-eqz v0, :cond_1

    .line 267
    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->reset()V

    .line 268
    iget-object v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBuffers:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 269
    iget v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->readableBytes()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lio/grpc/internal/CompositeReadableBuffer;->readableBytes:I

    goto :goto_0

    :cond_1
    return-void

    .line 258
    :cond_2
    new-instance v0, Ljava/nio/InvalidMarkException;

    invoke-direct {v0}, Ljava/nio/InvalidMarkException;-><init>()V

    throw v0
.end method

.method public skipBytes(I)V
    .locals 3

    .line 113
    sget-object v0, Lio/grpc/internal/CompositeReadableBuffer;->SKIP_OP:Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lio/grpc/internal/CompositeReadableBuffer;->executeNoThrow(Lio/grpc/internal/CompositeReadableBuffer$NoThrowReadOperation;ILjava/lang/Object;I)I

    return-void
.end method
