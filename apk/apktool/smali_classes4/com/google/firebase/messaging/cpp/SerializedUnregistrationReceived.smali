.class public final Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;
.super Lcom/google/flatbuffers/Table;
.source "SerializedUnregistrationReceived.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived$Vector;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static ValidateVersion()V
    .locals 0

    .line 24
    invoke-static {}, Lcom/google/flatbuffers/Constants;->FLATBUFFERS_25_2_10()V

    return-void
.end method

.method static synthetic access$000(ILjava/nio/ByteBuffer;)I
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addInstallationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createSerializedUnregistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;I)I
    .locals 1

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 37
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->addInstallationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 38
    invoke-static {p0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->endSerializedUnregistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endSerializedUnregistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result p0

    return p0
.end method

.method public static getRootAsSerializedUnregistrationReceived(Ljava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;

    invoke-direct {v0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;-><init>()V

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->getRootAsSerializedUnregistrationReceived(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;)Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsSerializedUnregistrationReceived(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;)Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;
    .locals 2

    .line 26
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;

    move-result-object p0

    return-object p0
.end method

.method public static startSerializedUnregistrationReceived(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public installationId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public installationIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public installationIdInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedUnregistrationReceived;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
