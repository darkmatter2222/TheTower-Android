.class public final Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "InitializationRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/InitializationRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;,
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;,
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;,
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;,
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$IosOrBuilder;,
        Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$AndroidOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;",
        ">;",
        "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilitiesOrBuilder;"
    }
.end annotation


# static fields
.field public static final ANDROID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

.field public static final IOS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private platformSpecificCase_:I

.field private platformSpecific_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7964
    new-instance v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-direct {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;-><init>()V

    .line 7967
    sput-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    .line 7968
    const-class v1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6469
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7549
    iput v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    return-void
.end method

.method static synthetic access$13300()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1

    .line 6464
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object v0
.end method

.method static synthetic access$13400(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V
    .locals 0

    .line 6464
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->clearPlatformSpecific()V

    return-void
.end method

.method static synthetic access$13500(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V
    .locals 0

    .line 6464
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->setAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V

    return-void
.end method

.method static synthetic access$13600(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V
    .locals 0

    .line 6464
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->mergeAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V

    return-void
.end method

.method static synthetic access$13700(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V
    .locals 0

    .line 6464
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->clearAndroid()V

    return-void
.end method

.method static synthetic access$13800(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V
    .locals 0

    .line 6464
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->setIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V

    return-void
.end method

.method static synthetic access$13900(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V
    .locals 0

    .line 6464
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->mergeIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V

    return-void
.end method

.method static synthetic access$14000(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)V
    .locals 0

    .line 6464
    invoke-direct {p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->clearIos()V

    return-void
.end method

.method private clearAndroid()V
    .locals 2

    .line 7636
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7637
    iput v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v0, 0x0

    .line 7638
    iput-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearIos()V
    .locals 2

    .line 7686
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7687
    iput v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v0, 0x0

    .line 7688
    iput-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPlatformSpecific()V
    .locals 1

    const/4 v0, 0x0

    .line 7588
    iput v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v0, 0x0

    .line 7589
    iput-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1

    .line 7973
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object v0
.end method

.method private mergeAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V
    .locals 3

    .line 7622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7623
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    .line 7624
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7625
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->newBuilder(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    move-result-object v0

    .line 7626
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    goto :goto_0

    .line 7628
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    .line 7630
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    return-void
.end method

.method private mergeIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V
    .locals 3

    .line 7672
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7673
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    .line 7674
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7675
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->newBuilder(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    move-result-object v0

    .line 7676
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;

    invoke-virtual {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    goto :goto_0

    .line 7678
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    .line 7680
    :goto_0
    iput v1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7769
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;
    .locals 1

    .line 7772
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7745
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7752
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7708
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7715
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7757
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7764
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7732
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7739
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7695
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7702
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7720
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7727
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;",
            ">;"
        }
    .end annotation

    .line 7979
    sget-object v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-virtual {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAndroid(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;)V
    .locals 0

    .line 7614
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7615
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7616
    iput p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    return-void
.end method

.method private setIos(Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;)V
    .locals 0

    .line 7664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7665
    iput-object p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 7666
    iput p1, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 7912
    sget-object p2, Lgatewayprotocol/v1/InitializationRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7957
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 7951
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7936
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7938
    const-class p2, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    monitor-enter p2

    .line 7939
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7941
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7944
    sput-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->PARSER:Lcom/google/protobuf/Parser;

    .line 7946
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

    .line 7933
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    return-object p1

    .line 7920
    :pswitch_4
    const-string p1, "platformSpecific_"

    const-string p2, "platformSpecificCase_"

    const-class p3, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    const-class v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 7926
    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000"

    .line 7929
    sget-object p3, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7917
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Builder;-><init>(Lgatewayprotocol/v1/InitializationRequestOuterClass$1;)V

    return-object p1

    .line 7914
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;

    invoke-direct {p1}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;-><init>()V

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

.method public getAndroid()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;
    .locals 2

    .line 7605
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7606
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    return-object v0

    .line 7608
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Android;

    move-result-object v0

    return-object v0
.end method

.method public getIos()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;
    .locals 2

    .line 7655
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7656
    iget-object v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecific_:Ljava/lang/Object;

    check-cast v0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    return-object v0

    .line 7658
    :cond_0
    invoke-static {}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;->getDefaultInstance()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$Ios;

    move-result-object v0

    return-object v0
.end method

.method public getPlatformSpecificCase()Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;
    .locals 1

    .line 7583
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    invoke-static {v0}, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;->forNumber(I)Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities$PlatformSpecificCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAndroid()Z
    .locals 2

    .line 7598
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasIos()Z
    .locals 2

    .line 7648
    iget v0, p0, Lgatewayprotocol/v1/InitializationRequestOuterClass$QuickCapabilities;->platformSpecificCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
