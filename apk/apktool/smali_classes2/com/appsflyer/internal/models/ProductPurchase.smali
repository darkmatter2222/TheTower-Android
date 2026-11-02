.class public final Lcom/appsflyer/internal/models/ProductPurchase;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/models/ProductPurchase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008 \n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0086\u0008\u0018\u0000 I2\u00020\u0001:\u0001IBy\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0015J\u0010\u0010\u001a\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u0015J\u0010\u0010\u001b\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001b\u0010\u0015J\u0010\u0010\u001c\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u0015J\u0010\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u0018J\u0010\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0018J\u0010\u0010\u001f\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u001f\u0010\u0015J\u0010\u0010 \u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008 \u0010\u0015J\u0010\u0010!\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008!\u0010\u0018J\u0010\u0010\"\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\"\u0010\u0018J\u0010\u0010#\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008#\u0010\u0015J\u009c\u0001\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0002H\u00c7\u0001\u00a2\u0006\u0004\u0008$\u0010%J\u001a\u0010\'\u001a\u00020&2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010)\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008)\u0010\u0018J\u0010\u0010*\u001a\u00020\u0002H\u00d7\u0001\u00a2\u0006\u0004\u0008*\u0010\u0015R\u0017\u0010+\u001a\u00020\u00058\u0007\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010\u0018R\u001a\u0010.\u001a\u00020\u00058\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010,\u001a\u0004\u0008/\u0010\u0018R\u001a\u00100\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u0010\u0015R\u001a\u00103\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00083\u00101\u001a\u0004\u00084\u0010\u0015R\u001a\u00105\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00085\u00101\u001a\u0004\u00086\u0010\u0015R\u001a\u00107\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00087\u00101\u001a\u0004\u00088\u0010\u0015R\u001a\u00109\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00089\u00101\u001a\u0004\u0008:\u0010\u0015R\u001a\u0010;\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u00101\u001a\u0004\u0008<\u0010\u0015R\u001a\u0010=\u001a\u00020\u00058\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008=\u0010,\u001a\u0004\u0008>\u0010\u0018R\u001a\u0010?\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008?\u00101\u001a\u0004\u0008@\u0010\u0015R\u001a\u0010A\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008A\u00101\u001a\u0004\u0008B\u0010\u0015R\u001a\u0010C\u001a\u00020\u00058\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008C\u0010,\u001a\u0004\u0008D\u0010\u0018R\u001a\u0010E\u001a\u00020\u00058\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008E\u0010,\u001a\u0004\u0008F\u0010\u0018R\u001a\u0010G\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008G\u00101\u001a\u0004\u0008H\u0010\u0015"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/ProductPurchase;",
        "",
        "",
        "p0",
        "p1",
        "",
        "p2",
        "p3",
        "p4",
        "p5",
        "p6",
        "p7",
        "p8",
        "p9",
        "p10",
        "p11",
        "p12",
        "p13",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "component1",
        "()Ljava/lang/String;",
        "component10",
        "component11",
        "()I",
        "component12",
        "component13",
        "component14",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/ProductPurchase;",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "toString",
        "acknowledgementState",
        "I",
        "getAcknowledgementState",
        "consumptionState",
        "getConsumptionState",
        "developerPayload",
        "Ljava/lang/String;",
        "getDeveloperPayload",
        "kind",
        "getKind",
        "obfuscatedExternalAccountId",
        "getObfuscatedExternalAccountId",
        "obfuscatedExternalProfileId",
        "getObfuscatedExternalProfileId",
        "orderId",
        "getOrderId",
        "productId",
        "getProductId",
        "purchaseState",
        "getPurchaseState",
        "purchaseTimeMillis",
        "getPurchaseTimeMillis",
        "purchaseToken",
        "getPurchaseToken",
        "purchaseType",
        "getPurchaseType",
        "quantity",
        "getQuantity",
        "regionCode",
        "getRegionCode",
        "Companion"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/appsflyer/internal/models/ProductPurchase$Companion;


# instance fields
.field private final acknowledgementState:I

.field private final consumptionState:I

.field private final developerPayload:Ljava/lang/String;

.field private final kind:Ljava/lang/String;

.field private final obfuscatedExternalAccountId:Ljava/lang/String;

.field private final obfuscatedExternalProfileId:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final purchaseState:I

.field private final purchaseTimeMillis:Ljava/lang/String;

.field private final purchaseToken:Ljava/lang/String;

.field private final purchaseType:I

.field private final quantity:I

.field private final regionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65334
    new-instance v0, Lcom/appsflyer/internal/models/ProductPurchase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/models/ProductPurchase;->Companion:Lcom/appsflyer/internal/models/ProductPurchase$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    .line 8
    iput p3, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    .line 9
    iput p4, p0, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    .line 10
    iput-object p5, p0, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    .line 11
    iput-object p6, p0, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    .line 12
    iput p7, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    .line 13
    iput p8, p0, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    .line 14
    iput-object p9, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    .line 15
    iput-object p10, p0, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    .line 16
    iput p11, p0, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    .line 17
    iput-object p12, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    .line 18
    iput-object p13, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    .line 19
    iput-object p14, p0, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/appsflyer/internal/models/ProductPurchase;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/appsflyer/internal/models/ProductPurchase;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 65339
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    goto :goto_2

    :cond_2
    move/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    goto :goto_3

    :cond_3
    move/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    goto :goto_6

    :cond_6
    move/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    iget v8, p0, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    goto :goto_7

    :cond_7
    move/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    iget v11, p0, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    goto :goto_a

    :cond_a
    move/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    iget-object v13, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    invoke-virtual/range {p1 .. p15}, Lcom/appsflyer/internal/models/ProductPurchase;->copy(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/ProductPurchase;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65335
    sget-object v0, Lcom/appsflyer/internal/models/ProductPurchase;->Companion:Lcom/appsflyer/internal/models/ProductPurchase$Companion;

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/models/ProductPurchase$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/ProductPurchase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 65354
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 65345
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()I
    .locals 1

    .line 65344
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    return v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    .line 65343
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 65342
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    .line 65341
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 65353
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 65352
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    return v0
.end method

.method public final component4()I
    .locals 1

    .line 65351
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    .line 65350
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 65349
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    .line 65348
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    return v0
.end method

.method public final component8()I
    .locals 1

    .line 65347
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    return v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 65346
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/ProductPurchase;
    .locals 16

    .line 65340
    const-string v0, ""

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/appsflyer/internal/models/ProductPurchase;

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v12, p11

    invoke-direct/range {v1 .. v15}, Lcom/appsflyer/internal/models/ProductPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65336
    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/models/ProductPurchase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/models/ProductPurchase;

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    iget v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    iget v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    iget v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    iget v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    iget v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final getAcknowledgementState()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    return v0
.end method

.method public final getConsumptionState()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    return v0
.end method

.method public final getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public final getObfuscatedExternalAccountId()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getObfuscatedExternalProfileId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseState()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    return v0
.end method

.method public final getPurchaseTimeMillis()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseType()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    return v0
.end method

.method public final getQuantity()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    return v0
.end method

.method public final getRegionCode()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 65337
    iget-object v0, p0, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 65338
    iget-object v1, v0, Lcom/appsflyer/internal/models/ProductPurchase;->kind:Ljava/lang/String;

    iget-object v2, v0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseTimeMillis:Ljava/lang/String;

    iget v3, v0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseState:I

    iget v4, v0, Lcom/appsflyer/internal/models/ProductPurchase;->consumptionState:I

    iget-object v5, v0, Lcom/appsflyer/internal/models/ProductPurchase;->developerPayload:Ljava/lang/String;

    iget-object v6, v0, Lcom/appsflyer/internal/models/ProductPurchase;->orderId:Ljava/lang/String;

    iget v7, v0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseType:I

    iget v8, v0, Lcom/appsflyer/internal/models/ProductPurchase;->acknowledgementState:I

    iget-object v9, v0, Lcom/appsflyer/internal/models/ProductPurchase;->purchaseToken:Ljava/lang/String;

    iget-object v10, v0, Lcom/appsflyer/internal/models/ProductPurchase;->productId:Ljava/lang/String;

    iget v11, v0, Lcom/appsflyer/internal/models/ProductPurchase;->quantity:I

    iget-object v12, v0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalAccountId:Ljava/lang/String;

    iget-object v13, v0, Lcom/appsflyer/internal/models/ProductPurchase;->obfuscatedExternalProfileId:Ljava/lang/String;

    iget-object v14, v0, Lcom/appsflyer/internal/models/ProductPurchase;->regionCode:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v0, "ProductPurchase(kind="

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumptionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", developerPayload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acknowledgementState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", purchaseToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obfuscatedExternalAccountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", obfuscatedExternalProfileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
