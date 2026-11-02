.class Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;
.super Ljava/lang/Object;
.source "AppsFlyerAndroidWrapper.java"

# interfaces
.implements Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->initInAppPurchaseValidatorV2Listener(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerInAppPurchaseValidationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$objectName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 403
    iput-object p1, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;->val$objectName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInAppPurchaseValidationError(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 414
    iget-object v0, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;->val$objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 415
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 416
    iget-object p1, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;->val$objectName:Ljava/lang/String;

    const-string v1, "onValidateAndLogFailure"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInAppPurchaseValidationFinished(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;->val$objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 408
    iget-object p1, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$5;->val$objectName:Ljava/lang/String;

    const-string v1, "onValidateAndLogComplete"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
