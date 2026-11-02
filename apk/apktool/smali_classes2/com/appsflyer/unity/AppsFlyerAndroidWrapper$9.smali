.class Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$9;
.super Ljava/lang/Object;
.source "AppsFlyerAndroidWrapper.java"

# interfaces
.implements Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->setPurchaseRevenueValidationListeners(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResponse$0(Ljava/lang/String;Lcom/appsflyer/internal/models/SubscriptionValidationResult;)V
    .locals 14

    .line 577
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 578
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 580
    const-string v2, "productId"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->getSuccess()Z

    move-result p0

    const-string v3, "true"

    const-string v4, "false"

    if-eqz p0, :cond_0

    move-object p0, v3

    goto :goto_0

    :cond_0
    move-object p0, v4

    :goto_0
    const-string v5, "success"

    invoke-interface {v0, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->getSuccess()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 583
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->getSubscriptionPurchase()Lcom/appsflyer/internal/models/SubscriptionPurchase;

    move-result-object p0

    .line 584
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 585
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 586
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 587
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 588
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object v8

    .line 589
    invoke-virtual {v8}, Lcom/appsflyer/internal/models/CanceledStateContext;->getUserInitiatedCancellation()Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object v8

    .line 591
    invoke-virtual {v8}, Lcom/appsflyer/internal/models/CanceledStateContext;->getUserInitiatedCancellation()Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    move-result-object v8

    .line 592
    invoke-virtual {v8}, Lcom/appsflyer/internal/models/UserInitiatedCancellation;->getCancelSurveyResult()Lcom/appsflyer/internal/models/CancelSurveyResult;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object v8

    .line 595
    invoke-virtual {v8}, Lcom/appsflyer/internal/models/CanceledStateContext;->getUserInitiatedCancellation()Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    move-result-object v8

    .line 596
    invoke-virtual {v8}, Lcom/appsflyer/internal/models/UserInitiatedCancellation;->getCancelSurveyResult()Lcom/appsflyer/internal/models/CancelSurveyResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/internal/models/CancelSurveyResult;->getReason()Ljava/lang/String;

    move-result-object v8

    .line 593
    const-string v9, "reason"

    invoke-interface {p1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object v8

    .line 599
    invoke-virtual {v8}, Lcom/appsflyer/internal/models/CanceledStateContext;->getUserInitiatedCancellation()Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    move-result-object v8

    .line 600
    invoke-virtual {v8}, Lcom/appsflyer/internal/models/UserInitiatedCancellation;->getCancelSurveyResult()Lcom/appsflyer/internal/models/CancelSurveyResult;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appsflyer/internal/models/CancelSurveyResult;->getReasonUserInput()Ljava/lang/String;

    move-result-object v8

    .line 597
    const-string v9, "reasonUserInput"

    invoke-interface {p1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v8, "cancelSurveyResult"

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object p1

    .line 606
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/CanceledStateContext;->getUserInitiatedCancellation()Lcom/appsflyer/internal/models/UserInitiatedCancellation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appsflyer/internal/models/UserInitiatedCancellation;->getCancelTime()Ljava/lang/String;

    move-result-object p1

    .line 604
    const-string v8, "cancelTime"

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_2
    const-string p1, "developerInitiatedCancellation"

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string p1, "replacementCancellation"

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string p1, "systemInitiatedCancellation"

    invoke-interface {v5, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string p1, "userInitiatedCancellation"

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    :cond_3
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getExternalAccountIdentifiers()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 618
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 620
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getExternalAccountIdentifiers()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    move-result-object v5

    .line 621
    invoke-virtual {v5}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;->getExternalAccountId()Ljava/lang/String;

    move-result-object v5

    .line 619
    const-string v7, "externalAccountId"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getExternalAccountIdentifiers()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    move-result-object v5

    .line 624
    invoke-virtual {v5}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;->getObfuscatedExternalAccountId()Ljava/lang/String;

    move-result-object v5

    .line 622
    const-string v7, "obfuscatedExternalAccountId"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getExternalAccountIdentifiers()Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;

    move-result-object v5

    .line 627
    invoke-virtual {v5}, Lcom/appsflyer/internal/models/ExternalAccountIdentifiers;->getObfuscatedExternalProfileId()Ljava/lang/String;

    move-result-object v5

    .line 625
    const-string v7, "obfuscatedExternalProfileId"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v5, "externalAccountIdentifiers"

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    :cond_4
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getPausedStateContext()Lcom/appsflyer/internal/models/PausedStateContext;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 632
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 634
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getPausedStateContext()Lcom/appsflyer/internal/models/PausedStateContext;

    move-result-object v5

    .line 635
    invoke-virtual {v5}, Lcom/appsflyer/internal/models/PausedStateContext;->getAutoResumeTime()Ljava/lang/String;

    move-result-object v5

    .line 633
    const-string v7, "autoResumeTime"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v5, "pausedStateContext"

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    :cond_5
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getSubscribeWithGoogleInfo()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 641
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 643
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getSubscribeWithGoogleInfo()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    .line 642
    const-string v7, "emailAddress"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getSubscribeWithGoogleInfo()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;->getFamilyName()Ljava/lang/String;

    move-result-object v5

    .line 644
    const-string v7, "familyName"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getSubscribeWithGoogleInfo()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;->getGivenName()Ljava/lang/String;

    move-result-object v5

    .line 646
    const-string v7, "givenName"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getSubscribeWithGoogleInfo()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;->getProfileId()Ljava/lang/String;

    move-result-object v5

    .line 648
    const-string v7, "profileId"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getSubscribeWithGoogleInfo()Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appsflyer/internal/models/SubscribeWithGoogleInfo;->getProfileName()Ljava/lang/String;

    move-result-object v5

    .line 650
    const-string v7, "profileName"

    invoke-interface {p1, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    const-string v5, "subscribeWithGoogleInfo"

    invoke-interface {v1, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :cond_6
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 656
    new-array v5, p1, [Ljava/util/Map;

    const/4 v7, 0x0

    :goto_1
    if-ge v7, p1, :cond_f

    .line 658
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 660
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getExpiryTime()Ljava/lang/String;

    move-result-object v9

    .line 659
    const-string v10, "expiryTime"

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getProductId()Ljava/lang/String;

    move-result-object v9

    .line 661
    invoke-interface {v8, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 665
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 666
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 667
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getAutoRenewEnabled()Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 669
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v10

    .line 670
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getAutoRenewEnabled()Ljava/lang/Boolean;

    move-result-object v10

    .line 669
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v3

    goto :goto_2

    :cond_7
    move-object v10, v4

    .line 668
    :goto_2
    const-string v11, "autoRenewEnabled"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    :cond_8
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v10

    .line 673
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 674
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 676
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 677
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v11

    .line 678
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->getExpectedNewPriceChargeTime()Ljava/lang/String;

    move-result-object v11

    .line 675
    const-string v12, "expectedNewPriceChargeTime"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 681
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v11

    .line 682
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->getPriceChangeMode()Ljava/lang/String;

    move-result-object v11

    .line 679
    const-string v12, "priceChangeMode"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 685
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v11

    .line 686
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->getPriceChangeState()Ljava/lang/String;

    move-result-object v11

    .line 683
    const-string v12, "priceChangeState"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v11, "priceChangeDetails"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 689
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v11

    invoke-virtual {v11}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v11

    .line 690
    invoke-virtual {v11}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->getNewPrice()Lcom/appsflyer/internal/models/Money;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 691
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 693
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 694
    invoke-virtual {v12}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v12

    .line 695
    invoke-virtual {v12}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v12

    invoke-virtual {v12}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->getNewPrice()Lcom/appsflyer/internal/models/Money;

    move-result-object v12

    .line 696
    invoke-virtual {v12}, Lcom/appsflyer/internal/models/Money;->getCurrencyCode()Ljava/lang/String;

    move-result-object v12

    .line 692
    const-string v13, "currencyCode"

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 699
    invoke-virtual {v12}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v12

    .line 700
    invoke-virtual {v12}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v12

    invoke-virtual {v12}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->getNewPrice()Lcom/appsflyer/internal/models/Money;

    move-result-object v12

    invoke-virtual {v12}, Lcom/appsflyer/internal/models/Money;->getNanos()J

    move-result-wide v12

    .line 698
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 697
    const-string v13, "nanos"

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 703
    invoke-virtual {v12}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getAutoRenewingPlan()Lcom/appsflyer/internal/models/AutoRenewingPlan;

    move-result-object v12

    .line 704
    invoke-virtual {v12}, Lcom/appsflyer/internal/models/AutoRenewingPlan;->getPriceChangeDetails()Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;

    move-result-object v12

    invoke-virtual {v12}, Lcom/appsflyer/internal/models/SubscriptionItemPriceChangeDetails;->getNewPrice()Lcom/appsflyer/internal/models/Money;

    move-result-object v12

    invoke-virtual {v12}, Lcom/appsflyer/internal/models/Money;->getUnits()J

    move-result-wide v12

    .line 702
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 701
    const-string v13, "units"

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    const-string v12, "newPrice"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    :cond_9
    const-string v10, "autoRenewingPlan"

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    :cond_a
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getOfferDetails()Lcom/appsflyer/internal/models/OfferDetails;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 711
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 713
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 714
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getOfferDetails()Lcom/appsflyer/internal/models/OfferDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/OfferDetails;->getBasePlanId()Ljava/lang/String;

    move-result-object v10

    .line 712
    const-string v11, "basePlanId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 716
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getOfferDetails()Lcom/appsflyer/internal/models/OfferDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/OfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 718
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 719
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getOfferDetails()Lcom/appsflyer/internal/models/OfferDetails;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/OfferDetails;->getOfferId()Ljava/lang/String;

    move-result-object v10

    .line 717
    const-string v11, "offerId"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    :cond_b
    const-string v10, "offerDetails"

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    :cond_c
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getDeferredItemReplacement()Lcom/appsflyer/internal/models/DeferredItemReplacement;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 725
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 727
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 728
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getDeferredItemReplacement()Lcom/appsflyer/internal/models/DeferredItemReplacement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/DeferredItemReplacement;->getProductId()Ljava/lang/String;

    move-result-object v10

    .line 726
    invoke-interface {v9, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v10, "deferredItemReplacement"

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    :cond_d
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    invoke-virtual {v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getPrepaidPlan()Lcom/appsflyer/internal/models/PrepaidPlan;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 734
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 735
    invoke-virtual {v9}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getPrepaidPlan()Lcom/appsflyer/internal/models/PrepaidPlan;

    move-result-object v9

    invoke-virtual {v9}, Lcom/appsflyer/internal/models/PrepaidPlan;->getAllowExtendAfterTime()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 736
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 738
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLineItems()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;

    .line 739
    invoke-virtual {v10}, Lcom/appsflyer/internal/models/SubscriptionPurchaseLineItem;->getPrepaidPlan()Lcom/appsflyer/internal/models/PrepaidPlan;

    move-result-object v10

    invoke-virtual {v10}, Lcom/appsflyer/internal/models/PrepaidPlan;->getAllowExtendAfterTime()Ljava/lang/String;

    move-result-object v10

    .line 737
    const-string v11, "allowExtendAfterTime"

    invoke-interface {v9, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v10, "prepaidPlan"

    invoke-interface {v8, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    :cond_e
    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 744
    :cond_f
    const-string p1, "lineItems"

    invoke-interface {v1, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string p1, "acknowledgementState"

    .line 746
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getAcknowledgementState()Ljava/lang/String;

    move-result-object v2

    .line 745
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string p1, "canceledStateContext"

    .line 748
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getCanceledStateContext()Lcom/appsflyer/internal/models/CanceledStateContext;

    move-result-object v2

    .line 747
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string p1, "kind"

    .line 750
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getKind()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    const-string p1, "latestOrderId"

    .line 752
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLatestOrderId()Ljava/lang/String;

    move-result-object v2

    .line 751
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string p1, "linkedPurchaseToken"

    .line 754
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getLinkedPurchaseToken()Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string p1, "regionCode"

    .line 756
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getRegionCode()Ljava/lang/String;

    move-result-object v2

    .line 755
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string p1, "subscriptionState"

    .line 758
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getSubscriptionState()Ljava/lang/String;

    move-result-object v2

    .line 757
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    const-string p1, "testPurchase"

    invoke-interface {v1, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    const-string p1, "startTime"

    .line 761
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/SubscriptionPurchase;->getStartTime()Ljava/lang/String;

    move-result-object p0

    .line 760
    invoke-interface {v1, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string p0, "subscriptionPurchase"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 764
    :cond_10
    invoke-virtual {p1}, Lcom/appsflyer/internal/models/SubscriptionValidationResult;->getFailureData()Lcom/appsflyer/internal/models/ValidationFailureData;

    move-result-object p0

    .line 765
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 766
    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ValidationFailureData;->getStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const-string v1, "description"

    invoke-virtual {p0}, Lcom/appsflyer/internal/models/ValidationFailureData;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string p0, "failureData"

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    :goto_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 771
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "didReceivePurchaseRevenueValidationInfo"

    .line 772
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 771
    invoke-static {p1, v0, p0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 779
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 780
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object p2

    const-string v0, "didReceivePurchaseRevenueError"

    invoke-static {p2, v0, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 568
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$9;->onResponse(Ljava/util/Map;)V

    return-void
.end method

.method public onResponse(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/appsflyer/internal/models/SubscriptionValidationResult;",
            ">;)V"
        }
    .end annotation

    .line 572
    invoke-static {}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance v0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$9$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$9$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :cond_1
    :goto_0
    return-void
.end method
