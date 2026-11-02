.class public final Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "PrfBasedDeriverKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRF_KEY_TEMPLATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

.field private prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 365
    new-instance v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;-><init>()V

    .line 368
    sput-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    .line 369
    const-class v1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;Lcom/google/crypto/tink/proto/KeyTemplate;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->setPrfKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;Lcom/google/crypto/tink/proto/KeyTemplate;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->mergePrfKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->clearPrfKeyTemplate()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->setParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->mergeParams(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->clearParams()V

    return-void
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 113
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    return-void
.end method

.method private clearPrfKeyTemplate()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 65
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
    .locals 1

    .line 374
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

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

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 102
    invoke-static {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->newBuilder(Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;)Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    goto :goto_0

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 106
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    return-void
.end method

.method private mergePrfKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->getDefaultInstance()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 54
    invoke-static {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyTemplate;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;

    goto :goto_0

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 58
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;
    .locals 1

    .line 193
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 169
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 176
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 132
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 139
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 181
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 188
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 156
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 163
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 119
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 126
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 144
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;
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

    .line 151
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;",
            ">;"
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

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

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    .line 91
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    return-void
.end method

.method private setPrfKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    iput-object p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 43
    iget p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 314
    sget-object p2, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 358
    throw p2

    :pswitch_0
    const/4 p1, 0x1

    .line 351
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 336
    :pswitch_1
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 338
    const-class p2, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    monitor-enter p2

    .line 339
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 341
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 344
    sput-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 346
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

    .line 333
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    return-object p1

    .line 322
    :pswitch_3
    const-string p1, "bitField0_"

    const-string p2, "prfKeyTemplate_"

    const-string p3, "params_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 327
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    .line 330
    sget-object p3, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 319
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat$1;)V

    return-object p1

    .line 316
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;-><init>()V

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

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->getDefaultInstanceForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->params_:Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrfKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->prfKeyTemplate_:Lcom/google/crypto/tink/proto/KeyTemplate;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->getDefaultInstance()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasParams()Z
    .locals 1

    .line 75
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrfKeyTemplate()Z
    .locals 2

    .line 27
    iget v0, p0, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->bitField0_:I

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

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    .locals 1

    .line 11
    invoke-super {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method
