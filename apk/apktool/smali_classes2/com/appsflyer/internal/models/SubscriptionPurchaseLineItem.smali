.class public final Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\u0008\u0086\u0008\u0018\u0000 42\u00020\u0001:\u00014BA\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0006H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0008H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\nH\u00c7\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0006H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0019\u0010\u0014JT\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0006H\u00c7\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u00020\u001c2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0010\u0010 \u001a\u00020\u001fH\u00d6\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0006H\u00d7\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0014R\u001c\u0010#\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010$\u001a\u0004\u0008%\u0010\u0010R\u001c\u0010&\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010\u0012R\u001a\u0010)\u001a\u00020\u00068\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010\u0014R\u001c\u0010,\u001a\u0004\u0018\u00010\u00088\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010\u0016R\u001c\u0010/\u001a\u0004\u0018\u00010\n8\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u0010\u0018R\u001a\u00102\u001a\u00020\u00068\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00082\u0010*\u001a\u0004\u00083\u0010\u0014"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
        "",
        "Lcom/appsflyer/internal/models/AutoRenewingPlan;",
        "p0",
        "Lcom/appsflyer/internal/models/DeferredItemReplacement;",
        "p1",
        "",
        "p2",
        "Lcom/appsflyer/internal/models/OfferDetails;",
        "p3",
        "Lcom/appsflyer/internal/models/PrepaidPlan;",
        "p4",
        "p5",
        "<init>",
        "(Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;)V",
        "component1",
        "()Lcom/appsflyer/internal/models/AutoRenewingPlan;",
        "component2",
        "()Lcom/appsflyer/internal/models/DeferredItemReplacement;",
        "component3",
        "()Ljava/lang/String;",
        "component4",
        "()Lcom/appsflyer/internal/models/OfferDetails;",
        "component5",
        "()Lcom/appsflyer/internal/models/PrepaidPlan;",
        "component6",
        "copy",
        "(Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "toString",
        "autoRenewingPlan",
        "Lcom/appsflyer/internal/models/AutoRenewingPlan;",
        "getAutoRenewingPlan",
        "deferredItemReplacement",
        "Lcom/appsflyer/internal/models/DeferredItemReplacement;",
        "getDeferredItemReplacement",
        "expiryTime",
        "Ljava/lang/String;",
        "getExpiryTime",
        "offerDetails",
        "Lcom/appsflyer/internal/models/OfferDetails;",
        "getOfferDetails",
        "prepaidPlan",
        "Lcom/appsflyer/internal/models/PrepaidPlan;",
        "getPrepaidPlan",
        "productId",
        "getProductId",
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
.field public static final Companion:Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;


# instance fields
.field private final autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

.field private final deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

.field private final expiryTime:Ljava/lang/String;

.field private final offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

.field private final prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

.field private final productId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65343
    new-instance v0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->Companion:Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    .line 187
    iput-object p2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    .line 188
    iput-object p3, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    .line 189
    iput-object p4, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    .line 190
    iput-object p5, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    .line 191
    iput-object p6, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;ILjava/lang/Object;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    .line 65347
    iget-object p1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-object p5, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-object p6, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->copy(Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/appsflyer/internal/models/AutoRenewingPlan;
    .locals 1

    .line 65354
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    return-object v0
.end method

.method public final component2()Lcom/appsflyer/internal/models/DeferredItemReplacement;
    .locals 1

    .line 65353
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 65352
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/appsflyer/internal/models/OfferDetails;
    .locals 1

    .line 65351
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    return-object v0
.end method

.method public final component5()Lcom/appsflyer/internal/models/PrepaidPlan;
    .locals 1

    .line 65350
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 65349
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;
    .locals 8

    .line 65348
    const-string v0, ""

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;-><init>(Lcom/appsflyer/internal/models/AutoRenewingPlan;Lcom/appsflyer/internal/models/DeferredItemReplacement;Ljava/lang/String;Lcom/appsflyer/internal/models/OfferDetails;Lcom/appsflyer/internal/models/PrepaidPlan;Ljava/lang/String;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65344
    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    return-object v0
.end method

.method public final getDeferredItemReplacement()Lcom/appsflyer/internal/models/DeferredItemReplacement;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    return-object v0
.end method

.method public final getExpiryTime()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfferDetails()Lcom/appsflyer/internal/models/OfferDetails;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    return-object v0
.end method

.method public final getPrepaidPlan()Lcom/appsflyer/internal/models/PrepaidPlan;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 65345
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 65346
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->autoRenewingPlan:Lcom/appsflyer/internal/models/AutoRenewingPlan;

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->deferredItemReplacement:Lcom/appsflyer/internal/models/DeferredItemReplacement;

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->expiryTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->offerDetails:Lcom/appsflyer/internal/models/OfferDetails;

    iget-object v4, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->prepaidPlan:Lcom/appsflyer/internal/models/PrepaidPlan;

    iget-object v5, p0, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->productId:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SubscriptionPurchaseLineItem(autoRenewingPlan="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", deferredItemReplacement="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offerDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prepaidPlan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
