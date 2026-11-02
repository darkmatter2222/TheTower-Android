.class public final Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618;->getPackageName(ZLjava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private synthetic getOneTimePurchaseOfferDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/api/InAppPurchaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic getQuantity:Lcom/appsflyer/api/PurchaseClient;


# direct methods
.method public constructor <init>(Lcom/appsflyer/api/PurchaseClient;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/api/PurchaseClient;",
            "Ljava/util/List<",
            "Lcom/appsflyer/api/InAppPurchaseEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1y;->getQuantity:Lcom/appsflyer/api/PurchaseClient;

    iput-object p2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1y;->getOneTimePurchaseOfferDetails:Ljava/util/List;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 10

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1y;->getQuantity:Lcom/appsflyer/api/PurchaseClient;

    :try_start_0
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v3, 0x2f62300c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    add-int/lit8 v4, v4, 0x47

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    const v7, 0xa3df

    add-int/2addr v6, v7

    int-to-char v6, v6

    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v5, "getOneTimePurchaseOfferDetails"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-static {v0, v2, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    add-int/lit8 v0, v0, 0x47

    invoke-static {v7}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v8

    invoke-static {v2}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result v2

    const v9, 0xa40f

    sub-int/2addr v9, v2

    int-to-char v2, v9

    invoke-static {v0, v8, v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v2, Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 190
    const-string v1, "[PurchaseConnector]: Communication exception"

    .line 189
    invoke-interface {v0, v1, p1}, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p1
.end method

.method public final onResponse(Lcom/appsflyer/internal/components/network/http/ResponseNetwork;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/components/network/http/ResponseNetwork<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, ""

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-interface {v2}, Lcom/appsflyer/internal/components/network/http/ResponseNetwork;->isSuccessful()Z

    move-result v3

    const/4 v4, 0x0

    .line 176
    const-string v5, "getPackageName"

    const/4 v6, 0x0

    const v7, 0xa3df

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_1

    .line 177
    iget-object v10, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1y;->getQuantity:Lcom/appsflyer/api/PurchaseClient;

    iget-object v11, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1y;->getOneTimePurchaseOfferDetails:Ljava/util/List;

    const/4 v12, 0x2

    :try_start_0
    new-array v13, v12, [Ljava/lang/Object;

    aput-object v11, v13, v8

    aput-object v10, v13, v9

    sget-object v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v11, 0x77e8dede

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    move/from16 v17, v4

    goto :goto_0

    :cond_0
    const/16 v10, 0x30

    invoke-static {v0, v10, v9}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x45

    invoke-static {v0, v10}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v9}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v15

    cmpl-float v15, v15, v4

    sub-int v15, v7, v15

    int-to-char v15, v15

    invoke-static {v14, v10, v15}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    new-array v12, v12, [Ljava/lang/Class;

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x46

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v15

    invoke-static {v0, v9, v9}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v16

    move/from16 v17, v4

    add-int v4, v16, v7

    int-to-char v4, v4

    invoke-static {v14, v15, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v12, v9

    const-class v4, Ljava/util/List;

    aput-object v4, v12, v8

    invoke-virtual {v10, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v10, Ljava/lang/reflect/Method;

    invoke-virtual {v10, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move/from16 v17, v4

    .line 179
    :goto_1
    iget-object v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1y;->getQuantity:Lcom/appsflyer/api/PurchaseClient;

    :try_start_1
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v11, -0x3531879d    # -6765617.5f

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    rsub-int/lit8 v10, v10, 0x46

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v12

    shr-int/lit8 v12, v12, 0x16

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    shr-int/lit8 v13, v13, 0x16

    sub-int v13, v7, v13

    int-to-char v13, v13

    invoke-static {v10, v12, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    new-array v12, v8, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    add-int/lit8 v13, v13, 0x46

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    add-int/2addr v15, v7

    int-to-char v7, v15

    invoke-static {v13, v14, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    aput-object v7, v12, v9

    invoke-virtual {v10, v5, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v10, Ljava/lang/reflect/Method;

    invoke-virtual {v10, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    .line 181
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v5, -0x37a2d316

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v3, v3, 0x46

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v7

    cmpl-float v7, v7, v17

    add-int/lit8 v7, v7, 0x46

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v0

    int-to-char v0, v0

    invoke-static {v3, v7, v0}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v3, "InAppPurchaseEvent"

    new-array v7, v8, [Ljava/lang/Class;

    const-class v8, Lcom/appsflyer/internal/components/network/http/ResponseNetwork;

    aput-object v8, v7, v9

    invoke-virtual {v0, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4, v0}, Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 183
    :cond_4
    invoke-interface {v2}, Lcom/appsflyer/internal/components/network/http/ResponseNetwork;->getBody()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v2, v6}, Lcom/appsflyer/api/PurchaseClient$InAppPurchaseValidationResultListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 177
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    throw v2

    :cond_6
    throw v0
.end method
