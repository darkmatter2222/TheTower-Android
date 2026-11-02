.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccelerometerCollectionConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfigurationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

.field public static final MAX_SAMPLES_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLING_INTERVAL_MS_FIELD_NUMBER:I = 0x1


# instance fields
.field private maxSamples_:I

.field private samplingIntervalMs_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4169
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;-><init>()V

    .line 4172
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    .line 4173
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3827
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$5900()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1

    .line 3822
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object v0
.end method

.method static synthetic access$6000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;I)V
    .locals 0

    .line 3822
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->setSamplingIntervalMs(I)V

    return-void
.end method

.method static synthetic access$6100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V
    .locals 0

    .line 3822
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->clearSamplingIntervalMs()V

    return-void
.end method

.method static synthetic access$6200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;I)V
    .locals 0

    .line 3822
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->setMaxSamples(I)V

    return-void
.end method

.method static synthetic access$6300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)V
    .locals 0

    .line 3822
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->clearMaxSamples()V

    return-void
.end method

.method private clearMaxSamples()V
    .locals 1

    const/4 v0, 0x0

    .line 3914
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->maxSamples_:I

    return-void
.end method

.method private clearSamplingIntervalMs()V
    .locals 1

    const/4 v0, 0x0

    .line 3870
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->samplingIntervalMs_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1

    .line 4178
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;
    .locals 1

    .line 3994
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;
    .locals 1

    .line 3997
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3970
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3977
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3933
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3940
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3982
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3989
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3957
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3964
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3920
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3927
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3945
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3952
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;",
            ">;"
        }
    .end annotation

    .line 4184
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMaxSamples(I)V
    .locals 0

    .line 3901
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->maxSamples_:I

    return-void
.end method

.method private setSamplingIntervalMs(I)V
    .locals 0

    .line 3857
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->samplingIntervalMs_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4119
    sget-object p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4162
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 4156
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4141
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4143
    const-class p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    monitor-enter p2

    .line 4144
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4146
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4149
    sput-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 4151
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

    .line 4138
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    return-object p1

    .line 4127
    :pswitch_4
    const-string p1, "samplingIntervalMs_"

    const-string p2, "maxSamples_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 4131
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004"

    .line 4134
    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4124
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration$Builder;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V

    return-object p1

    .line 4121
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;

    invoke-direct {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;-><init>()V

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

.method public getMaxSamples()I
    .locals 1

    .line 3887
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->maxSamples_:I

    return v0
.end method

.method public getSamplingIntervalMs()I
    .locals 1

    .line 3843
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$AccelerometerCollectionConfiguration;->samplingIntervalMs_:I

    return v0
.end method
