.class public final Lcom/google/firestore/v1/Write;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Write.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Write$OperationCase;,
        Lcom/google/firestore/v1/Write$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Write;",
        "Lcom/google/firestore/v1/Write$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURRENT_DOCUMENT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

.field public static final DELETE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFORM_FIELD_NUMBER:I = 0x6

.field public static final UPDATE_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_MASK_FIELD_NUMBER:I = 0x3

.field public static final UPDATE_TRANSFORMS_FIELD_NUMBER:I = 0x7

.field public static final VERIFY_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private currentDocument_:Lcom/google/firestore/v1/Precondition;

.field private operationCase_:I

.field private operation_:Ljava/lang/Object;

.field private updateMask_:Lcom/google/firestore/v1/DocumentMask;

.field private updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1681
    new-instance v0, Lcom/google/firestore/v1/Write;

    invoke-direct {v0}, Lcom/google/firestore/v1/Write;-><init>()V

    .line 1684
    sput-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    .line 1685
    const-class v1, Lcom/google/firestore/v1/Write;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    .line 20
    invoke-static {}, Lcom/google/firestore/v1/Write;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/Write;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearOperation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/Write;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setVerifyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setTransform(Lcom/google/firestore/v1/DocumentTransform;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->mergeTransform(Lcom/google/firestore/v1/DocumentTransform;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearTransform()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearUpdateMask()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Write;->setUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/Write;->addUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setUpdate(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/Write;Ljava/lang/Iterable;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->addAllUpdateTransforms(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearUpdateTransforms()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/Write;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->removeUpdateTransforms(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearCurrentDocument()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->mergeUpdate(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearUpdate()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setDelete(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearDelete()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/Write;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setDeleteBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Write;->setVerify(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/Write;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->clearVerify()V

    return-void
.end method

.method private addAllUpdateTransforms(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;)V"
        }
    .end annotation

    .line 663
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->ensureUpdateTransformsIsMutable()V

    .line 664
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 1

    .line 646
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 647
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->ensureUpdateTransformsIsMutable()V

    .line 648
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 1

    .line 629
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 630
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->ensureUpdateTransformsIsMutable()V

    .line 631
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCurrentDocument()V
    .locals 1

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 770
    iget v0, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    return-void
.end method

.method private clearDelete()V
    .locals 2

    .line 213
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 214
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOperation()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    return-void
.end method

.method private clearTransform()V
    .locals 2

    .line 398
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 399
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUpdate()V
    .locals 2

    .line 134
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUpdateMask()V
    .locals 1

    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 512
    iget v0, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    return-void
.end method

.method private clearUpdateTransforms()V
    .locals 1

    .line 679
    invoke-static {}, Lcom/google/firestore/v1/Write;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearVerify()V
    .locals 2

    .line 312
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 313
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ensureUpdateTransformsIsMutable()V
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 594
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Write;
    .locals 1

    .line 1690
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    return-object v0
.end method

.method private mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)V
    .locals 2

    .line 750
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 751
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-eqz v0, :cond_0

    .line 752
    invoke-static {}, Lcom/google/firestore/v1/Precondition;->getDefaultInstance()Lcom/google/firestore/v1/Precondition;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 753
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 754
    invoke-static {v0}, Lcom/google/firestore/v1/Precondition;->newBuilder(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Precondition$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Precondition$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Precondition$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Precondition;

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    goto :goto_0

    .line 756
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 758
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    return-void
.end method

.method private mergeTransform(Lcom/google/firestore/v1/DocumentTransform;)V
    .locals 3

    .line 380
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 381
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    .line 382
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->getDefaultInstance()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 383
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform;->newBuilder(Lcom/google/firestore/v1/DocumentTransform;)Lcom/google/firestore/v1/DocumentTransform$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentTransform$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    goto :goto_0

    .line 386
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    .line 388
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method

.method private mergeUpdate(Lcom/google/firestore/v1/Document;)V
    .locals 3

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    .line 118
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    .line 124
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method

.method private mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2

    .line 485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    .line 487
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 489
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentMask;

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 491
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 493
    :goto_0
    iget p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 850
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Write$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Write;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 853
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Write;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Write;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Write;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 789
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 796
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 838
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 845
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 813
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 776
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 783
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 801
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Write;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 808
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Write;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 1696
    sget-object v0, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeUpdateTransforms(I)V
    .locals 1

    .line 693
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->ensureUpdateTransformsIsMutable()V

    .line 694
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCurrentDocument(Lcom/google/firestore/v1/Precondition;)V
    .locals 0

    .line 735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 736
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    .line 737
    iget p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    return-void
.end method

.method private setDelete(Ljava/lang/String;)V
    .locals 1

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 201
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    .line 202
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    return-void
.end method

.method private setDeleteBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 229
    invoke-static {p1}, Lcom/google/firestore/v1/Write;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 230
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 231
    iput p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method

.method private setTransform(Lcom/google/firestore/v1/DocumentTransform;)V
    .locals 0

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 369
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 370
    iput p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method

.method private setUpdate(Lcom/google/firestore/v1/Document;)V
    .locals 0

    .line 104
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 106
    iput p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method

.method private setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0

    .line 463
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 464
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    .line 465
    iget p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    return-void
.end method

.method private setUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V
    .locals 1

    .line 613
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 614
    invoke-direct {p0}, Lcom/google/firestore/v1/Write;->ensureUpdateTransformsIsMutable()V

    .line 615
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setVerify(Ljava/lang/String;)V
    .locals 1

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    .line 299
    iput v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    .line 300
    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    return-void
.end method

.method private setVerifyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 329
    invoke-static {p1}, Lcom/google/firestore/v1/Write;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 330
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 331
    iput p1, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1623
    sget-object p2, Lcom/google/firestore/v1/Write$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1674
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 1668
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1653
    :pswitch_2
    sget-object p1, Lcom/google/firestore/v1/Write;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1655
    const-class p2, Lcom/google/firestore/v1/Write;

    monitor-enter p2

    .line 1656
    :try_start_0
    sget-object p1, Lcom/google/firestore/v1/Write;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1658
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1661
    sput-object p1, Lcom/google/firestore/v1/Write;->PARSER:Lcom/google/protobuf/Parser;

    .line 1663
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

    .line 1650
    :pswitch_3
    sget-object p1, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    return-object p1

    .line 1631
    :pswitch_4
    const-string v0, "operation_"

    const-string v1, "operationCase_"

    const-string v2, "bitField0_"

    const-class v3, Lcom/google/firestore/v1/Document;

    const-string v4, "updateMask_"

    const-string v5, "currentDocument_"

    const-class v6, Lcom/google/firestore/v1/DocumentTransform;

    const-string v7, "updateTransforms_"

    const-class v8, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    .line 1642
    const-string p2, "\u0000\u0007\u0001\u0001\u0001\u0007\u0007\u0000\u0001\u0000\u0001<\u0000\u0002\u023b\u0000\u0003\u1009\u0000\u0004\u1009\u0001\u0005\u023b\u0000\u0006<\u0000\u0007\u001b"

    .line 1646
    sget-object p3, Lcom/google/firestore/v1/Write;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Write;

    invoke-static {p3, p2, p1}, Lcom/google/firestore/v1/Write;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1628
    :pswitch_5
    new-instance p1, Lcom/google/firestore/v1/Write$Builder;

    invoke-direct {p1, p2}, Lcom/google/firestore/v1/Write$Builder;-><init>(Lcom/google/firestore/v1/Write$1;)V

    return-object p1

    .line 1625
    :pswitch_6
    new-instance p1, Lcom/google/firestore/v1/Write;

    invoke-direct {p1}, Lcom/google/firestore/v1/Write;-><init>()V

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

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->currentDocument_:Lcom/google/firestore/v1/Precondition;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/Precondition;->getDefaultInstance()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelete()Ljava/lang/String;
    .locals 2

    .line 166
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 169
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getDeleteBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 184
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 184
    :cond_0
    const-string v0, ""

    .line 187
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Write$OperationCase;->forNumber(I)Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransform()Lcom/google/firestore/v1/DocumentTransform;
    .locals 2

    .line 355
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    return-object v0

    .line 358
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->getDefaultInstance()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v0

    return-object v0
.end method

.method public getUpdate()Lcom/google/firestore/v1/Document;
    .locals 2

    .line 91
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0

    .line 94
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateMask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUpdateTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    return-object p1
.end method

.method public getUpdateTransformsCount()I
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getUpdateTransformsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUpdateTransformsOrBuilder(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;

    return-object p1
.end method

.method public getUpdateTransformsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;",
            ">;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->updateTransforms_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getVerify()Ljava/lang/String;
    .locals 2

    .line 262
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 265
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getVerifyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 281
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/google/firestore/v1/Write;->operation_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 281
    :cond_0
    const-string v0, ""

    .line 284
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 710
    iget v0, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDelete()Z
    .locals 2

    .line 152
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTransform()Z
    .locals 2

    .line 344
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpdate()Z
    .locals 2

    .line 80
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUpdateMask()Z
    .locals 2

    .line 424
    iget v0, p0, Lcom/google/firestore/v1/Write;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasVerify()Z
    .locals 2

    .line 247
    iget v0, p0, Lcom/google/firestore/v1/Write;->operationCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
