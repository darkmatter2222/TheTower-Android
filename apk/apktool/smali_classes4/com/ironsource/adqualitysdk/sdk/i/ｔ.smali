.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｔ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

.field public final synthetic ｋ:Lorg/json/JSONObject;

.field public final synthetic ﾇ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｔ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｔ;->ﾇ:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｔ;->ｋ:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｔ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｔ;->ﾇ:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｔ;->ｋ:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ﻛ:Ljava/util/HashSet;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/ᒶ;

    .line 5
    invoke-interface {v4, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒶ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    .line 6
    invoke-static {v2, v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 9
    :try_start_0
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/į;->ﾒ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/į;->ᖸ:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    :catch_0
    iget-object v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ｆ;

    invoke-direct {v5, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｆ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻥ;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/ironsource/adqualitysdk/sdk/i/ｆ;)V

    return-void
.end method
