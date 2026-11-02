.class public final Lcom/google/firebase/messaging/cpp/SerializedNotification;
.super Lcom/google/flatbuffers/Table;
.source "SerializedNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/cpp/SerializedNotification$Vector;
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
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addAndroidChannelId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addBadge(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addBodyLocArgs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addBodyLocKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addClickAction(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addColor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addIcon(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSound(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTitle(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTitleLocArgs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTitleLocKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 116
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createBodyLocArgsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    const/4 v0, 0x4

    .line 114
    array-length v1, p1

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static createSerializedNotification(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIIIIIIIIII)I
    .locals 1

    const/16 v0, 0xd

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 87
    invoke-static {p0, p13}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addAndroidChannelId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 88
    invoke-static {p0, p12}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addTitleLocArgs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 89
    invoke-static {p0, p11}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addTitleLocKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 90
    invoke-static {p0, p10}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addBodyLocArgs(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 91
    invoke-static {p0, p9}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addBodyLocKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 92
    invoke-static {p0, p8}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addClickAction(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 93
    invoke-static {p0, p7}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addColor(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 94
    invoke-static {p0, p6}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addTag(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 95
    invoke-static {p0, p5}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addBadge(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 96
    invoke-static {p0, p4}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addSound(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 97
    invoke-static {p0, p3}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addIcon(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 98
    invoke-static {p0, p2}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 99
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->addTitle(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 100
    invoke-static {p0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->endSerializedNotification(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static createTitleLocArgsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 2

    const/4 v0, 0x4

    .line 118
    array-length v1, p1

    invoke-virtual {p0, v0, v1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result p0

    return p0
.end method

.method public static endSerializedNotification(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result p0

    return p0
.end method

.method public static getRootAsSerializedNotification(Ljava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedNotification;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/firebase/messaging/cpp/SerializedNotification;

    invoke-direct {v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;-><init>()V

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->getRootAsSerializedNotification(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedNotification;)Lcom/google/firebase/messaging/cpp/SerializedNotification;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsSerializedNotification(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedNotification;)Lcom/google/firebase/messaging/cpp/SerializedNotification;
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

    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedNotification;

    move-result-object p0

    return-object p0
.end method

.method public static startBodyLocArgsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    .line 115
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startSerializedNotification(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/16 v0, 0xd

    .line 103
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method

.method public static startTitleLocArgsVector(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1

    const/4 v0, 0x4

    .line 119
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedNotification;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public androidChannelId()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x1c

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public androidChannelIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x1c

    const/4 v1, 0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public androidChannelIdInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x1c

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public badge()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public badgeAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 43
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public badgeInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xc

    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public body()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x6

    .line 33
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bodyAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bodyInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 35
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public bodyLocArgs(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x16

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector(I)I

    move-result v0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bodyLocArgsLength()I
    .locals 1

    const/16 v0, 0x16

    .line 58
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_len(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bodyLocArgsVector()Lcom/google/flatbuffers/StringVector;
    .locals 1

    .line 59
    new-instance v0, Lcom/google/flatbuffers/StringVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/StringVector;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bodyLocArgsVector(Lcom/google/flatbuffers/StringVector;)Lcom/google/flatbuffers/StringVector;

    move-result-object v0

    return-object v0
.end method

.method public bodyLocArgsVector(Lcom/google/flatbuffers/StringVector;)Lcom/google/flatbuffers/StringVector;
    .locals 3

    const/16 v0, 0x16

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector(I)I

    move-result v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/flatbuffers/StringVector;->__assign(IILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/StringVector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bodyLocKey()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x14

    .line 54
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bodyLocKeyAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bodyLocKeyInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    .line 56
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public clickAction()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x12

    .line 51
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public clickActionAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x1

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clickActionInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x12

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public color()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public colorAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 49
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public colorInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 50
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public icon()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iconAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 37
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public iconInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public sound()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    .line 39
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public soundAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public soundInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public tag()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xe

    .line 45
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public tagAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public tagInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public title()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public titleAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public titleInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x1

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public titleLocArgs(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1a

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector(I)I

    move-result v0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public titleLocArgsLength()I
    .locals 1

    const/16 v0, 0x1a

    .line 65
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_len(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public titleLocArgsVector()Lcom/google/flatbuffers/StringVector;
    .locals 1

    .line 66
    new-instance v0, Lcom/google/flatbuffers/StringVector;

    invoke-direct {v0}, Lcom/google/flatbuffers/StringVector;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->titleLocArgsVector(Lcom/google/flatbuffers/StringVector;)Lcom/google/flatbuffers/StringVector;

    move-result-object v0

    return-object v0
.end method

.method public titleLocArgsVector(Lcom/google/flatbuffers/StringVector;)Lcom/google/flatbuffers/StringVector;
    .locals 3

    const/16 v0, 0x1a

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector(I)I

    move-result v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/flatbuffers/StringVector;->__assign(IILjava/nio/ByteBuffer;)Lcom/google/flatbuffers/StringVector;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public titleLocKey()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x18

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedNotification;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__string(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public titleLocKeyAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public titleLocKeyInByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x1

    .line 63
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/firebase/messaging/cpp/SerializedNotification;->__vector_in_bytebuffer(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method
