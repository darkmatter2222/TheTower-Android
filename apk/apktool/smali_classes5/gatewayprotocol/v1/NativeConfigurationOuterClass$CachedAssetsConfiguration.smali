.class public final Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NativeConfigurationOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfigurationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedAssetsConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;",
        ">;",
        "Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfigurationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

.field public static final MAX_CACHED_ASSET_AGE_MS_FIELD_NUMBER:I = 0x1

.field public static final MAX_CACHED_ASSET_SIZE_MB_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private maxCachedAssetAgeMs_:J

.field private maxCachedAssetSizeMb_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5000
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-direct {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;-><init>()V

    .line 5003
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 5004
    const-class v1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4684
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$7300()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1

    .line 4679
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object v0
.end method

.method static synthetic access$7400(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;J)V
    .locals 0

    .line 4679
    invoke-direct {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->setMaxCachedAssetAgeMs(J)V

    return-void
.end method

.method static synthetic access$7500(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 4679
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->clearMaxCachedAssetAgeMs()V

    return-void
.end method

.method static synthetic access$7600(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;I)V
    .locals 0

    .line 4679
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->setMaxCachedAssetSizeMb(I)V

    return-void
.end method

.method static synthetic access$7700(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 0

    .line 4679
    invoke-direct {p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->clearMaxCachedAssetSizeMb()V

    return-void
.end method

.method private clearMaxCachedAssetAgeMs()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4721
    iput-wide v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->maxCachedAssetAgeMs_:J

    return-void
.end method

.method private clearMaxCachedAssetSizeMb()V
    .locals 1

    const/4 v0, 0x0

    .line 4759
    iput v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->maxCachedAssetSizeMb_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1

    .line 5009
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object v0
.end method

.method public static newBuilder()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;
    .locals 1

    .line 4839
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;
    .locals 1

    .line 4842
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4815
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4822
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4778
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4785
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4827
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4834
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4802
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4809
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4765
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4772
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4790
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4797
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;",
            ">;"
        }
    .end annotation

    .line 5015
    sget-object v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMaxCachedAssetAgeMs(J)V
    .locals 0

    .line 4710
    iput-wide p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->maxCachedAssetAgeMs_:J

    return-void
.end method

.method private setMaxCachedAssetSizeMb(I)V
    .locals 0

    .line 4748
    iput p1, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->maxCachedAssetSizeMb_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4950
    sget-object p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4993
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 4987
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4972
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4974
    const-class p2, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    monitor-enter p2

    .line 4975
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4977
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4980
    sput-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->PARSER:Lcom/google/protobuf/Parser;

    .line 4982
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

    .line 4969
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    return-object p1

    .line 4958
    :pswitch_4
    const-string p1, "maxCachedAssetAgeMs_"

    const-string p2, "maxCachedAssetSizeMb_"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 4962
    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004"

    .line 4965
    sget-object p3, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4955
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration$Builder;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$1;)V

    return-object p1

    .line 4952
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    invoke-direct {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;-><init>()V

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

.method public getMaxCachedAssetAgeMs()J
    .locals 2

    .line 4698
    iget-wide v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->maxCachedAssetAgeMs_:J

    return-wide v0
.end method

.method public getMaxCachedAssetSizeMb()I
    .locals 1

    .line 4736
    iget v0, p0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;->maxCachedAssetSizeMb_:I

    return v0
.end method
