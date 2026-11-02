.class public abstract Lcom/appsflyer/api/PurchaseEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1z;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0014\u0008&\u0018\u00002\u00020\u0001B5\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\rH\u0096\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001b\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\r0\u0014H\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R \u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u00038\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\t8\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001a\u0010#\u001a\u00020\u00038\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008#\u0010\u001c\u001a\u0004\u0008$\u0010\u001eR\u001a\u0010%\u001a\u00020\u00068\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010("
    }
    d2 = {
        "Lcom/appsflyer/api/PurchaseEvent;",
        "Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1z;",
        "",
        "",
        "p0",
        "p1",
        "Lcom/appsflyer/api/Store;",
        "p2",
        "p3",
        "",
        "p4",
        "<init>",
        "(Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/api/Store;Ljava/lang/String;J)V",
        "",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toJsonMap",
        "()Ljava/util/Map;",
        "productIds",
        "Ljava/util/List;",
        "getProductIds",
        "()Ljava/util/List;",
        "productType",
        "Ljava/lang/String;",
        "getProductType",
        "()Ljava/lang/String;",
        "purchaseTime",
        "J",
        "getPurchaseTime",
        "()J",
        "purchaseToken",
        "getPurchaseToken",
        "store",
        "Lcom/appsflyer/api/Store;",
        "getStore",
        "()Lcom/appsflyer/api/Store;"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final productIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final productType:Ljava/lang/String;

.field private final purchaseTime:J

.field private final purchaseToken:Ljava/lang/String;

.field private final store:Lcom/appsflyer/api/Store;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/appsflyer/api/Store;Ljava/lang/String;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/appsflyer/api/Store;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/appsflyer/api/PurchaseEvent;->productIds:Ljava/util/List;

    .line 11
    iput-object p2, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseToken:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/appsflyer/api/PurchaseEvent;->store:Lcom/appsflyer/api/Store;

    .line 13
    iput-object p4, p0, Lcom/appsflyer/api/PurchaseEvent;->productType:Ljava/lang/String;

    .line 14
    iput-wide p5, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 30
    :cond_2
    const-string v1, ""

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/appsflyer/api/PurchaseEvent;

    .line 32
    iget-object v1, p0, Lcom/appsflyer/api/PurchaseEvent;->productIds:Ljava/util/List;

    iget-object v3, p1, Lcom/appsflyer/api/PurchaseEvent;->productIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/api/PurchaseEvent;->purchaseToken:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lcom/appsflyer/api/PurchaseEvent;->store:Lcom/appsflyer/api/Store;

    iget-object v3, p1, Lcom/appsflyer/api/PurchaseEvent;->store:Lcom/appsflyer/api/Store;

    if-eq v1, v3, :cond_5

    return v2

    .line 35
    :cond_5
    iget-object v1, p0, Lcom/appsflyer/api/PurchaseEvent;->productType:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/api/PurchaseEvent;->productType:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getProductIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/appsflyer/api/PurchaseEvent;->productIds:Ljava/util/List;

    return-object v0
.end method

.method public final getProductType()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/appsflyer/api/PurchaseEvent;->productType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPurchaseTime()J
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseTime:J

    return-wide v0
.end method

.method public final getPurchaseToken()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStore()Lcom/appsflyer/api/Store;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/appsflyer/api/PurchaseEvent;->store:Lcom/appsflyer/api/Store;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/appsflyer/api/PurchaseEvent;->productIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-object v1, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 43
    iget-object v1, p0, Lcom/appsflyer/api/PurchaseEvent;->store:Lcom/appsflyer/api/Store;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 44
    iget-object v1, p0, Lcom/appsflyer/api/PurchaseEvent;->productType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toJsonMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "purchase_token"

    iget-object v2, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseToken:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 20
    const-string v1, "product_ids"

    iget-object v2, p0, Lcom/appsflyer/api/PurchaseEvent;->productIds:Ljava/util/List;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 21
    const-string v1, "product_type"

    iget-object v2, p0, Lcom/appsflyer/api/PurchaseEvent;->productType:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    iget-wide v1, p0, Lcom/appsflyer/api/PurchaseEvent;->purchaseTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "purchase_time"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 18
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
