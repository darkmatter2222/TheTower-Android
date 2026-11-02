.class public final Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TransactionEventRequestOuterClass.java"

# interfaces
.implements Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TransactionEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;",
        ">;",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

.field public static final EVENT_ID_FIELD_NUMBER:I = 0x3

.field public static final JWS_REPRESENTATION_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRODUCT_FIELD_NUMBER:I = 0x5

.field public static final PRODUCT_ID_FIELD_NUMBER:I = 0x2

.field public static final RECEIPT_FIELD_NUMBER:I = 0x7

.field public static final SIGNATURE_FIELD_NUMBER:I = 0xa

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x6

.field public static final TRANSACTION_ID_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_STATE_FIELD_NUMBER:I = 0x8


# instance fields
.field private bitField0_:I

.field private eventId_:Lcom/google/protobuf/ByteString;

.field private jwsRepresentation_:Ljava/lang/String;

.field private productId_:Ljava/lang/String;

.field private product_:Ljava/lang/String;

.field private receipt_:Ljava/lang/String;

.field private signature_:Ljava/lang/String;

.field private timestamp_:Lcom/google/protobuf/Timestamp;

.field private transactionId_:Ljava/lang/String;

.field private transactionState_:I

.field private transaction_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2130
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-direct {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;-><init>()V

    .line 2133
    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    .line 2134
    const-class v1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 683
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 684
    const-string v0, ""

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->productId_:Ljava/lang/String;

    .line 685
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->eventId_:Lcom/google/protobuf/ByteString;

    .line 686
    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionId_:Ljava/lang/String;

    .line 687
    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->product_:Ljava/lang/String;

    .line 688
    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transaction_:Ljava/lang/String;

    .line 689
    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->receipt_:Ljava/lang/String;

    .line 690
    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->jwsRepresentation_:Ljava/lang/String;

    .line 691
    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->signature_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1

    .line 678
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object v0
.end method

.method static synthetic access$100(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1000(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearTransactionId()V

    return-void
.end method

.method static synthetic access$1100(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setTransactionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Ljava/lang/String;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setProduct(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearProduct()V

    return-void
.end method

.method static synthetic access$1400(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setProductBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Ljava/lang/String;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setTransaction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearTransaction()V

    return-void
.end method

.method static synthetic access$1700(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setTransactionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Ljava/lang/String;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setReceipt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearReceipt()V

    return-void
.end method

.method static synthetic access$200(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->mergeTimestamp(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2000(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setReceiptBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2100(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;I)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setTransactionStateValue(I)V

    return-void
.end method

.method static synthetic access$2200(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setTransactionState(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;)V

    return-void
.end method

.method static synthetic access$2300(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearTransactionState()V

    return-void
.end method

.method static synthetic access$2400(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Ljava/lang/String;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setJwsRepresentation(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearJwsRepresentation()V

    return-void
.end method

.method static synthetic access$2600(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setJwsRepresentationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Ljava/lang/String;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setSignature(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearSignature()V

    return-void
.end method

.method static synthetic access$2900(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setSignatureBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$400(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Ljava/lang/String;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setProductId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearProductId()V

    return-void
.end method

.method static synthetic access$600(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setProductIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setEventId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->clearEventId()V

    return-void
.end method

.method static synthetic access$900(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;Ljava/lang/String;)V
    .locals 0

    .line 678
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->setTransactionId(Ljava/lang/String;)V

    return-void
.end method

.method private clearEventId()V
    .locals 1

    .line 843
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getEventId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->eventId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearJwsRepresentation()V
    .locals 1

    .line 1221
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    .line 1222
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getJwsRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->jwsRepresentation_:Ljava/lang/String;

    return-void
.end method

.method private clearProduct()V
    .locals 1

    .line 943
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getProduct()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->product_:Ljava/lang/String;

    return-void
.end method

.method private clearProductId()V
    .locals 1

    .line 794
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->productId_:Ljava/lang/String;

    return-void
.end method

.method private clearReceipt()V
    .locals 1

    .line 1098
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    .line 1099
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getReceipt()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->receipt_:Ljava/lang/String;

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 1300
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    .line 1301
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->signature_:Ljava/lang/String;

    return-void
.end method

.method private clearTimestamp()V
    .locals 1

    const/4 v0, 0x0

    .line 756
    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 757
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    .line 1010
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getTransaction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transaction_:Ljava/lang/String;

    return-void
.end method

.method private clearTransactionId()V
    .locals 1

    .line 880
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    move-result-object v0

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method private clearTransactionState()V
    .locals 1

    const/4 v0, 0x0

    .line 1157
    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionState_:I

    return-void
.end method

.method public static getDefaultInstance()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1

    .line 2139
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object v0
.end method

.method private mergeTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 2

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 741
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 742
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 743
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Timestamp;

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->timestamp_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 745
    :cond_0
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 747
    :goto_0
    iget p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;
    .locals 1

    .line 1395
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;
    .locals 1

    .line 1398
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-virtual {v0, p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1371
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1378
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1334
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1341
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1383
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1390
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1358
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1365
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1321
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1328
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom([B)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1346
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1353
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;",
            ">;"
        }
    .end annotation

    .line 2145
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-virtual {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEventId(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 830
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->eventId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setJwsRepresentation(Ljava/lang/String;)V
    .locals 1

    .line 1209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1210
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    .line 1211
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->jwsRepresentation_:Ljava/lang/String;

    return-void
.end method

.method private setJwsRepresentationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1234
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1235
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->jwsRepresentation_:Ljava/lang/String;

    .line 1236
    iget p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    return-void
.end method

.method private setProduct(Ljava/lang/String;)V
    .locals 0

    .line 930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 932
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->product_:Ljava/lang/String;

    return-void
.end method

.method private setProductBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 955
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 956
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->product_:Ljava/lang/String;

    return-void
.end method

.method private setProductId(Ljava/lang/String;)V
    .locals 0

    .line 785
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 787
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->productId_:Ljava/lang/String;

    return-void
.end method

.method private setProductIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 802
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 803
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->productId_:Ljava/lang/String;

    return-void
.end method

.method private setReceipt(Ljava/lang/String;)V
    .locals 1

    .line 1084
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1085
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    .line 1086
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->receipt_:Ljava/lang/String;

    return-void
.end method

.method private setReceiptBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1113
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1114
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->receipt_:Ljava/lang/String;

    .line 1115
    iget p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    return-void
.end method

.method private setSignature(Ljava/lang/String;)V
    .locals 1

    .line 1288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1289
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    .line 1290
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->signature_:Ljava/lang/String;

    return-void
.end method

.method private setSignatureBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1313
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1314
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->signature_:Ljava/lang/String;

    .line 1315
    iget p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    return-void
.end method

.method private setTimestamp(Lcom/google/protobuf/Timestamp;)V
    .locals 0

    .line 726
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 727
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->timestamp_:Lcom/google/protobuf/Timestamp;

    .line 728
    iget p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    return-void
.end method

.method private setTransaction(Ljava/lang/String;)V
    .locals 0

    .line 997
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 999
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transaction_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1022
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1023
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transaction_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 871
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 873
    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 888
    invoke-static {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 889
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionState(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;)V
    .locals 0

    .line 1149
    invoke-virtual {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;->getNumber()I

    move-result p1

    iput p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionState_:I

    return-void
.end method

.method private setTransactionStateValue(I)V
    .locals 0

    .line 1142
    iput p1, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionState_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 2070
    sget-object p2, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2123
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    const/4 p1, 0x1

    .line 2117
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2102
    :pswitch_2
    sget-object p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2104
    const-class p2, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    monitor-enter p2

    .line 2105
    :try_start_0
    sget-object p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2107
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2110
    sput-object p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->PARSER:Lcom/google/protobuf/Parser;

    .line 2112
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

    .line 2099
    :pswitch_3
    sget-object p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    return-object p1

    .line 2078
    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "timestamp_"

    const-string v2, "productId_"

    const-string v3, "eventId_"

    const-string v4, "transactionId_"

    const-string v5, "product_"

    const-string v6, "transaction_"

    const-string v7, "receipt_"

    const-string v8, "transactionState_"

    const-string v9, "jwsRepresentation_"

    const-string v10, "signature_"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p1

    .line 2091
    const-string p2, "\u0000\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u0208\u0003\n\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u1208\u0001\u0008\u000c\t\u1208\u0002\n\u1208\u0003"

    .line 2095
    sget-object p3, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->DEFAULT_INSTANCE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-static {p3, p2, p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2075
    :pswitch_5
    new-instance p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;

    invoke-direct {p1, p2}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData$Builder;-><init>(Lgatewayprotocol/v1/TransactionEventRequestOuterClass$1;)V

    return-object p1

    .line 2072
    :pswitch_6
    new-instance p1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;

    invoke-direct {p1}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;-><init>()V

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

.method public getEventId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 819
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->eventId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJwsRepresentation()Ljava/lang/String;
    .locals 1

    .line 1184
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->jwsRepresentation_:Ljava/lang/String;

    return-object v0
.end method

.method public getJwsRepresentationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1197
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->jwsRepresentation_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 905
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->product_:Ljava/lang/String;

    return-object v0
.end method

.method public getProductBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 918
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->product_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .line 768
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->productId_:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 777
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->productId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceipt()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1055
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->receipt_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiptBytes()Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->receipt_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    .line 1263
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->signature_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1276
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->signature_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 716
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->timestamp_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 1

    .line 972
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transaction_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 985
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transaction_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 854
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 863
    iget-object v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionState()Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;
    .locals 1

    .line 1134
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionState_:I

    invoke-static {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;->forNumber(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1135
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;->UNRECOGNIZED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionState;

    :cond_0
    return-object v0
.end method

.method public getTransactionStateValue()I
    .locals 1

    .line 1126
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->transactionState_:I

    return v0
.end method

.method public hasJwsRepresentation()Z
    .locals 1

    .line 1172
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasReceipt()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1041
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSignature()Z
    .locals 1

    .line 1251
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 2

    .line 705
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionData;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
