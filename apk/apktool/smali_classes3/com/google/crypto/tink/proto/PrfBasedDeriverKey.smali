.class public final Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "PrfBasedDeriverKey.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

.field public static final PARAMS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRF_KEY_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

.field private prfKey_:Lcom/google/crypto/tink/proto/KeyData;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 428
    new-instance v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;-><init>()V

    .line 431
    sput-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    .line 432
    const-class v1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/KeyData;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->setPrfKey(Lcom/google/crypto/tink/proto/KeyData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/KeyData;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->mergePrfKey(Lcom/google/crypto/tink/proto/KeyData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->clearPrfKey()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->mergeParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->clearParams()V

    return-void
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 143
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private clearPrfKey()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 95
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
    .locals 1

    .line 437
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    if-eqz v0, :cond_0

    .line 130
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 132
    invoke-static {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->newBuilder(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    goto :goto_0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 136
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private mergePrfKey(Lcom/google/crypto/tink/proto/KeyData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->getDefaultInstance()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 84
    invoke-static {v0}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    goto :goto_0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 88
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;
    .locals 1

    .line 223
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 199
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 206
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 162
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 169
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 211
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 218
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 186
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 193
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 149
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 156
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 174
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;
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

    .line 181
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;",
            ">;"
        }
    .end annotation

    .line 443
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 121
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    return-void
.end method

.method private setPrfKey(Lcom/google/crypto/tink/proto/KeyData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    .line 73
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

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

    .line 40
    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->version_:I

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

    .line 376
    sget-object p2, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 421
    throw p2

    :pswitch_0
    const/4 p1, 0x1

    .line 414
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 399
    :pswitch_1
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 401
    const-class p2, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    monitor-enter p2

    .line 402
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 404
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 407
    sput-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 409
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

    .line 396
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    return-object p1

    .line 384
    :pswitch_3
    const-string p1, "bitField0_"

    const-string p2, "version_"

    const-string p3, "prfKey_"

    const-string v0, "params_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 390
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000\u0003\u1009\u0001"

    .line 393
    sget-object p3, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 381
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$Builder;-><init>(Lcom/google/crypto/tink/proto/PrfBasedDeriverKey$1;)V

    return-object p1

    .line 378
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;-><init>()V

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

.method public getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrfKey()Lcom/google/crypto/tink/proto/KeyData;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->prfKey_:Lcom/google/crypto/tink/proto/KeyData;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->getDefaultInstance()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->version_:I

    return v0
.end method

.method public hasParams()Z
    .locals 1

    .line 105
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrfKey()Z
    .locals 2

    .line 57
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->bitField0_:I

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
