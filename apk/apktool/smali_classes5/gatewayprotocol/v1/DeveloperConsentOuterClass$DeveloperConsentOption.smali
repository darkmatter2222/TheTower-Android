.class public final Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "DeveloperConsentOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOptionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/DeveloperConsentOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeveloperConsentOption"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
        "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;",
        ">;",
        "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOptionOrBuilder;"
    }
.end annotation


# static fields
.field public static final CUSTOM_TYPE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALUE_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private customType_:Ljava/lang/String;

.field private type_:I

.field private value_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 998
    new-instance v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-direct {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;-><init>()V

    .line 1001
    sput-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    .line 1002
    const-class v1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 418
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 419
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1

    .line 413
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;I)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setTypeValue(I)V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setType(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .locals 0

    .line 413
    invoke-direct {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->clearType()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Ljava/lang/String;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setCustomType(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .locals 0

    .line 413
    invoke-direct {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->clearCustomType()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setCustomTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;I)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setValueValue(I)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->setValue(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)V
    .locals 0

    .line 413
    invoke-direct {p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->clearValue()V

    return-void
.end method

.method private clearCustomType()V
    .locals 1

    .line 545
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    .line 546
    invoke-static {}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->getDefaultInstance()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->getCustomType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 481
    iput v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 622
    iput v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1

    .line 1007
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;
    .locals 1

    .line 702
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;
    .locals 1

    .line 705
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 685
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 641
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 648
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 672
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 628
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 635
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 653
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 660
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation

    .line 1013
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-virtual {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCustomType(Ljava/lang/String;)V
    .locals 1

    .line 533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 534
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    .line 535
    iput-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-void
.end method

.method private setCustomTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 558
    invoke-static {p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 559
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    .line 560
    iget p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    return-void
.end method

.method private setType(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V
    .locals 0

    .line 469
    invoke-virtual {p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 458
    iput p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return-void
.end method

.method private setValue(Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V
    .locals 0

    .line 610
    invoke-virtual {p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return-void
.end method

.method private setValueValue(I)V
    .locals 0

    .line 599
    iput p1, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 946
    sget-object p2, Lgatewayprotocol/v1/DeveloperConsentOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 991
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 985
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 970
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 972
    const-class p2, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    monitor-enter p2

    .line 973
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 975
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 978
    sput-object p1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->PARSER:Lcom/google/protobuf/Parser;

    .line 980
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

    .line 967
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    return-object p1

    .line 954
    :pswitch_4
    const-string p1, "bitField0_"

    const-string p2, "type_"

    const-string p3, "customType_"

    const-string v0, "value_"

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 960
    const-string p2, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u1208\u0000\u0003\u000c"

    .line 963
    sget-object p3, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 951
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption$Builder;-><init>(Lgatewayprotocol/v1/DeveloperConsentOuterClass$1;)V

    return-object p1

    .line 948
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    invoke-direct {p1}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;-><init>()V

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

.method public getCustomType()Ljava/lang/String;
    .locals 1

    .line 508
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 521
    iget-object v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->customType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .locals 1

    .line 446
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    invoke-static {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->forNumber(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 447
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;->UNRECOGNIZED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 434
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->type_:I

    return v0
.end method

.method public getValue()Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .locals 1

    .line 587
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    invoke-static {v0}, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->forNumber(I)Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 588
    sget-object v0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->UNRECOGNIZED:Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    :cond_0
    return-object v0
.end method

.method public getValueValue()I
    .locals 1

    .line 575
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->value_:I

    return v0
.end method

.method public hasCustomType()Z
    .locals 2

    .line 496
    iget v0, p0, Lgatewayprotocol/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
