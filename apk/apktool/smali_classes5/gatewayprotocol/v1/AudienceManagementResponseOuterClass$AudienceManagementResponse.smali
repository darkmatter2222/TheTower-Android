.class public final Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AudienceManagementResponseOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/AudienceManagementResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudienceManagementResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;",
        "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;",
        ">;",
        "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUDIENCE_MANAGEMENT_DATA_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audienceManagementData_:Lcom/google/protobuf/ByteString;

.field private bitField0_:I

.field private error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 428
    new-instance v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-direct {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;-><init>()V

    .line 431
    sput-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    .line 432
    const-class v1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 54
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1

    .line 48
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->setAudienceManagementData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->clearAudienceManagementData()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->clearError()V

    return-void
.end method

.method private clearAudienceManagementData()V
    .locals 1

    .line 93
    invoke-static {}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->getAudienceManagementData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 159
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1

    .line 437
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object v0
.end method

.method private mergeError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 2

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-eqz v0, :cond_0

    .line 143
    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 145
    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->newBuilder(Lgatewayprotocol/v1/ErrorOuterClass$Error;)Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/ErrorOuterClass$Error$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/ErrorOuterClass$Error;

    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    goto :goto_0

    .line 147
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 149
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 239
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;
    .locals 1

    .line 242
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 178
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 185
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 165
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 172
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 190
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 197
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;",
            ">;"
        }
    .end annotation

    .line 443
    sget-object v0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-virtual {v0}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAudienceManagementData(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setError(Lgatewayprotocol/v1/ErrorOuterClass$Error;)V
    .locals 0

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    iput-object p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    .line 130
    iget p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 377
    sget-object p2, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 421
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 415
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 400
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 402
    const-class p2, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    monitor-enter p2

    .line 403
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 405
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 408
    sput-object p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 410
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

    .line 397
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    return-object p1

    .line 385
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "audienceManagementData_"

    const-string p3, "error_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 390
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u1009\u0000"

    .line 393
    sget-object p3, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 382
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse$Builder;-><init>(Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$1;)V

    return-object p1

    .line 379
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;

    invoke-direct {p1}, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;-><init>()V

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

.method public getAudienceManagementData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 69
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->audienceManagementData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getError()Lgatewayprotocol/v1/ErrorOuterClass$Error;
    .locals 1

    .line 118
    iget-object v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->error_:Lgatewayprotocol/v1/ErrorOuterClass$Error;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/ErrorOuterClass$Error;->getDefaultInstance()Lgatewayprotocol/v1/ErrorOuterClass$Error;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasError()Z
    .locals 2

    .line 107
    iget v0, p0, Lgatewayprotocol/v1/AudienceManagementResponseOuterClass$AudienceManagementResponse;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
