.class public final Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;
.source "MlDsaKeyFormat.java"

# interfaces
.implements Lcom/google/crypto/tink/proto/MlDsaKeyFormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite<",
        "Lcom/google/crypto/tink/proto/MlDsaKeyFormat;",
        "Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;",
        ">;",
        "Lcom/google/crypto/tink/proto/MlDsaKeyFormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

.field public static final PARAMS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/MlDsaKeyFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private params_:Lcom/google/crypto/tink/proto/MlDsaParams;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 392
    new-instance v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-direct {v0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;-><init>()V

    .line 395
    sput-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    .line 396
    const-class v1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/proto/MlDsaKeyFormat;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->setVersion(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/proto/MlDsaKeyFormat;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/proto/MlDsaKeyFormat;Lcom/google/crypto/tink/proto/MlDsaParams;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->setParams(Lcom/google/crypto/tink/proto/MlDsaParams;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/proto/MlDsaKeyFormat;Lcom/google/crypto/tink/proto/MlDsaParams;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->mergeParams(Lcom/google/crypto/tink/proto/MlDsaParams;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/proto/MlDsaKeyFormat;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->clearParams()V

    return-void
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->params_:Lcom/google/crypto/tink/proto/MlDsaParams;

    .line 123
    iget v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->bitField0_:I

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
    .locals 1

    .line 401
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object v0
.end method

.method private mergeParams(Lcom/google/crypto/tink/proto/MlDsaParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iget-object v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->params_:Lcom/google/crypto/tink/proto/MlDsaParams;

    if-eqz v0, :cond_0

    .line 106
    invoke-static {}, Lcom/google/crypto/tink/proto/MlDsaParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/MlDsaParams;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->params_:Lcom/google/crypto/tink/proto/MlDsaParams;

    .line 108
    invoke-static {v0}, Lcom/google/crypto/tink/proto/MlDsaParams;->newBuilder(Lcom/google/crypto/tink/proto/MlDsaParams;)Lcom/google/crypto/tink/proto/MlDsaParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/MlDsaParams$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/MlDsaParams$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/MlDsaParams$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/MlDsaParams;

    iput-object p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->params_:Lcom/google/crypto/tink/proto/MlDsaParams;

    goto :goto_0

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->params_:Lcom/google/crypto/tink/proto/MlDsaParams;

    .line 112
    :goto_0
    iget p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;
    .locals 1

    .line 203
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->createBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/crypto/tink/proto/MlDsaKeyFormat;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->createBuilder(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 179
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 186
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->parseDelimitedFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 142
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 149
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 166
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 173
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 129
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 136
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 154
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[B)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/MlDsaKeyFormat;
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

    .line 161
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {v0, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;[BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p0
.end method

.method public static parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "Lcom/google/crypto/tink/proto/MlDsaKeyFormat;",
            ">;"
        }
    .end annotation

    .line 407
    sget-object v0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->getParserForType()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParams(Lcom/google/crypto/tink/proto/MlDsaParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iput-object p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->params_:Lcom/google/crypto/tink/proto/MlDsaParams;

    .line 93
    iget p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->bitField0_:I

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

    .line 44
    iput p1, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->version_:I

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

    .line 341
    sget-object p2, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 385
    throw p2

    :pswitch_0
    const/4 p1, 0x1

    .line 378
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 363
    :pswitch_1
    sget-object p1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_1

    .line 365
    const-class p2, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    monitor-enter p2

    .line 366
    :try_start_0
    sget-object p1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    if-nez p1, :cond_0

    .line 368
    new-instance p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-direct {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 371
    sput-object p1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->PARSER:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 373
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

    .line 360
    :pswitch_2
    sget-object p1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    return-object p1

    .line 349
    :pswitch_3
    const-string p1, "bitField0_"

    const-string p2, "version_"

    const-string p3, "params_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 354
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u1009\u0000"

    .line 357
    sget-object p3, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->DEFAULT_INSTANCE:Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-static {p3, p2, p1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->newMessageInfo(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 346
    :pswitch_4
    new-instance p1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;

    invoke-direct {p1, p2}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat$Builder;-><init>(Lcom/google/crypto/tink/proto/MlDsaKeyFormat$1;)V

    return-object p1

    .line 343
    :pswitch_5
    new-instance p1, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;

    invoke-direct {p1}, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;-><init>()V

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

.method public getParams()Lcom/google/crypto/tink/proto/MlDsaParams;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->params_:Lcom/google/crypto/tink/proto/MlDsaParams;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/proto/MlDsaParams;->getDefaultInstance()Lcom/google/crypto/tink/proto/MlDsaParams;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->version_:I

    return v0
.end method

.method public hasParams()Z
    .locals 2

    .line 69
    iget v0, p0, Lcom/google/crypto/tink/proto/MlDsaKeyFormat;->bitField0_:I

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
