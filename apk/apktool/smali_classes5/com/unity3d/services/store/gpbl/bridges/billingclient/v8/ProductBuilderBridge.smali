.class public final Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;
.super Lcom/unity3d/services/core/reflection/GenericBridge;
.source "ProductBuilderBridge.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\nJ\u0008\u0010\r\u001a\u00020\nH\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;",
        "Lcom/unity3d/services/core/reflection/GenericBridge;",
        "builderInstance",
        "",
        "<init>",
        "(Ljava/lang/Object;)V",
        "build",
        "Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge;",
        "setProductType",
        "productType",
        "",
        "setProductId",
        "productId",
        "getClassName",
        "Companion",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final BUILD_METHOD:Ljava/lang/String; = "build"

.field public static final Companion:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge$Companion;

.field private static final SET_PRODUCT_ID_METHOD:Ljava/lang/String; = "setProductId"

.field private static final SET_PRODUCT_TYPE_METHOD:Ljava/lang/String; = "setProductType"


# instance fields
.field private builderInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->Companion:Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    const-string v0, "builderInstance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setProductId"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v4

    .line 9
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "setProductType"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 10
    const-string v1, "build"

    new-array v2, v4, [Ljava/lang/Class;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/unity3d/services/core/reflection/GenericBridge;-><init>(Ljava/util/Map;)V

    .line 5
    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->builderInstance:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final build()Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge;
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->builderInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "build"

    invoke-virtual {p0, v2, v0, v1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge;

    invoke-direct {v1, v0}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBridge;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "com.android.billingclient.api.QueryProductDetailsParams$Product$Builder"

    return-object v0
.end method

.method public final setProductId(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;
    .locals 2

    const-string v0, "productId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->builderInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "setProductId"

    invoke-virtual {p0, v1, v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "callNonVoidMethod(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->builderInstance:Ljava/lang/Object;

    return-object p0
.end method

.method public final setProductType(Ljava/lang/String;)Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;
    .locals 2

    const-string v0, "productType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->builderInstance:Ljava/lang/Object;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "setProductType"

    invoke-virtual {p0, v1, v0, p1}, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->callNonVoidMethod(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "callNonVoidMethod(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unity3d/services/store/gpbl/bridges/billingclient/v8/ProductBuilderBridge;->builderInstance:Ljava/lang/Object;

    return-object p0
.end method
