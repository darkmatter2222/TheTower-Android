.class Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;
.super Ljava/lang/Object;
.source "AppsFlyerAndroidWrapper.java"

# interfaces
.implements Lcom/appsflyer/AppsFlyerConversionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/unity/AppsFlyerAndroidWrapper;->getConversionListener(Ljava/lang/String;)Lcom/appsflyer/AppsFlyerConversionListener;
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

    .line 344
    iput-object p1, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;->val$objectName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppOpenAttribution(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;->val$objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 364
    iget-object p1, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;->val$objectName:Ljava/lang/String;

    const-string v1, "onAppOpenAttribution"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAttributionFailure(Ljava/lang/String;)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;->val$objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 371
    const-string v1, "onAppOpenAttributionFailure"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConversionDataFail(Ljava/lang/String;)V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;->val$objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 356
    const-string v1, "onConversionDataFail"

    invoke-static {v0, v1, p1}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onConversionDataSuccess(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;->val$objectName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 348
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 349
    iget-object p1, p0, Lcom/appsflyer/unity/AppsFlyerAndroidWrapper$3;->val$objectName:Ljava/lang/String;

    const-string v1, "onConversionDataSuccess"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
