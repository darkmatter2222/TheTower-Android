.class public final Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\u0008\u0086\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B+\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u00c7\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u000bJ:\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002H\u00c7\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002H\u00d7\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u000bR\u001a\u0010\u0019\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u000bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\rR\u001a\u0010\u001f\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u001a\u001a\u0004\u0008 \u0010\u000bR\u001a\u0010!\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001a\u001a\u0004\u0008\"\u0010\u000b"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;",
        "",
        "",
        "p0",
        "Lcom/appsflyer/internal/models/Money;",
        "p1",
        "p2",
        "p3",
        "<init>",
        "(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)V",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "()Lcom/appsflyer/internal/models/Money;",
        "component3",
        "component4",
        "copy",
        "(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "toString",
        "expectedNewPriceChargeTime",
        "Ljava/lang/String;",
        "getExpectedNewPriceChargeTime",
        "newPrice",
        "Lcom/appsflyer/internal/models/Money;",
        "getNewPrice",
        "priceChangeMode",
        "getPriceChangeMode",
        "priceChangeState",
        "getPriceChangeState",
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
.field public static final Companion:Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;


# instance fields
.field private final expectedNewPriceChargeTime:Ljava/lang/String;

.field private final newPrice:Lcom/appsflyer/internal/models/Money;

.field private final priceChangeMode:Ljava/lang/String;

.field private final priceChangeState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65345
    new-instance v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->Companion:Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    .line 249
    iput-object p3, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    .line 250
    iput-object p4, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 65349
    iget-object p1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->copy(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 65354
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/appsflyer/internal/models/Money;
    .locals 1

    .line 65353
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 65352
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    .line 65351
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;
    .locals 1

    .line 65350
    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;-><init>(Ljava/lang/String;Lcom/appsflyer/internal/models/Money;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65346
    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getExpectedNewPriceChargeTime()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewPrice()Lcom/appsflyer/internal/models/Money;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    return-object v0
.end method

.method public final getPriceChangeMode()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    return-object v0
.end method

.method public final getPriceChangeState()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 65347
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 65348
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->expectedNewPriceChargeTime:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->newPrice:Lcom/appsflyer/internal/models/Money;

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeMode:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->priceChangeState:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SubscriptionItemPriceChangeDetails(expectedNewPriceChargeTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", newPrice="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priceChangeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
