.class public final Lcom/ironsource/adqualitysdk/sdk/i/ە;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

.field public final synthetic ﾇ:Z


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ڗ;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iput-boolean p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ﾇ:Z

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 3
    const-string v0, "YPlwvdY1tA==\n"

    const-string v2, "FIkv1LhcwHs=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-boolean v3, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ｋ:Z

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻛ:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "aOScIA==\n"

    const-string v3, "BpHwTC2VeF8=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 4
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 5
    new-instance v4, Lcom/ironsource/adqualitysdk/sdk/i/ﻴ;

    iget-object v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 6
    iget-object v5, v5, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﱟ:Landroid/content/Context;

    .line 7
    invoke-direct {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ﻴ;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 8
    iget-object v5, v4, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﱟ:Landroid/content/Context;

    .line 9
    iget-boolean v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ﾇ:Z

    invoke-static {v4}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ϛ;)Lcom/ironsource/adqualitysdk/sdk/i/r;

    move-result-object v4

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/Ύ;->ﾒ:Ljava/lang/String;

    .line 10
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    .line 13
    :try_start_0
    const-string v5, "0H8=\n"

    const-string v8, "tgzyP+Wu55c=\n"

    invoke-static {v5, v8}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 14
    :cond_2
    iget-boolean v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/r;->ﱟ:Z

    if-eqz v4, :cond_3

    .line 15
    const-string v4, "WdL++xs=\n"

    const-string v5, "OKeKkn9Ci90=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 18
    :cond_3
    const-string v4, "5OdFoQ==\n"

    const-string v5, "lJIsxXzR2Rw=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 21
    iget-wide v4, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ᖺ:J

    const-wide/16 v7, 0x0

    cmp-long v0, v4, v7

    if-lez v0, :cond_4

    .line 22
    const-string v0, "F/lo\n"

    const-string v7, "fosM1Ezel70=\n"

    invoke-static {v0, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v4

    .line 24
    invoke-virtual {v6, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 27
    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/Ύ;->ﾒ:Ljava/lang/String;

    const-string v0, "Dp3ulBenMtEujuiSC+Bx1y6D+YsK9SWDIoH1j0XNAuwF\n"

    const-string v4, "S++c+2WHUaM=\n"

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v7

    .line 28
    invoke-static/range {v7 .. v12}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 29
    :cond_4
    :goto_1
    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ｋ()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x0

    .line 30
    invoke-static {v6, v0, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 31
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    :try_start_1
    new-instance v7, Ljava/util/HashSet;

    monitor-enter v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    :try_start_2
    iget-object v8, v3, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻏ:Ljava/util/HashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v3

    .line 36
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 37
    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾇ()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 40
    :cond_5
    const-string v3, "vBIt6w==\n"

    const-string v7, "2WBfmJxiDNU=\n"

    invoke-static {v3, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v3

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    move-object v10, v0

    .line 42
    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﭖ:Ljava/lang/String;

    const-string v0, "KB0/IRGLuxEJBiMpQ8i1GwMKLjoM2foQHx0iPBA=\n"

    const-string v3, "bW9NTmOr2nU=\n"

    invoke-static {v0, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v7

    .line 43
    invoke-static/range {v7 .. v12}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 44
    :goto_3
    invoke-static {v6, v5, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ﻣ;->ﾒ(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    .line 45
    invoke-virtual {v1, v2, v6}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 46
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ە;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ڗ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ږ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ډ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻐ:Z

    if-eqz v1, :cond_6

    .line 47
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 48
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ẏ;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ẏ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ｋ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    :cond_6
    return-void
.end method
