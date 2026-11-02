.class public final Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FlagValue.java"

# interfaces
.implements Lorg/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/httpflags/FlagValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConstrainedValue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;,
        Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;",
        ">;",
        "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;"
    }
.end annotation


# static fields
.field public static final APPLY_EVEN_IF_CRONET_TELEMETRY_DISABLED_FIELD_NUMBER:I = 0x8

.field public static final APP_ID_FIELD_NUMBER:I = 0x1

.field public static final BOOL_VALUE_FIELD_NUMBER:I = 0x3

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

.field public static final FLOAT_VALUE_FIELD_NUMBER:I = 0x5

.field public static final INT_VALUE_FIELD_NUMBER:I = 0x4

.field public static final MIN_VERSION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x6


# instance fields
.field private appId_:Ljava/lang/String;

.field private applyEvenIfCronetTelemetryDisabled_:Z

.field private bitField0_:I

.field private minVersion_:Ljava/lang/String;

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$mclearAppId(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearAppId()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearApplyEvenIfCronetTelemetryDisabled(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearApplyEvenIfCronetTelemetryDisabled()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearBoolValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearBoolValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearBytesValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearBytesValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearFloatValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearFloatValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearIntValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearIntValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearMinVersion(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearMinVersion()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearStringValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearStringValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->clearValue()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAppId(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setAppId(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAppIdBytes(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setAppIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetApplyEvenIfCronetTelemetryDisabled(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setApplyEvenIfCronetTelemetryDisabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBoolValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setBoolValue(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBytesValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setBytesValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFloatValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setFloatValue(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetIntValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setIntValue(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMinVersion(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setMinVersion(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMinVersionBytes(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setMinVersionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStringValue(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setStringValue(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStringValueBytes(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;Lcom/google/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->setStringValueBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .locals 1

    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1587
    new-instance v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;-><init>()V

    .line 1590
    sput-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1591
    const-class v1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 249
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 254
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 250
    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearAppId()V
    .locals 1

    .line 374
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 375
    invoke-static {}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getDefaultInstance()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    return-void
.end method

.method private clearApplyEvenIfCronetTelemetryDisabled()V
    .locals 1

    .line 641
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->applyEvenIfCronetTelemetryDisabled_:Z

    return-void
.end method

.method private clearBoolValue()V
    .locals 2

    .line 677
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 678
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearBytesValue()V
    .locals 2

    .line 855
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 856
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v0, 0x0

    .line 857
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFloatValue()V
    .locals 2

    .line 753
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 754
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v0, 0x0

    .line 755
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearIntValue()V
    .locals 2

    .line 715
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 716
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v0, 0x0

    .line 717
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMinVersion()V
    .locals 1

    .line 514
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 515
    invoke-static {}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getDefaultInstance()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getMinVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearStringValue()V
    .locals 2

    .line 807
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 808
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v0, 0x0

    .line 809
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 299
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .locals 1

    .line 1596
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object v0
.end method

.method public static newBuilder()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .locals 1

    .line 938
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    return-object v0
.end method

.method public static newBuilder(Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 941
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0, p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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

    .line 914
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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

    .line 921
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 877
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 884
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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

    .line 926
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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

    .line 933
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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

    .line 901
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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

    .line 908
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 864
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 871
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 889
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;
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
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 896
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation

    .line 1602
    sget-object v0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAppId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 361
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 362
    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    return-void
.end method

.method private setAppIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 389
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    .line 390
    iget p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    return-void
.end method

.method private setApplyEvenIfCronetTelemetryDisabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 617
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 618
    iput-boolean p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->applyEvenIfCronetTelemetryDisabled_:Z

    return-void
.end method

.method private setBoolValue(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x3

    .line 670
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 671
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setBytesValue(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x7

    .line 848
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 849
    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setFloatValue(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x5

    .line 746
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 747
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setIntValue(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x4

    .line 708
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 709
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setMinVersion(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 491
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    .line 492
    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    return-void
.end method

.method private setMinVersionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 539
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    .line 540
    iget p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    return-void
.end method

.method private setStringValue(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x6

    .line 800
    iput v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    .line 801
    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    return-void
.end method

.method private setStringValueBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 818
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 819
    iput p1, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 1533
    sget-object p2, Lorg/chromium/net/httpflags/FlagValue$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1580
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1574
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1559
    :pswitch_2
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1561
    const-class p2, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    monitor-enter p2

    .line 1562
    :try_start_0
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1564
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1567
    sput-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->PARSER:Lcom/google/protobuf/Parser;

    .line 1569
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

    .line 1556
    :pswitch_3
    sget-object p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    return-object p1

    .line 1541
    :pswitch_4
    const-string v0, "value_"

    const-string v1, "valueCase_"

    const-string v2, "bitField0_"

    const-string v3, "appId_"

    const-string v4, "minVersion_"

    const-string v5, "applyEvenIfCronetTelemetryDisabled_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1549
    const-string p2, "\u0001\u0008\u0001\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003:\u0000\u00045\u0000\u00054\u0000\u0006;\u0000\u0007=\u0000\u0008\u1007\u0002"

    .line 1552
    sget-object p3, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->DEFAULT_INSTANCE:Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {p3, p2, p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1538
    :pswitch_5
    new-instance p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    invoke-direct {p1, p2}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;-><init>(Lorg/chromium/net/httpflags/FlagValue-IA;)V

    return-object p1

    .line 1535
    :pswitch_6
    new-instance p1, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-direct {p1}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;-><init>()V

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

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 331
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    return-object v0
.end method

.method public getAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->appId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getApplyEvenIfCronetTelemetryDisabled()Z
    .locals 1

    .line 593
    iget-boolean v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->applyEvenIfCronetTelemetryDisabled_:Z

    return v0
.end method

.method public getBoolValue()Z
    .locals 2

    .line 660
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBytesValue()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 837
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 838
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 840
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFloatValue()F
    .locals 2

    .line 736
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIntValue()J
    .locals 2

    .line 698
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 699
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinVersion()Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getMinVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 466
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->minVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .line 775
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 776
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 778
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getStringValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 788
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 788
    :cond_0
    const-string v0, ""

    .line 791
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .locals 1

    .line 294
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    invoke-static {v0}, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->forNumber(I)Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAppId()Z
    .locals 2

    .line 317
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasApplyEvenIfCronetTelemetryDisabled()Z
    .locals 1

    .line 568
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBoolValue()Z
    .locals 2

    .line 652
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasBytesValue()Z
    .locals 2

    .line 829
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasFloatValue()Z
    .locals 2

    .line 728
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasIntValue()Z
    .locals 2

    .line 690
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMinVersion()Z
    .locals 1

    .line 417
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStringValue()Z
    .locals 2

    .line 766
    iget v0, p0, Lorg/chromium/net/httpflags/FlagValue$ConstrainedValue;->valueCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
