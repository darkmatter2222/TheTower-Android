.class public Lcom/appsflyer/unity/PurchaseRevenueBridge;
.super Ljava/lang/Object;
.source "PurchaseRevenueBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsFlyerUnity"

.field private static unityBridge:Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configurePurchaseClient(Lcom/appsflyer/api/PurchaseClient$Builder;)Lcom/appsflyer/api/PurchaseClient$Builder;
    .locals 1

    .line 37
    new-instance v0, Lcom/appsflyer/unity/PurchaseRevenueBridge$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/appsflyer/unity/PurchaseRevenueBridge$$ExternalSyntheticLambda0;-><init>()V

    .line 38
    invoke-virtual {p0, v0}, Lcom/appsflyer/api/PurchaseClient$Builder;->setInAppPurchaseEventDataSource(Lcom/appsflyer/api/PurchaseClient$InAppPurchaseEventDataSource;)Lcom/appsflyer/api/PurchaseClient$Builder;

    move-result-object p0

    new-instance v0, Lcom/appsflyer/unity/PurchaseRevenueBridge$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/appsflyer/unity/PurchaseRevenueBridge$$ExternalSyntheticLambda1;-><init>()V

    .line 57
    invoke-virtual {p0, v0}, Lcom/appsflyer/api/PurchaseClient$Builder;->setSubscriptionPurchaseEventDataSource(Lcom/appsflyer/api/PurchaseClient$SubscriptionPurchaseEventDataSource;)Lcom/appsflyer/api/PurchaseClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$configurePurchaseClient$0(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    .line 40
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "events"

    invoke-static {v1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 41
    sget-object v0, Lcom/appsflyer/unity/PurchaseRevenueBridge;->unityBridge:Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;->getAdditionalParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 45
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 46
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 53
    const-string v0, "AppsFlyerUnity"

    const-string v1, "Failed to parse additional params from Unity"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$configurePurchaseClient$1(Ljava/util/List;)Ljava/util/Map;
    .locals 4

    .line 59
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "events"

    invoke-static {v1, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    .line 60
    sget-object v0, Lcom/appsflyer/unity/PurchaseRevenueBridge;->unityBridge:Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-interface {v0, v1, p0}, Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;->getAdditionalParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 64
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 72
    const-string v0, "AppsFlyerUnity"

    const-string v1, "Failed to parse additional params from Unity"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static setUnityBridge(Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;)V
    .locals 0

    .line 33
    sput-object p0, Lcom/appsflyer/unity/PurchaseRevenueBridge;->unityBridge:Lcom/appsflyer/unity/PurchaseRevenueBridge$UnityPurchaseRevenueBridge;

    return-void
.end method
