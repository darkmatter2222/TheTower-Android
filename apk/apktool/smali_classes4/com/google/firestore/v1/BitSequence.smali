.class public final Lcom/google/firestore/v1/BitSequence;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BitSequence.java"

# interfaces
.implements Lcom/google/firestore/v1/BitSequenceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/BitSequence$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/BitSequence;",
        "Lcom/google/firestore/v1/BitSequence$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BitSequenceOrBuilder;"
    }
.end annotation


# static fields
.field public static final BITMAP_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

.field public static final PADDING_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BitSequence;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitmap_:Lcom/google/protobuf/ByteString;

.field private padding_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 383
    new-instance v0, Lcom/google/firestore/v1/BitSequence;

    invoke-direct {v0}, Lcom/google/firestore/v1/BitSequence;-><init>()V

    .line 386
    sput-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    .line 387
    const-class v1, Lcom/google/firestore/v1/BitSequence;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/BitSequence;->bitmap_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/BitSequence;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/BitSequence;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BitSequence;->setBitmap(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/BitSequence;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/firestore/v1/BitSequence;->clearBitmap()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/BitSequence;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BitSequence;->setPadding(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/BitSequence;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/firestore/v1/BitSequence;->clearPadding()V

    return-void
.end method

.method private clearBitmap()V
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/firestore/v1/BitSequence;->getDefaultInstance()Lcom/google/firestore/v1/BitSequence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/BitSequence;->getBitmap()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BitSequence;->bitmap_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPadding()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/google/firestore/v1/BitSequence;->padding_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/BitSequence;
    .locals 1

    .line 392
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/BitSequence$Builder;
    .locals 1

    .line 199
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BitSequence;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BitSequence$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/BitSequence;)Lcom/google/firestore/v1/BitSequence$Builder;
    .locals 1

    .line 202
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/BitSequence;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/BitSequence;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 182
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/BitSequence;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 145
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BitSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/BitSequence;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BitSequence;",
            ">;"
        }
    .end annotation

    .line 398
    sget-object v0, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BitSequence;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBitmap(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lcom/google/firestore/v1/BitSequence;->bitmap_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPadding(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/google/firestore/v1/BitSequence;->padding_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 333
    sget-object p2, Lcom/google/firestore/v1/BitSequence$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 376
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 370
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 355
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/BitSequence;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 357
    const-class p2, Lcom/google/firestore/v1/BitSequence;

    monitor-enter p2

    .line 358
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/BitSequence;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 360
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 363
    sput-object p1, Lcom/google/firestore/v1/BitSequence;->PARSER:Lcom/google/protobuf/Parser;

    .line 365
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 352
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    return-object p1

    .line 341
    :pswitch_4
    const-string p1, "bitmap_"

    const-string p2, "padding_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 345
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0004"

    .line 348
    sget-object p3, Lcom/google/firestore/v1/BitSequence;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BitSequence;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/BitSequence;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 338
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/BitSequence$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/BitSequence$Builder;-><init>(Lcom/google/firestore/v1/BitSequence$1;)V

    return-object p1

    .line 335
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/BitSequence;

    invoke-direct {p1}, Lcom/google/firestore/v1/BitSequence;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBitmap()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firestore/v1/BitSequence;->bitmap_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPadding()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/google/firestore/v1/BitSequence;->padding_:I

    return v0
.end method
