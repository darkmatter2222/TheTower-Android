.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestRetryPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

.field public static final MAX_DURATION_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETRY_JITTER_PCT_FIELD_NUMBER:I = 0x4

.field public static final RETRY_MAX_INTERVAL_FIELD_NUMBER:I = 0x3

.field public static final RETRY_SCALING_FACTOR_FIELD_NUMBER:I = 0x5

.field public static final RETRY_WAIT_BASE_FIELD_NUMBER:I = 0x2

.field public static final SHOULD_STORE_LOCALLY_FIELD_NUMBER:I = 0x6


# instance fields
.field private maxDuration_:I

.field private retryJitterPct_:F

.field private retryMaxInterval_:I

.field private retryScalingFactor_:F

.field private retryWaitBase_:I

.field private shouldStoreLocally_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1294
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;-><init>()V

    .line 1297
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    .line 1298
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 626
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1

    .line 621
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V
    .locals 0

    .line 621
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setMaxDuration(I)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryScalingFactor()V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;Z)V
    .locals 0

    .line 621
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setShouldStoreLocally(Z)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearShouldStoreLocally()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearMaxDuration()V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V
    .locals 0

    .line 621
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryWaitBase(I)V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryWaitBase()V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;I)V
    .locals 0

    .line 621
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryMaxInterval(I)V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryMaxInterval()V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;F)V
    .locals 0

    .line 621
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryJitterPct(F)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->clearRetryJitterPct()V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;F)V
    .locals 0

    .line 621
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->setRetryScalingFactor(F)V

    return-void
.end method

.method private clearMaxDuration()V
    .locals 1

    const/4 v0, 0x0

    .line 672
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->maxDuration_:I

    return-void
.end method

.method private clearRetryJitterPct()V
    .locals 1

    const/4 v0, 0x0

    .line 789
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryJitterPct_:F

    return-void
.end method

.method private clearRetryMaxInterval()V
    .locals 1

    const/4 v0, 0x0

    .line 751
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryMaxInterval_:I

    return-void
.end method

.method private clearRetryScalingFactor()V
    .locals 1

    const/4 v0, 0x0

    .line 830
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryScalingFactor_:F

    return-void
.end method

.method private clearRetryWaitBase()V
    .locals 1

    const/4 v0, 0x0

    .line 710
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryWaitBase_:I

    return-void
.end method

.method private clearShouldStoreLocally()V
    .locals 1

    const/4 v0, 0x0

    .line 871
    iput-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->shouldStoreLocally_:Z

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1

    .line 1303
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;
    .locals 1

    .line 951
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;
    .locals 1

    .line 954
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 890
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 897
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 914
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 877
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 884
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 902
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 909
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
            ">;"
        }
    .end annotation

    .line 1309
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMaxDuration(I)V
    .locals 0

    .line 658
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->maxDuration_:I

    return-void
.end method

.method private setRetryJitterPct(F)V
    .locals 0

    .line 778
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryJitterPct_:F

    return-void
.end method

.method private setRetryMaxInterval(I)V
    .locals 0

    .line 739
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryMaxInterval_:I

    return-void
.end method

.method private setRetryScalingFactor(F)V
    .locals 0

    .line 818
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryScalingFactor_:F

    return-void
.end method

.method private setRetryWaitBase(I)V
    .locals 0

    .line 699
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryWaitBase_:I

    return-void
.end method

.method private setShouldStoreLocally(Z)V
    .locals 0

    .line 859
    iput-boolean p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->shouldStoreLocally_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1240
    sget-object p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1287
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1281
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1266
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1268
    const-class p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    monitor-enter p2

    .line 1269
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1271
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1274
    sput-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->PARSER:Lcom/google/protobuf/Parser;

    .line 1276
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

    .line 1263
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    return-object p1

    .line 1248
    :pswitch_4
    const-string v0, "maxDuration_"

    const-string v1, "retryWaitBase_"

    const-string v2, "retryMaxInterval_"

    const-string v3, "retryJitterPct_"

    const-string v4, "retryScalingFactor_"

    const-string v5, "shouldStoreLocally_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    .line 1256
    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0004\u0002\u0004\u0003\u0004\u0004\u0001\u0005\u0001\u0006\u0007"

    .line 1259
    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1245
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy$Builder;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V

    return-object p1

    .line 1242
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    invoke-direct {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;-><init>()V

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

.method public getMaxDuration()I
    .locals 1

    .line 643
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->maxDuration_:I

    return v0
.end method

.method public getRetryJitterPct()F
    .locals 1

    .line 766
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryJitterPct_:F

    return v0
.end method

.method public getRetryMaxInterval()I
    .locals 1

    .line 726
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryMaxInterval_:I

    return v0
.end method

.method public getRetryScalingFactor()F
    .locals 1

    .line 805
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryScalingFactor_:F

    return v0
.end method

.method public getRetryWaitBase()I
    .locals 1

    .line 687
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->retryWaitBase_:I

    return v0
.end method

.method public getShouldStoreLocally()Z
    .locals 1

    .line 846
    iget-boolean v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->shouldStoreLocally_:Z

    return v0
.end method
