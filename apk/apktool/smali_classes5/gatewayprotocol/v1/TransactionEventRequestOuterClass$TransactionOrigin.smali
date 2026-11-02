.class public final enum Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;
.super Ljava/lang/Enum;
.source "TransactionEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/TransactionEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransactionOrigin"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin$TransactionOriginVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

.field public static final enum TRANSACTION_ORIGIN_HISTORICAL:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

.field public static final TRANSACTION_ORIGIN_HISTORICAL_VALUE:I = 0x2

.field public static final enum TRANSACTION_ORIGIN_IAP_PLUGIN:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

.field public static final TRANSACTION_ORIGIN_IAP_PLUGIN_VALUE:I = 0x3

.field public static final enum TRANSACTION_ORIGIN_LIVE_UPDATE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

.field public static final TRANSACTION_ORIGIN_LIVE_UPDATE_VALUE:I = 0x1

.field public static final enum TRANSACTION_ORIGIN_UNSPECIFIED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

.field public static final TRANSACTION_ORIGIN_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;
    .locals 5

    .line 370
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_UNSPECIFIED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    sget-object v1, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_LIVE_UPDATE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    sget-object v2, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_HISTORICAL:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    sget-object v3, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_IAP_PLUGIN:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    sget-object v4, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->UNRECOGNIZED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    filled-new-array {v0, v1, v2, v3, v4}, [Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 375
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    const-string v1, "TRANSACTION_ORIGIN_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_UNSPECIFIED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    .line 379
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    const-string v1, "TRANSACTION_ORIGIN_LIVE_UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_LIVE_UPDATE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    .line 383
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    const-string v1, "TRANSACTION_ORIGIN_HISTORICAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_HISTORICAL:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    .line 387
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    const-string v1, "TRANSACTION_ORIGIN_IAP_PLUGIN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_IAP_PLUGIN:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    .line 388
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const-string v3, "UNRECOGNIZED"

    invoke-direct {v0, v3, v1, v2}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->UNRECOGNIZED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    .line 370
    invoke-static {}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->$values()[Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    move-result-object v0

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->$VALUES:[Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    .line 443
    new-instance v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin$1;

    invoke-direct {v0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin$1;-><init>()V

    sput-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 467
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 468
    iput p3, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->value:I

    return-void
.end method

.method public static forNumber(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 433
    :cond_0
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_IAP_PLUGIN:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    return-object p0

    .line 432
    :cond_1
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_HISTORICAL:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    return-object p0

    .line 431
    :cond_2
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_LIVE_UPDATE:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    return-object p0

    .line 430
    :cond_3
    sget-object p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->TRANSACTION_ORIGIN_UNSPECIFIED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;",
            ">;"
        }
    .end annotation

    .line 440
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 453
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin$TransactionOriginVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 425
    invoke-static {p0}, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->forNumber(I)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;
    .locals 1

    .line 370
    const-class v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    return-object p0
.end method

.method public static values()[Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;
    .locals 1

    .line 370
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->$VALUES:[Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    invoke-virtual {v0}, [Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 411
    sget-object v0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->UNRECOGNIZED:Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;

    if-eq p0, v0, :cond_0

    .line 415
    iget v0, p0, Lgatewayprotocol/v1/TransactionEventRequestOuterClass$TransactionOrigin;->value:I

    return v0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
