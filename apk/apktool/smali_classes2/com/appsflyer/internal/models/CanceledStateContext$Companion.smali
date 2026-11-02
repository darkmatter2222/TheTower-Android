.class public final Lcom/appsflyer/internal/models/CanceledStateContext$Companion;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/models/Deserialize;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/models/CanceledStateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/appsflyer/internal/models/Deserialize<",
        "Lcom/appsflyer/internal/models/CanceledStateContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/CanceledStateContext$Companion;",
        "Lcom/appsflyer/internal/models/Deserialize;",
        "Lcom/appsflyer/internal/models/CanceledStateContext;",
        "<init>",
        "()V",
        "Lorg/json/JSONObject;",
        "p0",
        "fromJson",
        "(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CanceledStateContext;"
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
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static getOneTimePurchaseOfferDetails:I = 0x1

.field private static getPackageName:I = 0x0

.field private static getQuantity:J = 0x54f9e6d5a0b46b65L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 65354
    invoke-direct {p0}, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 13

    const/4 v0, 0x2

    .line 65
    rem-int v1, v0, v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    sget v2, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->$11:I

    add-int/lit8 v2, v2, 0x61

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->$10:I

    rem-int/2addr v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/16 v2, 0x16

    div-int/2addr v2, v1

    goto :goto_0

    .line 0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_1
    :goto_0
    check-cast p0, [C

    .line 51
    new-instance v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;

    invoke-direct {v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;-><init>()V

    .line 54
    sget-wide v3, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getQuantity:J

    const-wide v5, 0x6cec79b9f79ca3b1L    # 4.9081538215191364E216

    xor-long/2addr v3, v5

    .line 55
    invoke-static {v3, v4, p0, p1}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getOneTimePurchaseOfferDetails(J[CI)[C

    move-result-object p0

    const/4 p1, 0x4

    .line 59
    iput p1, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    :goto_1
    iget v3, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 65
    sget v3, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->$10:I

    add-int/lit8 v3, v3, 0x65

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->$11:I

    rem-int/2addr v3, v0

    .line 60
    iget v3, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    sub-int/2addr v3, p1

    iput v3, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getOneTimePurchaseOfferDetails:I

    .line 61
    iget v3, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    iget v4, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    aget-char v4, p0, v4

    iget v7, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    rem-int/2addr v7, p1

    aget-char v7, p0, v7

    xor-int/2addr v4, v7

    int-to-long v7, v4

    iget v4, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getOneTimePurchaseOfferDetails:I

    int-to-long v9, v4

    sget-wide v11, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getQuantity:J

    xor-long/2addr v11, v5

    mul-long/2addr v9, v11

    xor-long/2addr v7, v9

    long-to-int v4, v7

    int-to-char v4, v4

    aput-char v4, p0, v3

    .line 59
    iget v3, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA2z;->getPackageName:I

    goto :goto_1

    .line 65
    :cond_2
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-direct {v2, p0, p1, v3}, Ljava/lang/String;-><init>([CII)V

    sget p0, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->$11:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->$10:I

    rem-int/2addr p0, v0

    if-nez p0, :cond_3

    aput-object v2, p2, v1

    return-void

    :cond_3
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CanceledStateContext;
    .locals 9

    const/4 v0, 0x2

    .line 68
    rem-int v1, v0, v0

    .line 0
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v2, Lcom/appsflyer/internal/models/CanceledStateContext;

    const/4 v3, 0x0

    .line 61
    invoke-static {v1, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "\u6c2c\uda93\u6c48\u6372\u1222\ubf28\uf2ac\ue531\u4f10\u36d8\ud7fa\uc281\u2afe\ud5ae\ubb54\u1e5d\u05a8\ue83e\u988b\u7b30\ue109\u8ce3\u7dd9\u58f5\udcd2\ua394\u212f\ub448\ubfa0\u4646\u068e\u911d\u9b73\u1af9"

    invoke-static {v6, v1, v5}, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v1, v5, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 62
    sget-object v5, Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;->Companion:Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation$Companion;

    check-cast v5, Lcom/appsflyer/internal/models/Deserialize;

    .line 60
    invoke-static {p1, v1, v5}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;

    .line 64
    invoke-static {v3, v3, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "\u201f\ue833\u206d\u4172\u2082\u7bd5\ud0aa\u21c5\u032e\u0474\uf5ef\u0674\u66da\ue729\u994e\uda8a\u498e\uda99\uba89\ubfdc\uad33\ube4b\u5ffb\u9c1d\u90e6\u9138\u0324"

    invoke-static {v7, v5, v6}, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v5, v6, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/appsflyer/internal/models/ReplacementCancellation;->Companion:Lcom/appsflyer/internal/models/ReplacementCancellation$Companion;

    check-cast v6, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {p1, v5, v6}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appsflyer/internal/models/ReplacementCancellation;

    .line 65
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v6

    int-to-byte v6, v6

    rsub-int/lit8 v6, v6, -0x1

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "\u621f\u692b\u626c\u4f2a\ua186\u65ea\udef1\u3fe2\u412a\u8562\ufb9b\u1848\u24d6\u662b\u970b\uc497\u0b9b\u5b8a\ub4d6\ua1c5\uef3e\u3f51\u51a1\u8233\ud2e3\u1023\u0d73\u6e92\ub196\uf5f0\u2acc"

    invoke-static {v8, v6, v7}, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v6, v7, v3

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/appsflyer/internal/models/SystemInitiatedCancellation;->Companion:Lcom/appsflyer/internal/models/SystemInitiatedCancellation$Companion;

    check-cast v7, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {p1, v6, v7}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/appsflyer/internal/models/SystemInitiatedCancellation;

    .line 66
    invoke-static {v3, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v7

    new-array v4, v4, [Ljava/lang/Object;

    const-string v8, "\udc12\u53d1\udc67\ub5ce\u9b76\u906a\u2403\uca64\uff0b\ubf9b\u015f\uedd2\u9adb\u5cc4\u6df2\u3113\ub586\u6156\u4e37\u5468\u5131\u05a0\uab4a\u77ba\u6ce3\u2ac1\uf79f\u9b09\u0f9c"

    invoke-static {v8, v7, v4}, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->a(Ljava/lang/String;I[Ljava/lang/Object;)V

    aget-object v3, v4, v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/models/UserInitiatedCancellation;->Companion:Lcom/appsflyer/internal/models/UserInitiatedCancellation$Companion;

    check-cast v4, Lcom/appsflyer/internal/models/Deserialize;

    invoke-static {p1, v3, v4}, Lcom/appsflyer/internal/models/SubscriptionPurchaseKt;->access$toObject(Lorg/json/JSONObject;Ljava/lang/String;Lcom/appsflyer/internal/models/Deserialize;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    .line 59
    invoke-direct {v2, v1, v5, v6, p1}, Lcom/appsflyer/internal/models/CanceledStateContext;-><init>(Lcom/appsflyer/internal/models/DeveloperInitiatedCancellation;Lcom/appsflyer/internal/models/ReplacementCancellation;Lcom/appsflyer/internal/models/SystemInitiatedCancellation;Lcom/appsflyer/internal/models/UserInitiatedCancellation;)V

    .line 68
    sget p1, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getPackageName:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v1, p1, 0x80

    sput v1, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getOneTimePurchaseOfferDetails:I

    rem-int/2addr p1, v0

    return-object v2
.end method

.method public final bridge synthetic fromJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x2

    .line 57
    rem-int v1, v0, v0

    sget v1, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getOneTimePurchaseOfferDetails:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getPackageName:I

    rem-int/2addr v1, v0

    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object p1

    if-eqz v1, :cond_0

    const/16 v1, 0x4e

    div-int/lit8 v1, v1, 0x0

    :cond_0
    sget v1, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getPackageName:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/appsflyer/internal/models/CanceledStateContext$Companion;->getOneTimePurchaseOfferDetails:I

    rem-int/2addr v1, v0

    return-object p1
.end method
