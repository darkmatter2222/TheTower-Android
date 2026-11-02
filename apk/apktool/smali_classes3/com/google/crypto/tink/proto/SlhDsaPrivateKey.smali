.class public final Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "SlhDsaPrivateKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/SlhDsaPrivateKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;",
        "Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/SlhDsaPrivateKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

.field public static final KEY_VALUE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x3

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

.field private publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 481
    new-instance v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;-><init>()V

    .line 484
    sput-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    .line 485
    const-class v1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->clearKeyValue()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->setPublicKey(Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->mergePublicKey(Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->clearPublicKey()V

    return-void
.end method

.method private clearKeyValue()V
    .locals 1

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    .line 167
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->bitField0_:I

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
    .locals 1

    .line 490
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object v0
.end method

.method private mergePublicKey(Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iget-object v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    if-eqz v0, :cond_0

    .line 150
    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    .line 152
    invoke-static {v0}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->newBuilder(Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    goto :goto_0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    .line 156
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;
    .locals 1

    .line 247
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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

    .line 223
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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

    .line 230
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 193
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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

    .line 235
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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

    .line 242
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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

    .line 210
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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

    .line 217
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 173
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 180
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;
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
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 205
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;",
            ">;"
        }
    .end annotation

    .line 496
    sget-object v0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    iput-object p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-void
.end method

.method private setPublicKey(Lcom/google/crypto/tink/proto/SlhDsaPublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    iput-object p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    .line 137
    iget p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->bitField0_:I

    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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

    .line 429
    sget-object p2, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 474
    throw p2

    :pswitch_0
    const/4 p1, 0x1

    .line 467
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 452
    :pswitch_1
    sget-object p1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 454
    const-class p2, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    monitor-enter p2

    .line 455
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 457
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 460
    sput-object p1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 462
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

    .line 449
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    return-object p1

    .line 437
    :pswitch_3
    const-string p1, "bitField0_"

    const-string p2, "version_"

    const-string p3, "keyValue_"

    const-string v0, "publicKey_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 443
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\u1009\u0000"

    .line 446
    sget-object p3, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 434
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/proto/SlhDsaPrivateKey$1;)V

    return-object p1

    .line 431
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->keyValue_:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/proto/SlhDsaPublicKey;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->publicKey_:Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/SlhDsaPublicKey;->getDefaultInstance()Lcom/google/crypto/tink/proto/SlhDsaPublicKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->version_:I

    return v0
.end method

.method public hasPublicKey()Z
    .locals 2

    .line 113
    iget v0, p0, Lcom/google/crypto/tink/proto/SlhDsaPrivateKey;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
