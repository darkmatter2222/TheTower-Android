.class public final Lgatewayprotocol/v1/PiiOuterClass$Pii;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PiiOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/PiiOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pii"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
        "Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;",
        ">;",
        "Lgatewayprotocol/v1/PiiOuterClass$PiiOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADVERTISING_ID_FIELD_NUMBER:I = 0x1

.field public static final APPSET_ID_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

.field public static final FID_FIELD_NUMBER:I = 0x4

.field public static final OPEN_ADVERTISING_TRACKING_ID_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
            ">;"
        }
    .end annotation
.end field

.field public static final VENDOR_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private advertisingId_:Lcom/google/protobuf/ByteString;

.field private appsetId_:Ljava/lang/String;

.field private bitField0_:I

.field private fid_:Ljava/lang/String;

.field private openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

.field private vendorId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 843
    new-instance v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-direct {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;-><init>()V

    .line 846
    sput-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    .line 847
    const-class v1, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 117
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    .line 118
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    .line 119
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1

    .line 111
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setAdvertisingId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setAppsetId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearAppsetId()V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setAppsetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearAdvertisingId()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setVendorId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearVendorId()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearOpenAdvertisingTrackingId()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/PiiOuterClass$Pii;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setFid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/PiiOuterClass$Pii;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->clearFid()V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/PiiOuterClass$Pii;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->setFidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAdvertisingId()V
    .locals 1

    .line 160
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAdvertisingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearAppsetId()V
    .locals 1

    .line 381
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 382
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getAppsetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-void
.end method

.method private clearFid()V
    .locals 1

    .line 302
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 303
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getFid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    return-void
.end method

.method private clearOpenAdvertisingTrackingId()V
    .locals 1

    .line 238
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearVendorId()V
    .locals 1

    .line 199
    invoke-static {}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getVendorId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1

    .line 852
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 476
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/PiiOuterClass$Pii;)Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;
    .locals 1

    .line 479
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 415
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 422
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 402
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 409
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 427
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/PiiOuterClass$Pii;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 434
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/PiiOuterClass$Pii;",
            ">;"
        }
    .end annotation

    .line 858
    sget-object v0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-virtual {v0}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAdvertisingId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 149
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setAppsetId(Ljava/lang/String;)V
    .locals 1

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 371
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-void
.end method

.method private setAppsetIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 394
    invoke-static {p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 395
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    .line 396
    iget p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    return-void
.end method

.method private setFid(Ljava/lang/String;)V
    .locals 1

    .line 290
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 291
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    .line 292
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    return-void
.end method

.method private setFidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 315
    invoke-static {p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 316
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    .line 317
    iget p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    return-void
.end method

.method private setOpenAdvertisingTrackingId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setVendorId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    iput-object p1, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 789
    sget-object p2, Lgatewayprotocol/v1/PiiOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 836
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 830
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 815
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 817
    const-class p2, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    monitor-enter p2

    .line 818
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 820
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 823
    sput-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->PARSER:Lcom/google/protobuf/Parser;

    .line 825
    :cond_0
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 812
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    return-object p1

    .line 797
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "advertisingId_"

    const-string v2, "vendorId_"

    const-string v3, "openAdvertisingTrackingId_"

    const-string v4, "fid_"

    const-string v5, "appsetId_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 805
    const-string p2, "\u0000\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\u1208\u0000\u0005\u1208\u0001"

    .line 808
    sget-object p3, Lgatewayprotocol/v1/PiiOuterClass$Pii;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 794
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/PiiOuterClass$Pii$Builder;-><init>(Lgatewayprotocol/v1/PiiOuterClass$1;)V

    return-object p1

    .line 791
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/PiiOuterClass$Pii;

    invoke-direct {p1}, Lgatewayprotocol/v1/PiiOuterClass$Pii;-><init>()V

    return-object p1

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

.method public getAdvertisingId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 136
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->advertisingId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getAppsetId()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppsetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 357
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->appsetId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFid()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    return-object v0
.end method

.method public getFidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 278
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->fid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOpenAdvertisingTrackingId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 214
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->openAdvertisingTrackingId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVendorId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 175
    iget-object v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->vendorId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAppsetId()Z
    .locals 1

    .line 332
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasFid()Z
    .locals 2

    .line 253
    iget v0, p0, Lgatewayprotocol/v1/PiiOuterClass$Pii;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
