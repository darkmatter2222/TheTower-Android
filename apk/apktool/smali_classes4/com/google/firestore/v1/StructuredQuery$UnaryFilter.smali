.class public final Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$UnaryFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnaryFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;,
        Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilterOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

.field public static final FIELD_FIELD_NUMBER:I = 0x2

.field public static final OP_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private op_:I

.field private operandTypeCase_:I

.field private operandType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3975
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;-><init>()V

    .line 3978
    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    .line 3979
    const-class v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3310
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3492
    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    return-void
.end method

.method static synthetic access$4100()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1

    .line 3305
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V
    .locals 0

    .line 3305
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->clearOperandType()V

    return-void
.end method

.method static synthetic access$4300(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;I)V
    .locals 0

    .line 3305
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->setOpValue(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)V
    .locals 0

    .line 3305
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->setOp(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V
    .locals 0

    .line 3305
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->clearOp()V

    return-void
.end method

.method static synthetic access$4600(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3305
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3305
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V
    .locals 0

    .line 3305
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->clearField()V

    return-void
.end method

.method private clearField()V
    .locals 2

    .line 3659
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3660
    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    const/4 v0, 0x0

    .line 3661
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOp()V
    .locals 1

    const/4 v0, 0x0

    .line 3592
    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->op_:I

    return-void
.end method

.method private clearOperandType()V
    .locals 1

    const/4 v0, 0x0

    .line 3529
    iput v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    const/4 v0, 0x0

    .line 3530
    iput-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1

    .line 3984
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object v0
.end method

.method private mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 3

    .line 3641
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3642
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    .line 3643
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3644
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->newBuilder(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    move-result-object v0

    .line 3645
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    goto :goto_0

    .line 3647
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    .line 3649
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1

    .line 3742
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1

    .line 3745
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3718
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3725
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3681
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3688
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3730
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3737
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3705
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3712
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3668
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3675
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3693
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3700
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;",
            ">;"
        }
    .end annotation

    .line 3990
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V
    .locals 0

    .line 3629
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3630
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3631
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    return-void
.end method

.method private setOp(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)V
    .locals 0

    .line 3580
    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->op_:I

    return-void
.end method

.method private setOpValue(I)V
    .locals 0

    .line 3569
    iput p1, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->op_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3923
    sget-object p2, Lcom/google/firestore/v1/StructuredQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3968
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 3962
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3947
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3949
    const-class p2, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    monitor-enter p2

    .line 3950
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3952
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3955
    sput-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 3957
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

    .line 3944
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    return-object p1

    .line 3931
    :pswitch_4
    const-string p1, "operandType_"

    const-string p2, "operandTypeCase_"

    const-string p3, "op_"

    const-class v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    filled-new-array {p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 3937
    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000c\u0002<\u0000"

    .line 3940
    sget-object p3, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3928
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;-><init>(Lcom/google/firestore/v1/StructuredQuery$1;)V

    return-object p1

    .line 3925
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-direct {p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;-><init>()V

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

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 2

    .line 3616
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3617
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    return-object v0

    .line 3619
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$FieldReference;->getDefaultInstance()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1

    .line 3557
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->op_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3558
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;->UNRECOGNIZED:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    :cond_0
    return-object v0
.end method

.method public getOpValue()I
    .locals 1

    .line 3545
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->op_:I

    return v0
.end method

.method public getOperandTypeCase()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1

    .line 3524
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasField()Z
    .locals 2

    .line 3605
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->operandTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
