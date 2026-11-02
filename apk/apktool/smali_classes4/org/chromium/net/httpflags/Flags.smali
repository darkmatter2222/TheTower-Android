.class public final Lorg/chromium/net/httpflags/Flags;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Flags.java"

# interfaces
.implements Lorg/chromium/net/httpflags/FlagsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/httpflags/Flags$Builder;,
        Lorg/chromium/net/httpflags/Flags$FlagsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/net/httpflags/Flags;",
        "Lorg/chromium/net/httpflags/Flags$Builder;",
        ">;",
        "Lorg/chromium/net/httpflags/FlagsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

.field public static final FLAGS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/httpflags/Flags;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private flags_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetMutableFlagsMap(Lorg/chromium/net/httpflags/Flags;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags;->getMutableFlagsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/httpflags/Flags;
    .locals 1

    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 424
    new-instance v0, Lorg/chromium/net/httpflags/Flags;

    invoke-direct {v0}, Lorg/chromium/net/httpflags/Flags;-><init>()V

    .line 427
    sput-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    .line 428
    const-class v1, Lorg/chromium/net/httpflags/Flags;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/httpflags/Flags;->flags_:Lcom/google/protobuf/MapFieldLite;

    return-void
.end method

.method public static getDefaultInstance()Lorg/chromium/net/httpflags/Flags;
    .locals 1

    .line 433
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    return-object v0
.end method

.method private getMutableFlagsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags;->internalGetMutableFlags()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetFlags()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags;->flags_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableFlags()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags;->flags_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags;->flags_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/httpflags/Flags;->flags_:Lcom/google/protobuf/MapFieldLite;

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/httpflags/Flags;->flags_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lorg/chromium/net/httpflags/Flags$Builder;
    .locals 1

    .line 215
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/Flags;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/httpflags/Flags$Builder;

    return-object v0
.end method

.method public static newBuilder(Lorg/chromium/net/httpflags/Flags;)Lorg/chromium/net/httpflags/Flags$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 218
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-virtual {v0, p0}, Lorg/chromium/net/httpflags/Flags;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Lorg/chromium/net/httpflags/Flags;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Lorg/chromium/net/httpflags/Flags;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 154
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 141
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 148
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 166
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/Flags;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/httpflags/Flags;",
            ">;"
        }
    .end annotation

    .line 439
    sget-object v0, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/Flags;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsFlags(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags;->internalGetFlags()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 375
    sget-object p2, Lorg/chromium/net/httpflags/Flags$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 417
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 411
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 396
    :pswitch_2
    sget-object p1, Lorg/chromium/net/httpflags/Flags;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 398
    const-class p2, Lorg/chromium/net/httpflags/Flags;

    monitor-enter p2

    .line 399
    :try_start_0
    sget-object p1, Lorg/chromium/net/httpflags/Flags;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 401
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 404
    sput-object p1, Lorg/chromium/net/httpflags/Flags;->PARSER:Lcom/google/protobuf/Parser;

    .line 406
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

    .line 393
    :pswitch_3
    sget-object p1, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    return-object p1

    .line 383
    :pswitch_4
    const-string p1, "flags_"

    sget-object p2, Lorg/chromium/net/httpflags/Flags$FlagsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 387
    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 389
    sget-object p3, Lorg/chromium/net/httpflags/Flags;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/Flags;

    invoke-static {p3, p2, p1}, Lorg/chromium/net/httpflags/Flags;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 380
    :pswitch_5
    new-instance p1, Lorg/chromium/net/httpflags/Flags$Builder;

    invoke-direct {p1, p2}, Lorg/chromium/net/httpflags/Flags$Builder;-><init>(Lorg/chromium/net/httpflags/Flags-IA;)V

    return-object p1

    .line 377
    :pswitch_6
    new-instance p1, Lorg/chromium/net/httpflags/Flags;

    invoke-direct {p1}, Lorg/chromium/net/httpflags/Flags;-><init>()V

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

.method public getFlags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsCount()I
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags;->internalGetFlags()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getFlagsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags;->internalGetFlags()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFlagsOrDefault(Ljava/lang/String;Lorg/chromium/net/httpflags/FlagValue;)Lorg/chromium/net/httpflags/FlagValue;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags;->internalGetFlags()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 105
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/httpflags/FlagValue;

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getFlagsOrThrow(Ljava/lang/String;)Lorg/chromium/net/httpflags/FlagValue;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    invoke-direct {p0}, Lorg/chromium/net/httpflags/Flags;->internalGetFlags()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 121
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/net/httpflags/FlagValue;

    return-object p1

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
