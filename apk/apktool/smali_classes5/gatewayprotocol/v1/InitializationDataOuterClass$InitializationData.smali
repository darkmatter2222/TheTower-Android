.class public final Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationDataOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationDataOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitializationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;",
        "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

.field public static final INITIALIZATION_REQUEST_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHARED_DATA_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

.field private sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 390
    new-instance v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;-><init>()V

    .line 393
    sput-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    .line 394
    const-class v1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1

    .line 41
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->mergeInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->clearInitializationRequest()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->setSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->mergeSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->clearSharedData()V

    return-void
.end method

.method private clearInitializationRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 92
    iget v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    return-void
.end method

.method private clearSharedData()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 138
    iget v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1

    .line 399
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object v0
.end method

.method private mergeInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 2

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 82
    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->newBuilder(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    goto :goto_0

    .line 84
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 86
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    return-void
.end method

.method private mergeSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 128
    invoke-static {v0}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->newBuilder(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    goto :goto_0

    .line 130
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 132
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;
    .locals 1

    .line 218
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;
    .locals 1

    .line 221
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 157
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 164
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 144
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 151
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 169
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 176
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;",
            ">;"
        }
    .end annotation

    .line 405
    sget-object v0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setInitializationRequest(Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    .line 71
    iget p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    return-void
.end method

.method private setSharedData(Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    .line 117
    iget p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 339
    sget-object p2, Lgatewayprotocol/v1/InitializationDataOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 383
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 377
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 362
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 364
    const-class p2, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    monitor-enter p2

    .line 365
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 367
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 370
    sput-object p1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 372
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

    .line 359
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    return-object p1

    .line 347
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "initializationRequest_"

    const-string p3, "sharedData_"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 352
    const-string p2, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001"

    .line 355
    sget-object p3, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 344
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData$Builder;-><init>(Lgatewayprotocol/v1/InitializationDataOuterClass$1;)V

    return-object p1

    .line 341
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;-><init>()V

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

.method public getInitializationRequest()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;
    .locals 1

    .line 63
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->initializationRequest_:Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$InitializationRequest;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSharedData()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;
    .locals 1

    .line 109
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->sharedData_:Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    if-nez v0, :cond_0

    invoke-static {}, Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;->getDefaultInstance()Lgatewayprotocol/v1/UniversalRequestOuterClass$UniversalRequest$SharedData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasInitializationRequest()Z
    .locals 2

    .line 56
    iget v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSharedData()Z
    .locals 1

    .line 102
    iget v0, p0, Lgatewayprotocol/v1/InitializationDataOuterClass$InitializationData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
