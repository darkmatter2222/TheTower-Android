.class Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;
.super Ljava/io/FilterInputStream;
.source "StreamingAeadDecryptingStream.java"


# static fields
.field private static final PLAINTEXT_SEGMENT_EXTRA_SIZE:I = 0x10


# instance fields
.field private final aad:[B

.field private final ciphertextSegment:Ljava/nio/ByteBuffer;

.field private final ciphertextSegmentSize:I

.field private final decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

.field private decryptionErrorOccured:Z

.field private endOfCiphertext:Z

.field private endOfPlaintext:Z

.field private final firstCiphertextSegmentSize:I

.field private final headerLength:I

.field private headerRead:Z

.field private final plaintextSegment:Ljava/nio/ByteBuffer;

.field private segmentNr:I


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;Ljava/io/InputStream;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamAead",
            "ciphertextStream",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 95
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->newStreamSegmentDecrypter()Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    move-result-object p2

    iput-object p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    .line 96
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getHeaderLength()I

    move-result p2

    iput p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->headerLength:I

    .line 97
    array-length p2, p3

    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->aad:[B

    .line 101
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextSegmentSize()I

    move-result p2

    iput p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegmentSize:I

    add-int/lit8 p3, p2, 0x1

    .line 102
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 103
    invoke-static {p3}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 104
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getCiphertextOffset()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->firstCiphertextSegmentSize:I

    .line 105
    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/NonceBasedStreamingAead;->getPlaintextSegmentSize()I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    .line 107
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->headerRead:Z

    .line 109
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    .line 110
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfPlaintext:Z

    .line 111
    iput v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->segmentNr:I

    .line 112
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->decryptionErrorOccured:Z

    return-void
.end method

.method private loadSegment()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    :goto_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 158
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 157
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 164
    iput-boolean v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 167
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not read bytes from the ciphertext stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected return value from in.read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_3
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    if-nez v0, :cond_4

    .line 174
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 175
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 177
    :goto_1
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 178
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->segmentNr:I

    iget-boolean v5, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;->decryptSegment(Ljava/nio/ByteBuffer;IZLjava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->segmentNr:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->segmentNr:I

    .line 196
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 197
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 198
    iget-boolean v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    if-nez v2, :cond_5

    .line 199
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 200
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    iget v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegmentSize:I

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 201
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 184
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->setDecryptionErrorOccured()V

    .line 185
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 188
    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nsegmentNr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->segmentNr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endOfCiphertext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readHeader()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->headerRead:Z

    if-nez v0, :cond_3

    .line 126
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->headerLength:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 127
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_2

    .line 128
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    if-eqz v1, :cond_0

    .line 136
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v2

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not read bytes from the ciphertext stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->setDecryptionErrorOccured()V

    .line 131
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Ciphertext is too short"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_2
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->decrypter:Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->aad:[B

    invoke-interface {v1, v0, v2}, Lcom/google/crypto/tink/subtle/StreamSegmentDecrypter;->init(Ljava/nio/ByteBuffer;[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->headerRead:Z

    return-void

    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    :cond_3
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->setDecryptionErrorOccured()V

    .line 124
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Decryption failed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDecryptionErrorOccured()V
    .locals 2

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->decryptionErrorOccured:Z

    .line 149
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 1

    monitor-enter p0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0
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

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
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

.method public declared-synchronized mark(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readlimit"
        }
    .end annotation

    monitor-enter p0

    .line 269
    monitor-exit p0

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 207
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->read([BII)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 210
    aget-byte v0, v1, v2

    and-int/lit16 v0, v0, 0xff

    return v0

    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    return v3

    .line 214
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Reading failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .locals 2
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

    const/4 v0, 0x0

    .line 220
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dst",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 225
    :try_start_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->decryptionErrorOccured:Z

    if-nez v0, :cond_6

    .line 228
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->headerRead:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->readHeader()V

    .line 230
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 231
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->toBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/Buffer;

    move-result-object v0

    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->firstCiphertextSegmentSize:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfPlaintext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    if-eqz v0, :cond_1

    .line 234
    monitor-exit p0

    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_4

    .line 238
    :try_start_1
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_3

    .line 239
    iget-boolean v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    if-eqz v3, :cond_2

    .line 240
    iput-boolean v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfPlaintext:Z

    goto :goto_1

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->loadSegment()V

    .line 245
    :cond_3
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int v4, p3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 246
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    add-int v5, v0, p2

    invoke-virtual {v4, p1, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v0, v3

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v0, :cond_5

    .line 249
    iget-boolean p1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfPlaintext:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    .line 250
    monitor-exit p0

    return v2

    .line 252
    :cond_5
    monitor-exit p0

    return v0

    .line 226
    :cond_6
    :try_start_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Decryption failed."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget v0, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegmentSize:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_0

    return-wide v2

    .line 297
    :cond_0
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 298
    new-array v1, v0, [B

    move-wide v4, p1

    :goto_0
    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    int-to-long v6, v0

    .line 300
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v1, v7, v6}, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->read([BII)I

    move-result v6

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v6, v6

    sub-long/2addr v4, v6

    goto :goto_0

    :cond_2
    :goto_1
    sub-long/2addr p1, v4

    return-wide p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    const-string v0, "\nplaintextSegment position:"

    const-string v1, "\nciphertextSgement position:"

    const-string v2, "StreamingAeadDecryptingStream\nsegmentNr:"

    monitor-enter p0

    .line 312
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    iget v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->segmentNr:I

    .line 315
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nciphertextSegmentSize:"

    .line 316
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegmentSize:I

    .line 317
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nheaderRead:"

    .line 318
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->headerRead:Z

    .line 319
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nendOfCiphertext:"

    .line 320
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfCiphertext:Z

    .line 321
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\nendOfPlaintext:"

    .line 322
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->endOfPlaintext:Z

    .line 323
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\ndecryptionErrorOccured:"

    .line 324
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->decryptionErrorOccured:Z

    .line 325
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 326
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 328
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " limit:"

    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->ciphertextSegment:Ljava/nio/ByteBuffer;

    .line 330
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    .line 333
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " limit:"

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/StreamingAeadDecryptingStream;->plaintextSegment:Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
