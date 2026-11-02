.class public final Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/PurchaseHandler$PurchaseValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618;->getOneTimePurchaseOfferDetails(ZZLjava/util/List;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private synthetic InAppPurchaseEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/api/SubscriptionPurchaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private synthetic getPackageName:Lcom/appsflyer/api/PurchaseClient;


# direct methods
.method public constructor <init>(Lcom/appsflyer/api/PurchaseClient;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/api/PurchaseClient;",
            "Ljava/util/List<",
            "Lcom/appsflyer/api/SubscriptionPurchaseEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    iput-object p2, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z;->InAppPurchaseEvent:Ljava/util/List;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 10

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    :try_start_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v2, 0x2f62300c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x18

    rsub-int/lit8 v1, v1, 0x46

    const/4 v3, 0x0

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    const v6, 0xa3df

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-static {v1, v4, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v4, "getOneTimePurchaseOfferDetails"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    shr-int/lit8 v7, v7, 0x10

    rsub-int/lit8 v7, v7, 0x46

    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    sub-int/2addr v6, v9

    int-to-char v6, v6

    invoke-static {v7, v8, v6}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v1, Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 157
    const-string v1, "[PurchaseConnector]: Communication exception"

    .line 156
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
    .locals 19
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

    .line 142
    invoke-interface {v2}, Lcom/appsflyer/internal/components/network/http/ResponseNetwork;->isSuccessful()Z

    move-result v3

    const v4, 0xa3df

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_1

    .line 144
    iget-object v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    iget-object v9, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z;->InAppPurchaseEvent:Ljava/util/List;

    const/4 v10, 0x2

    :try_start_0
    new-array v11, v10, [Ljava/lang/Object;

    aput-object v9, v11, v6

    aput-object v8, v11, v7

    sget-object v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v9, 0x77e8dede

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v7}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x46

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v13

    add-int/2addr v13, v4

    int-to-char v13, v13

    invoke-static {v8, v12, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v12, "getPackageName"

    new-array v10, v10, [Ljava/lang/Class;

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v13

    rsub-int/lit8 v13, v13, 0x46

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    shr-int/lit8 v14, v14, 0x16

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    add-int/2addr v15, v4

    int-to-char v15, v15

    invoke-static {v13, v14, v15}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    aput-object v13, v10, v7

    const-class v13, Ljava/util/List;

    aput-object v13, v10, v6

    invoke-virtual {v8, v12, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v10, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v10, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 146
    :cond_1
    :goto_1
    iget-object v8, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1z;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    :try_start_1
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v10, 0x2f62300c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-wide/16 v11, 0x0

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v0}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x45

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v13

    rsub-int/lit8 v13, v13, -0x1

    const/16 v14, 0x30

    invoke-static {v0, v14, v7, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v15

    const v16, 0xa3de

    sub-int v15, v16, v15

    int-to-char v15, v15

    invoke-static {v9, v13, v15}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    const-string v13, "getOneTimePurchaseOfferDetails"

    new-array v15, v6, [Ljava/lang/Class;

    invoke-static {v0, v14}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v14

    add-int/lit8 v14, v14, 0x47

    move/from16 v16, v4

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v17

    shr-int/lit8 v17, v17, 0x8

    move/from16 v18, v10

    add-int v10, v17, v16

    int-to-char v10, v10

    invoke-static {v14, v4, v10}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v15, v7

    invoke-virtual {v9, v13, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v9, Ljava/lang/reflect/Method;

    invoke-virtual {v9, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    .line 148
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v3, 0x2ec716f4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v7, v7, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const v8, 0x1000046

    add-int/2addr v2, v8

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    rsub-int/lit8 v8, v8, 0x46

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v9

    int-to-char v9, v9

    invoke-static {v2, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-string v8, "getQuantity"

    new-array v6, v6, [Ljava/lang/Class;

    const-class v9, Lcom/appsflyer/internal/components/network/http/ResponseNetwork;

    aput-object v9, v6, v7

    invoke-virtual {v2, v8, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v6, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v2, Ljava/lang/reflect/Method;

    invoke-virtual {v2, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4, v0}, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;->onResponse(Ljava/lang/Object;)V

    return-void

    .line 150
    :cond_4
    invoke-interface {v2}, Lcom/appsflyer/internal/components/network/http/ResponseNetwork;->getBody()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-interface {v4, v2, v5}, Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 144
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    throw v2

    :cond_6
    throw v0
.end method
