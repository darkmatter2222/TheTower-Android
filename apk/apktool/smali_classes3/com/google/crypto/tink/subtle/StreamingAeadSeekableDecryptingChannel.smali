.class Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;
.super Ljava/lang/Object;
.source "StreamingAeadSeekableDecryptingChannel.java"

# interfaces
.implements Ljava/nio/channels/SeekableByteChannel;


# static fields
.field private static final PLAINTEXT_SEGMENT_EXTRA_SIZE:I = 0x10


# instance fields
.field private final aad:[B

.field private final ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

.field private final ciphertextChannelSize:J

.field private final ciphertextOffset:I

.field private final ciphertextSegment:Ljava/nio/ByteBuffer;

.field private final ciphertextSegmentSize:I

.field private currentSegmentNr:I

.field private final decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

.field private final firstSegmentOffset:I

.field private final header:Ljava/nio/ByteBuffer;

.field private headerRead:Z

.field private isCurrentSegmentDecrypted:Z

.field private isopen:Z

.field private final lastCiphertextSegmentSize:I

.field private final numberOfSegments:I

.field private plaintextPosition:J

.field private final plaintextSegment:Ljava/nio/ByteBuffer;

.field private final plaintextSegmentSize:I

.field private plaintextSize:J


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;Ljava/nio/channels/SeekableByteChannel;[B)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamAead",
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    .line 67
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    .line 68
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getHeaderLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    .line 69
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextSegmentSize()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    .line 70
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 71
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getPlaintextSegmentSize()I

    move-result v1

    iput v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegmentSize:I

    add-int/lit8 v1, v1, 0x10

    .line 72
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    const-wide/16 v1, 0x0

    .line 73
    iput-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z

    const/4 v2, -0x1

    .line 75
    iput v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    .line 76
    iput-boolean v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    .line 77
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannelSize:J

    .line 78
    array-length v3, p3

    invoke-static {p3, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p3

    iput-object p3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->aad:[B

    .line 79
    invoke-interface {p2}, Ljava/nio/channels/SeekableByteChannel;->isOpen()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z

    int-to-long p2, v0

    .line 80
    div-long p2, v1, p2

    long-to-int p2, p2

    int-to-long v3, v0

    .line 81
    rem-long v3, v1, v3

    long-to-int p3, v3

    .line 82
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOverhead()I

    move-result v3

    if-lez p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 84
    iput p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    if-lt p3, v3, :cond_0

    .line 88
    iput p3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->lastCiphertextSegmentSize:I

    goto :goto_0

    .line 86
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid ciphertext size"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_1
    iput p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    .line 91
    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->lastCiphertextSegmentSize:I

    .line 93
    :goto_0
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOffset()I

    move-result p2

    iput p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    .line 94
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getHeaderLength()I

    move-result p1

    sub-int p1, p2, p1

    iput p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->firstSegmentOffset:I

    if-ltz p1, :cond_3

    .line 98
    iget p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    int-to-long v4, p1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    int-to-long p1, p2

    add-long/2addr v4, p1

    cmp-long p1, v4, v1

    if-gtz p1, :cond_2

    sub-long/2addr v1, v4

    .line 102
    iput-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    return-void

    .line 100
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Ciphertext is too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Invalid ciphertext offset or header length"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getSegmentNr(J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plaintextPosition"
        }
    .end annotation

    .line 204
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegmentSize:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private reachedEnd()Z
    .locals 4

    .line 283
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    iget v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    .line 286
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private tryLoadSegment(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "segmentNr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_9

    .line 217
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    if-ge p1, v0, :cond_9

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 221
    :goto_0
    iget v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    if-ne p1, v3, :cond_1

    .line 222
    iget-boolean v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    if-eqz v3, :cond_4

    return v1

    :cond_1
    int-to-long v3, p1

    .line 227
    iget v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    int-to-long v6, v5

    mul-long/2addr v3, v6

    if-eqz v0, :cond_2

    .line 230
    iget v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->lastCiphertextSegmentSize:I

    :cond_2
    if-nez p1, :cond_3

    .line 233
    iget v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    sub-int/2addr v5, v3

    int-to-long v3, v3

    .line 236
    :cond_3
    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v6, v3, v4}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 237
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 238
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 239
    iput p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    .line 240
    iput-boolean v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    .line 242
    :cond_4
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const/4 v4, -0x1

    if-lez v3, :cond_7

    .line 243
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 244
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-interface {v5, v6}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    if-eq v5, v4, :cond_6

    .line 249
    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    sub-int v6, v3, v6

    if-ne v5, v6, :cond_5

    goto :goto_1

    .line 250
    :cond_5
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected return value from ciphertextChannel.read(ciphertextSegment). remainingDataBeforeRead = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ciphertextSegment.remaining() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but read returned "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 246
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unexpected end-of-stream: ciphertextChannel.read(ciphertextSegment) returned -1"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_8

    return v2

    .line 263
    :cond_8
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 264
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, p1, v0, v5}, Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;->decryptSegment(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 274
    iput-boolean v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    return v1

    :catch_0
    move-exception p1

    .line 270
    iput v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    .line 271
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to decrypt"

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 218
    :cond_9
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid position"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private tryReadHeader()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->firstSegmentOffset:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Ljava/nio/channels/SeekableByteChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 173
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/SeekableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 179
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int v2, v0, v2

    if-ne v1, v2, :cond_1

    .line 188
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->aad:[B

    invoke-interface {v0, v1, v2}, Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;->init(Ljava/nio/ByteBuffer;[B)V

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 197
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 180
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected return value from ciphertextChannel.read(header). headerSize = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", header.remaining() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    .line 184
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", but read returned "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected end-of-stream: ciphertextChannel.read(header) returned -1"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->close()V

    const/4 v0, 0x0

    .line 384
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 389
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized position()J
    .locals 2

    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized position(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newPosition"
        }
    .end annotation

    monitor-enter p0

    .line 158
    :try_start_0
    iput-wide p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dst"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 307
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isopen:Z

    if-eqz v0, :cond_5

    .line 310
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z

    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->tryReadHeader()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 312
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 315
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 316
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_3

    iget-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    iget-wide v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    .line 319
    invoke-direct {p0, v1, v2}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->getSegmentNr(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 322
    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    :goto_1
    long-to-int v2, v2

    goto :goto_2

    .line 324
    :cond_1
    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextOffset:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegmentSize:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    goto :goto_1

    .line 327
    :goto_2
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->tryLoadSegment(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 329
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 330
    iget-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    .line 331
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 334
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 336
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 337
    iget-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    .line 338
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    sub-int/2addr p1, v0

    if-nez p1, :cond_4

    .line 345
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->reachedEnd()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 346
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    .line 348
    :cond_4
    monitor-exit p0

    return p1

    .line 308
    :cond_5
    :try_start_2
    new-instance p1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized read(Ljava/nio/ByteBuffer;J)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dst",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 298
    :try_start_1
    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 301
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->position(J)Ljava/nio/channels/SeekableByteChannel;

    .line 302
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public size()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    return-wide v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 8

    const-string v0, "\nplaintextSegment position:"

    const-string v1, "\nciphertextSgement position:"

    const-string v2, "\nHeader position:"

    const-string v3, "position:"

    const-string v4, "StreamingAeadSeekableDecryptingChannel\nciphertextChannel"

    monitor-enter p0

    .line 112
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannel:Ljava/nio/channels/SeekableByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 118
    :catch_0
    :try_start_2
    const-string v3, "position: n/a"

    .line 121
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nciphertextChannelSize:"

    .line 122
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextChannelSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nplaintextSize:"

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nciphertextSegmentSize:"

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegmentSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nnumberOfSegments:"

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nheaderRead:"

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->headerRead:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nplaintextPosition:"

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextPosition:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 129
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " limit:"

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\ncurrentSegmentNr:"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->currentSegmentNr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit:"

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nisCurrentSegmentDecrypted:"

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->isCurrentSegmentDecrypted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " limit:"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public truncate(J)Ljava/nio/channels/SeekableByteChannel;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NonWritableChannelException;
        }
    .end annotation

    .line 373
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
.end method

.method public declared-synchronized verifiedSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_0
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->numberOfSegments:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->tryLoadSegment(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-wide v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadSeekableDecryptingChannel;->plaintextSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 367
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "could not verify the size"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NonWritableChannelException;
        }
    .end annotation

    .line 378
    new-instance p1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {p1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw p1
.end method
