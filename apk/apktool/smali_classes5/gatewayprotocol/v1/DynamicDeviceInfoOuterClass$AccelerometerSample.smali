.class public final Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DynamicDeviceInfoOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSampleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccelerometerSample"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;",
        ">;",
        "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSampleOrBuilder;"
    }
.end annotation


# static fields
.field public static final CLIENT_TIMESTAMP_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
            ">;"
        }
    .end annotation
.end field

.field public static final X_FIELD_NUMBER:I = 0x2

.field public static final Y_FIELD_NUMBER:I = 0x3

.field public static final Z_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private clientTimestamp_:Lcom/google/protobuf/Timestamp;

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 721
    new-instance v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-direct {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;-><init>()V

    .line 724
    sput-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    .line 725
    const-class v1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1

    .line 173
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->setClientTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->mergeClientTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clearClientTimestamp()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;F)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->setX(F)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clearX()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;F)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->setY(F)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clearY()V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;F)V
    .locals 0

    .line 173
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->setZ(F)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clearZ()V

    return-void
.end method

.method private clearClientTimestamp()V
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clientTimestamp_:Lcom/google/protobuf/Timestamp;

    .line 244
    iget v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->bitField0_:I

    return-void
.end method

.method private clearX()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    iput v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->x_:F

    return-void
.end method

.method private clearY()V
    .locals 1

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->y_:F

    return-void
.end method

.method private clearZ()V
    .locals 1

    const/4 v0, 0x0

    .line 361
    iput v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->z_:F

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1

    .line 730
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object v0
.end method

.method private mergeClientTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clientTimestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clientTimestamp_:Lcom/google/protobuf/Timestamp;

    .line 230
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clientTimestamp_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 232
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clientTimestamp_:Lcom/google/protobuf/Timestamp;

    .line 234
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 441
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;
    .locals 1

    .line 444
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 380
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 387
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 411
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 367
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 374
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 392
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 399
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;",
            ">;"
        }
    .end annotation

    .line 736
    sget-object v0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setClientTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    iput-object p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clientTimestamp_:Lcom/google/protobuf/Timestamp;

    .line 215
    iget p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->bitField0_:I

    return-void
.end method

.method private setX(F)V
    .locals 0

    .line 273
    iput p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->x_:F

    return-void
.end method

.method private setY(F)V
    .locals 0

    .line 312
    iput p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->y_:F

    return-void
.end method

.method private setZ(F)V
    .locals 0

    .line 350
    iput p1, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->z_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 668
    sget-object p2, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 714
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 708
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 693
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 695
    const-class p2, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    monitor-enter p2

    .line 696
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 698
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 701
    sput-object p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->PARSER:Lcom/google/protobuf/Parser;

    .line 703
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

    .line 690
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    return-object p1

    .line 676
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "clientTimestamp_"

    const-string p3, "x_"

    const-string v0, "y_"

    const-string v1, "z_"

    filled-new-array {p1, p2, p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    .line 683
    const-string p2, "\u0000\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u0001\u0003\u0001\u0004\u0001"

    .line 686
    sget-object p3, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 673
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample$Builder;-><init>(Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$1;)V

    return-object p1

    .line 670
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;

    invoke-direct {p1}, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;-><init>()V

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

.method public getClientTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 203
    iget-object v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->clientTimestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getX()F
    .locals 1

    .line 260
    iget v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 300
    iget v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 338
    iget v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->z_:F

    return v0
.end method

.method public hasClientTimestamp()Z
    .locals 2

    .line 192
    iget v0, p0, Lgatewayprotocol/v1/DynamicDeviceInfoOuterClass$AccelerometerSample;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
