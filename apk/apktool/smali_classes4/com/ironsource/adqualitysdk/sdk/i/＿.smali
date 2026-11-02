.class public final Lcom/ironsource/adqualitysdk/sdk/i/＿;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﭸ:Ljava/lang/String;

.field public static final ﮉ:Ljava/lang/String;

.field public static final ﮌ:Ljava/lang/String;


# instance fields
.field public final ﮐ:Lorg/json/JSONObject;

.field public ﱟ:Lorg/json/JSONObject;

.field public final ﱡ:Ljava/lang/String;

.field public final ﺙ:Ljava/lang/String;

.field public final ﻏ:Ljava/lang/String;

.field public final ﻐ:Ljava/lang/String;

.field public final ﻛ:Ljava/lang/String;

.field public final ｋ:Ljava/lang/String;

.field public final ﾇ:Ljava/util/ArrayList;

.field public final ﾒ:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "3yGIOg==\n"

    const-string v1, "u1XsTuf0prU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﮌ:Ljava/lang/String;

    const-string v0, "qSEQsQ==\n"

    const-string v1, "zVV20iREwIY=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﮉ:Ljava/lang/String;

    const-string v0, "aktx\n"

    const-string v1, "Cz8d31WCD9I=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﭸ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "v8JgE/XFrCmzxGkT486qLbXIehM=\n"

    const-string v1, "3K0NPZSryFs=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CtG4SgO5j9Ic2r5TBaTF\n"

    const-string v2, "a7/cOGzQ6/w=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, ""

    const/4 v5, 0x2

    aput-object v1, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﾒ:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﾇ:Ljava/util/ArrayList;

    .line 10
    const-string v1, "lU09SOBhVXiUS34U7GFccoRLPgGnRlZamUA5J+1OW2OfVDkS8A==\n"

    const-string v3, "9iJQZokPOBc=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "57ucFGiOdgTmvd9bZZM1GeG6lV9ziXUMqp2fd26CcirglZJOaJZyH/0=\n"

    const-string v6, "hNTxOgHgG2s=\n"

    invoke-static {v3, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "5AMqZ8M/CKTqCSp+3y4et/4YbWPYOxfrxAJwcsMpD6z5BWV78DkPrPsFcG4=\n"

    const-string v7, "jWwEF7Fae8U=\n"

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "V5I2eLOjJMxZmDZhr7Iy302JcXyopzuDS5Q2Qa+yMt9NiXF8qKc77F2JcX6osi4=\n"

    const-string v8, "Pv0YCMHGV60=\n"

    invoke-static {v7, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    aput-object v1, v8, v4

    aput-object v3, v8, v0

    aput-object v6, v8, v5

    aput-object v7, v8, v2

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    const-string v1, "qI2s\n"

    const-string v2, "3/vccfvRkak=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ｋ:Ljava/lang/String;

    .line 18
    const-string v1, "WsvoRw==\n"

    const-string v2, "Lb2bI+Po10E=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻛ:Ljava/lang/String;

    .line 19
    const-string v1, "WVX5\n"

    const-string v2, "MDaJPUeAv2E=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻐ:Ljava/lang/String;

    .line 20
    const-string v1, "a4uPLg==\n"

    const-string v2, "Auj8SseRjaI=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﻏ:Ljava/lang/String;

    .line 21
    const-string v1, "ar6z\n"

    const-string v2, "DMrLzUCh5ts=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﺙ:Ljava/lang/String;

    .line 22
    const-string v1, "04u7\n"

    const-string v2, "tv/D1yziAhU=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱡ:Ljava/lang/String;

    .line 23
    const-string v1, "kWLHiA==\n"

    const-string v2, "+AO3/POB98k=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﱟ:Lorg/json/JSONObject;

    .line 31
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﮐ:Lorg/json/JSONObject;

    .line 35
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/＿;->ﮐ:Lorg/json/JSONObject;

    const-string v3, "s1c=\n"

    const-string v4, "wTvnUZfKy8o=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method
