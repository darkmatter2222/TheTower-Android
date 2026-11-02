.class public final Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1r$AFPurchaseConnectorA1x;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618;->getOneTimePurchaseOfferDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private synthetic getPackageName:Lcom/appsflyer/api/PurchaseClient;


# direct methods
.method public constructor <init>(Lcom/appsflyer/api/PurchaseClient;)V
    .locals 0

    iput-object p1, p0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOneTimePurchaseOfferDetails(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appsflyer/api/SubscriptionPurchaseEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    :try_start_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v5, -0x2d6c259b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "toJsonMap"

    const/4 v7, 0x1

    const v8, 0xa3df

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v10}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x46

    invoke-static {v9, v9}, Landroid/graphics/PointF;->length(FF)F

    move-result v11

    cmpl-float v11, v11, v9

    invoke-static {v10}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    add-int/2addr v12, v8

    int-to-char v12, v12

    invoke-static {v4, v11, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    new-array v11, v7, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    add-int/lit8 v12, v12, 0x46

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    sub-int v14, v8, v14

    int-to-char v14, v14

    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Class;

    aput-object v12, v11, v10

    invoke-virtual {v4, v6, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v4, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "subs"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    const-string v0, "Not configured for auto Subscription logging"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_1
    iget-object v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    const/4 v4, 0x2

    :try_start_2
    new-array v11, v4, [Ljava/lang/Object;

    aput-object v0, v11, v7

    aput-object v3, v11, v10

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v12, -0x32d17ba0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    move/from16 v17, v4

    goto :goto_1

    :cond_2
    invoke-static {v10, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x46

    invoke-static {v10, v9, v9}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v13

    cmpl-float v13, v13, v9

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    sub-int v14, v8, v14

    int-to-char v14, v14

    invoke-static {v3, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v13, v4, [Ljava/lang/Class;

    const/16 v14, 0x30

    invoke-static {v2, v14, v10, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v14

    rsub-int/lit8 v14, v14, 0x45

    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v16

    move/from16 v17, v4

    sub-int v4, v8, v16

    int-to-char v4, v4

    invoke-static {v14, v15, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v13, v10

    const-class v4, Ljava/util/List;

    aput-object v4, v13, v7

    invoke-virtual {v3, v6, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    iget-object v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    .line 81
    :try_start_3
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    sget-object v11, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v12, -0x8452273

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_3

    move/from16 v18, v7

    goto :goto_2

    :cond_3
    invoke-static {v10}, Landroid/graphics/Color;->green(I)I

    move-result v11

    rsub-int/lit8 v11, v11, 0x46

    invoke-static {v2, v10, v10}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v13

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    shr-int/lit8 v14, v14, 0x16

    sub-int v14, v8, v14

    int-to-char v14, v14

    invoke-static {v11, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    const-string v13, "getQuantity"

    new-array v14, v7, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    rsub-int/lit8 v15, v15, 0x46

    invoke-static {v9, v9}, Landroid/graphics/PointF;->length(FF)F

    move-result v16

    cmpl-float v9, v16, v9

    invoke-static {v10, v10, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v16

    move/from16 v18, v7

    add-int v7, v16, v8

    int-to-char v7, v7

    invoke-static {v15, v9, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    aput-object v7, v14, v10

    invoke-virtual {v11, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sget-object v7, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v11, Ljava/lang/reflect/Method;

    invoke-virtual {v11, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x5

    .line 80
    new-array v9, v7, [Ljava/lang/Object;

    const/4 v11, 0x4

    aput-object v3, v9, v11

    const/4 v3, 0x3

    aput-object v0, v9, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v17

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v18

    aput-object v4, v9, v10

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v4, -0x208b0c04

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v10, v10}, Landroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    add-int/lit8 v0, v0, 0x47

    invoke-static {v2, v10, v10}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v6

    invoke-static {v10, v10, v10}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    sub-int v12, v8, v12

    int-to-char v12, v12

    invoke-static {v0, v6, v12}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v6, "getOneTimePurchaseOfferDetails"

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v2}, Landroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x47

    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v12

    shr-int/lit8 v12, v12, 0x8

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    sub-int/2addr v8, v13

    int-to-char v8, v8

    invoke-static {v2, v12, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    aput-object v2, v7, v10

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v7, v18

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v7, v17

    const-class v2, Ljava/util/List;

    aput-object v2, v7, v3

    const-class v2, Ljava/util/Map;

    aput-object v2, v7, v11

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    throw v2

    :cond_5
    throw v0
.end method

.method public final getQuantity(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appsflyer/api/SubscriptionPurchaseEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    :try_start_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v5, -0x2d6c259b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "toJsonMap"

    const/16 v7, 0x30

    const v8, 0xa3df

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x46

    invoke-static {v12, v12, v12}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v13

    invoke-static {v9, v10}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v14

    add-int/2addr v14, v8

    int-to-char v14, v14

    invoke-static {v4, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    new-array v13, v11, [Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v14

    cmp-long v14, v14, v9

    rsub-int/lit8 v14, v14, 0x47

    invoke-static {v12, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    invoke-static {v2, v7, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v16

    const v17, 0xa3e0

    move/from16 v18, v5

    add-int v5, v16, v17

    int-to-char v5, v5

    invoke-static {v14, v15, v5}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v13, v12

    invoke-virtual {v4, v6, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v4, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "subs"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    const-string v0, "Not configured for auto Subscription logging"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1
    iget-object v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    const/4 v4, 0x2

    :try_start_2
    new-array v13, v4, [Ljava/lang/Object;

    aput-object v0, v13, v11

    aput-object v3, v13, v12

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v14, -0x32d17ba0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v15, 0x0

    if-eqz v3, :cond_2

    move/from16 v20, v4

    move/from16 v16, v8

    move-wide/from16 v18, v9

    goto :goto_1

    :cond_2
    invoke-static {v12, v15, v15}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v3

    cmpl-float v3, v3, v15

    add-int/lit8 v3, v3, 0x46

    move/from16 v16, v8

    invoke-static {v12, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    invoke-static {v12, v12}, Landroid/view/View;->getDefaultSize(II)I

    move-result v17

    move-wide/from16 v18, v9

    add-int v9, v17, v16

    int-to-char v9, v9

    invoke-static {v3, v8, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    new-array v8, v4, [Ljava/lang/Class;

    invoke-static {v2, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v9

    rsub-int/lit8 v9, v9, 0x46

    invoke-static {v12, v12}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v10

    invoke-static {v12, v12}, Landroid/view/View;->getDefaultSize(II)I

    move-result v17

    move/from16 v20, v4

    add-int v4, v17, v16

    int-to-char v4, v4

    invoke-static {v9, v10, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v8, v12

    const-class v4, Ljava/util/List;

    aput-object v4, v8, v11

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    iget-object v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    .line 95
    :try_start_3
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    sget-object v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v9, -0x8452273

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v12, v12}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x46

    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v13

    cmp-long v10, v13, v18

    rsub-int/lit8 v10, v10, 0x1

    invoke-static {v12, v12}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v13

    add-int v13, v13, v16

    int-to-char v13, v13

    invoke-static {v8, v10, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    const-string v10, "getQuantity"

    new-array v13, v11, [Ljava/lang/Class;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v14

    cmpl-float v14, v14, v15

    rsub-int/lit8 v14, v14, 0x47

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    cmp-long v15, v21, v18

    rsub-int/lit8 v15, v15, 0x1

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v21, v9

    sub-int v9, v16, v17

    int-to-char v9, v9

    invoke-static {v14, v15, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v13, v12

    invoke-virtual {v8, v10, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v9, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v8, 0x5

    .line 94
    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x4

    aput-object v3, v9, v10

    const/4 v3, 0x3

    aput-object v0, v9, v3

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v20

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v9, v11

    aput-object v4, v9, v12

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v4, -0x208b0c04

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static/range {v18 .. v19}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x46

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v13

    shr-int/lit8 v13, v13, 0x10

    sub-int v13, v16, v13

    int-to-char v13, v13

    invoke-static {v0, v6, v13}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const-string v6, "getOneTimePurchaseOfferDetails"

    new-array v8, v8, [Ljava/lang/Class;

    invoke-static {v2, v7, v12}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v13

    add-int/lit8 v13, v13, 0x47

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    invoke-static {v2, v7}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    const v7, 0xa3de

    sub-int/2addr v7, v2

    int-to-char v2, v7

    invoke-static {v13, v14, v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    aput-object v2, v8, v12

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v8, v11

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v8, v20

    const-class v2, Ljava/util/List;

    aput-object v2, v8, v3

    const-class v2, Ljava/util/Map;

    aput-object v2, v8, v10

    invoke-virtual {v0, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    throw v2

    :cond_5
    throw v0
.end method

.method public final toJsonMap(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appsflyer/api/InAppPurchaseEvent;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, ""

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    :try_start_0
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v5, -0x2d6c259b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/16 v6, 0x30

    const-wide/16 v7, 0x0

    const v9, 0xa3df

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    move-wide/from16 v18, v7

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v4, v4, 0x46

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    cmp-long v13, v13, v7

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v14

    cmpl-float v14, v14, v11

    add-int/2addr v14, v9

    int-to-char v14, v14

    invoke-static {v4, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-string v13, "toJsonMap"

    new-array v14, v10, [Ljava/lang/Class;

    invoke-static {v2, v6}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v15

    add-int/lit8 v15, v15, 0x47

    invoke-static {v12, v11, v11}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v16

    move/from16 v17, v5

    cmpl-float v5, v16, v11

    invoke-static {v12}, Landroid/graphics/Color;->blue(I)I

    move-result v16

    move-wide/from16 v18, v7

    sub-int v7, v9, v16

    int-to-char v7, v7

    invoke-static {v15, v5, v7}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    aput-object v5, v14, v12

    invoke-virtual {v4, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v5, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    check-cast v4, Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "inapp"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 104
    const-string v0, "Not configured for auto In-App purchase logging."

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afDebugLog(Ljava/lang/String;)V

    return-void

    .line 107
    :cond_1
    iget-object v3, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    const/4 v4, 0x2

    :try_start_1
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v10

    aput-object v3, v7, v12

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v8, 0x72349700

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    move/from16 v16, v4

    goto :goto_1

    :cond_2
    invoke-static {v12}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v13

    cmp-long v3, v13, v18

    add-int/lit8 v3, v3, 0x46

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v14

    shr-int/lit8 v14, v14, 0x16

    sub-int v14, v9, v14

    int-to-char v14, v14

    invoke-static {v3, v13, v14}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    const-string v13, "InAppPurchaseEvent"

    new-array v14, v4, [Ljava/lang/Class;

    invoke-static {v2, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v15

    rsub-int/lit8 v15, v15, 0x46

    move/from16 v16, v4

    invoke-static {v2, v2, v12}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v17

    move/from16 v20, v8

    sub-int v8, v9, v17

    int-to-char v8, v8

    invoke-static {v15, v4, v8}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v14, v12

    const-class v4, Ljava/util/List;

    aput-object v4, v14, v10

    invoke-virtual {v3, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sget-object v4, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    check-cast v3, Ljava/lang/reflect/Method;

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    iget-object v4, v1, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1xL17618$AFPurchaseConnectorA1w;->getPackageName:Lcom/appsflyer/api/PurchaseClient;

    :try_start_2
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v13, -0x8452273

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v14, "getQuantity"

    if-eqz v8, :cond_3

    move/from16 v17, v9

    goto :goto_2

    :cond_3
    :try_start_3
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, 0x46

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    cmp-long v15, v20, v18

    rsub-int/lit8 v15, v15, 0x1

    invoke-static {v2, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    const v6, 0xa3e0

    add-int/2addr v2, v6

    int-to-char v2, v2

    invoke-static {v8, v15, v2}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    new-array v8, v10, [Ljava/lang/Class;

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v15

    cmpl-float v15, v15, v11

    add-int/lit8 v15, v15, 0x45

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v17

    cmpl-float v17, v17, v11

    move/from16 v20, v6

    rsub-int/lit8 v6, v17, 0x1

    move/from16 v17, v9

    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v9

    int-to-byte v9, v9

    add-int v9, v9, v20

    int-to-char v9, v9

    invoke-static {v15, v6, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v8, v12

    invoke-virtual {v2, v14, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sget-object v2, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    check-cast v8, Ljava/lang/reflect/Method;

    invoke-virtual {v8, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x3

    aput-object v3, v7, v8

    aput-object v0, v7, v16

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v10

    aput-object v4, v7, v12

    sget-object v0, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    const v2, -0x626ec3df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v12}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    move-result-wide v3

    const-wide/16 v20, 0x0

    cmpl-double v0, v3, v20

    rsub-int/lit8 v0, v0, 0x46

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    cmpl-float v3, v3, v11

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v4

    cmpl-float v4, v4, v11

    const v9, 0xa3de

    add-int/2addr v4, v9

    int-to-char v4, v4

    invoke-static {v0, v3, v4}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v3, v6, [Ljava/lang/Class;

    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v20

    cmp-long v4, v20, v18

    rsub-int/lit8 v4, v4, 0x47

    invoke-static {v12}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v9

    shr-int/lit8 v9, v9, 0x18

    sub-int v9, v17, v9

    int-to-char v9, v9

    invoke-static {v4, v6, v9}, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->getQuantity(IIC)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    aput-object v4, v3, v12

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v10

    const-class v4, Ljava/util/List;

    aput-object v4, v3, v16

    const-class v4, Ljava/util/Map;

    aput-object v4, v3, v8

    invoke-virtual {v0, v14, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v3, Lcom/appsflyer/internal/connector/purcahse/AFPurchaseConnectorA1w;->PurchaseClientCompanion:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_5

    throw v2

    :cond_5
    throw v0
.end method
