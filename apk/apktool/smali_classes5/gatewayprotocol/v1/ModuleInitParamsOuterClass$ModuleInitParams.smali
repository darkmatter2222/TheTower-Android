.class public final Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ModuleInitParamsOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParamsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/ModuleInitParamsOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleInitParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
        "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;",
        ">;",
        "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParamsOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLASS_NAME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private className_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private params_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 605
    new-instance v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-direct {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;-><init>()V

    .line 608
    sput-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    .line 609
    const-class v1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 80
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->name_:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->params_:Lcom/google/protobuf/ByteString;

    .line 83
    iput-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->className_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1

    .line 75
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->setParams(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->clearParams()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->setClassName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->clearClassName()V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->setClassNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearClassName()V
    .locals 1

    .line 245
    invoke-static {}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getDefaultInstance()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->className_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 135
    invoke-static {}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getDefaultInstance()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearParams()V
    .locals 1

    .line 188
    invoke-static {}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getDefaultInstance()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getParams()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->params_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1

    .line 614
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 340
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;
    .locals 1

    .line 343
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 279
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 286
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 266
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 273
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 291
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 298
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;",
            ">;"
        }
    .end annotation

    .line 620
    sget-object v0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-virtual {v0}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setClassName(Ljava/lang/String;)V
    .locals 0

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->className_:Ljava/lang/String;

    return-void
.end method

.method private setClassNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 258
    invoke-static {p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 259
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->className_:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 147
    invoke-static {p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 148
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->name_:Ljava/lang/String;

    return-void
.end method

.method private setParams(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    iput-object p1, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->params_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 554
    sget-object p2, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 598
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 592
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 577
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 579
    const-class p2, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    monitor-enter p2

    .line 580
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 582
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 585
    sput-object p1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->PARSER:Lcom/google/protobuf/Parser;

    .line 587
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

    .line 574
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    return-object p1

    .line 562
    :pswitch_4
    const-string p1, "name_"

    const-string p2, "params_"

    const-string p3, "className_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 567
    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u0208"

    .line 570
    sget-object p3, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 559
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams$Builder;-><init>(Lgatewayprotocol/v1/ModuleInitParamsOuterClass$1;)V

    return-object p1

    .line 556
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;

    invoke-direct {p1}, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;-><init>()V

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

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->className_:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 218
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->className_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 110
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 164
    iget-object v0, p0, Lgatewayprotocol/v1/ModuleInitParamsOuterClass$ModuleInitParams;->params_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
