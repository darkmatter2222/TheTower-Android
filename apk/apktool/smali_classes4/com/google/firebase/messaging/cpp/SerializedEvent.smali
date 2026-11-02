.class public final Lcom/google/firebase/messaging/cpp/SerializedEvent;
.super Lcom/google/flatbuffers/Table;
.source "SerializedEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/cpp/SerializedEvent$Vector;
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
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method public static addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0, v0, p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;BI)I
    .locals 1

    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    .line 37
    invoke-static {p0, p2}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEvent(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 38
    invoke-static {p0, p1}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->addEventType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 39
    invoke-static {p0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->endSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    return p0
.end method

.method public static endSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->endTable()I

    move-result p0

    return p0
.end method

.method public static finishSerializedEventBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    return-void
.end method

.method public static finishSizePrefixedSerializedEventBuffer(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finishSizePrefixed(I)V

    return-void
.end method

.method public static getRootAsSerializedEvent(Ljava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedEvent;
    .locals 1

    .line 25
    new-instance v0, Lcom/google/firebase/messaging/cpp/SerializedEvent;

    invoke-direct {v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;-><init>()V

    invoke-static {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->getRootAsSerializedEvent(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedEvent;)Lcom/google/firebase/messaging/cpp/SerializedEvent;

    move-result-object p0

    return-object p0
.end method

.method public static getRootAsSerializedEvent(Ljava/nio/ByteBuffer;Lcom/google/firebase/messaging/cpp/SerializedEvent;)Lcom/google/firebase/messaging/cpp/SerializedEvent;
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

    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->__assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedEvent;

    move-result-object p0

    return-object p0
.end method

.method public static startSerializedEvent(Lcom/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1

    const/4 v0, 0x2

    .line 42
    invoke-virtual {p0, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->startTable(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/google/firebase/messaging/cpp/SerializedEvent;
    .locals 0

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->__reset(ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public event(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;
    .locals 2

    const/4 v0, 0x6

    .line 31
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/firebase/messaging/cpp/SerializedEvent;->bb_pos:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->__union(Lcom/google/flatbuffers/Table;I)Lcom/google/flatbuffers/Table;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public eventType()B
    .locals 3

    const/4 v0, 0x4

    .line 30
    invoke-virtual {p0, v0}, Lcom/google/firebase/messaging/cpp/SerializedEvent;->__offset(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/messaging/cpp/SerializedEvent;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/firebase/messaging/cpp/SerializedEvent;->bb_pos:I

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
