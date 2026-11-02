.class public final Lcom/appsflyer/internal/models/SubscriptionValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/models/SubscriptionValidationResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0086\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B%\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u0004H\u00c7\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u00c7\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ2\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u00c7\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017H\u00d7\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u00068\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u000fR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u00048\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\rR\u001a\u0010 \u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010\u000b"
    }
    d2 = {
        "Lcom/appsflyer/internal/models/SubscriptionValidationResult;",
        "",
        "",
        "p0",
        "Lcom/appsflyer/internal/models/SubscriptionPurchase;",
        "p1",
        "Lcom/appsflyer/internal/models/ValidationFailureData;",
        "p2",
        "<init>",
        "(ZLcom/appsflyer/internal/models/SubscriptionPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)V",
        "component1",
        "()Z",
        "component2",
        "()Lcom/appsflyer/internal/models/SubscriptionPurchase;",
        "component3",
        "()Lcom/appsflyer/internal/models/ValidationFailureData;",
        "copy",
        "(ZLcom/appsflyer/internal/models/SubscriptionPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)Lcom/appsflyer/internal/models/SubscriptionValidationResult;",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "failureData",
        "Lcom/appsflyer/internal/models/ValidationFailureData;",
        "getFailureData",
        "subscriptionPurchase",
        "Lcom/appsflyer/internal/models/SubscriptionPurchase;",
        "getSubscriptionPurchase",
        "success",
        "Z",
        "getSuccess",
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
.field public static final Companion:Lcom/appsflyer/internal/models/SubscriptionValidationResult$Companion;


# instance fields
.field private final failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

.field private final subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

.field private final success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65345
    new-instance v0, Lcom/appsflyer/internal/models/SubscriptionValidationResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/models/SubscriptionValidationResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->Companion:Lcom/appsflyer/internal/models/SubscriptionValidationResult$Companion;

    return-void
.end method

.method public constructor <init>(ZLcom/appsflyer/internal/models/SubscriptionPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    .line 7
    iput-object p2, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    .line 8
    iput-object p3, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/appsflyer/internal/models/SubscriptionValidationResult;ZLcom/appsflyer/internal/models/SubscriptionPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;ILjava/lang/Object;)Lcom/appsflyer/internal/models/SubscriptionValidationResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 65350
    iget-boolean p1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->copy(ZLcom/appsflyer/internal/models/SubscriptionPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)Lcom/appsflyer/internal/models/SubscriptionValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionValidationResult;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 65346
    sget-object v0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->Companion:Lcom/appsflyer/internal/models/SubscriptionValidationResult$Companion;

    invoke-virtual {v0, p0}, Lcom/appsflyer/internal/models/SubscriptionValidationResult$Companion;->fromJson(Lorg/json/JSONObject;)Lcom/appsflyer/internal/models/SubscriptionValidationResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 65354
    iget-boolean v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    return v0
.end method

.method public final component2()Lcom/appsflyer/internal/models/SubscriptionPurchase;
    .locals 1

    .line 65353
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    return-object v0
.end method

.method public final component3()Lcom/appsflyer/internal/models/ValidationFailureData;
    .locals 1

    .line 65352
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    return-object v0
.end method

.method public final copy(ZLcom/appsflyer/internal/models/SubscriptionPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)Lcom/appsflyer/internal/models/SubscriptionValidationResult;
    .locals 1

    .line 65351
    new-instance v0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/internal/models/SubscriptionValidationResult;-><init>(ZLcom/appsflyer/internal/models/SubscriptionPurchase;Lcom/appsflyer/internal/models/ValidationFailureData;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 65347
    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/models/SubscriptionValidationResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/models/SubscriptionValidationResult;

    iget-boolean v1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    iget-boolean v3, p1, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    iget-object v3, p1, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    iget-object p1, p1, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getFailureData()Lcom/appsflyer/internal/models/ValidationFailureData;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    return-object v0
.end method

.method public final getSubscriptionPurchase()Lcom/appsflyer/internal/models/SubscriptionPurchase;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 65348
    iget-boolean v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 65349
    iget-boolean v0, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->success:Z

    iget-object v1, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->subscriptionPurchase:Lcom/appsflyer/internal/models/SubscriptionPurchase;

    iget-object v2, p0, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->failureData:Lcom/appsflyer/internal/models/ValidationFailureData;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SubscriptionValidationResult(success="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", subscriptionPurchase="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failureData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
