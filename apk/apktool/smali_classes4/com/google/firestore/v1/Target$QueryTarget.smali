.class public final Lcom/google/firestore/v1/Target$QueryTarget;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueryTarget"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;,
        Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target$QueryTarget;",
        "Lcom/google/firestore/v1/Target$QueryTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$QueryTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x2


# instance fields
.field private parent_:Ljava/lang/String;

.field private queryTypeCase_:I

.field private queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1190
    new-instance v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target$QueryTarget;-><init>()V

    .line 1193
    sput-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1194
    const-class v1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 649
    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    .line 647
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0

    .line 641
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$QueryTarget;->clearParent()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/Target$QueryTarget;Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0

    .line 641
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$QueryTarget;->clearStructuredQuery()V

    return-void
.end method

.method static synthetic access$700()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 641
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0

    .line 641
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$QueryTarget;->clearQueryType()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Target$QueryTarget;Ljava/lang/String;)V
    .locals 0

    .line 641
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 760
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-void
.end method

.method private clearQueryType()V
    .locals 1

    const/4 v0, 0x0

    .line 686
    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v0, 0x0

    .line 687
    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    return-void
.end method

.method private clearStructuredQuery()V
    .locals 2

    .line 846
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 847
    iput v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v0, 0x0

    .line 848
    iput-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1

    .line 1199
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0
.end method

.method private mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 3

    .line 828
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 829
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    .line 830
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 831
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->newBuilder(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredQuery$Builder;

    move-result-object v0

    .line 832
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    goto :goto_0

    .line 834
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    .line 836
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1

    .line 929
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;
    .locals 1

    .line 932
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Target$QueryTarget;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 905
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Target$QueryTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 868
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 875
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 917
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 892
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 855
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 862
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 880
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 887
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target$QueryTarget;",
            ">;"
        }
    .end annotation

    .line 1205
    sget-object v0, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 0

    .line 742
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 744
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 777
    invoke-static {p1}, Lcom/google/firestore/v1/Target$QueryTarget;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 778
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-void
.end method

.method private setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)V
    .locals 0

    .line 816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 817
    iput-object p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 818
    iput p1, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1138
    sget-object p2, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1183
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1177
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1162
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1164
    const-class p2, Lcom/google/firestore/v1/Target$QueryTarget;

    monitor-enter p2

    .line 1165
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1167
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1170
    sput-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->PARSER:Lcom/google/protobuf/Parser;

    .line 1172
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

    .line 1159
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    return-object p1

    .line 1146
    :pswitch_4
    const-string p1, "queryType_"

    const-string p2, "queryTypeCase_"

    const-string p3, "parent_"

    const-class v0, Lcom/google/firestore/v1/StructuredQuery;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 1152
    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002<\u0000"

    .line 1155
    sget-object p3, Lcom/google/firestore/v1/Target$QueryTarget;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/Target$QueryTarget;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1143
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object p1

    .line 1140
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-direct {p1}, Lcom/google/firestore/v1/Target$QueryTarget;-><init>()V

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

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;
    .locals 1

    .line 681
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$QueryTarget$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 2

    .line 803
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    return-object v0

    .line 806
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 2

    .line 792
    iget v0, p0, Lcom/google/firestore/v1/Target$QueryTarget;->queryTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
