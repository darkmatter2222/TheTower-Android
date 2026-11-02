.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᖿ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;

.field public final synthetic ﾇ:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖿ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖿ;->ﾇ:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖿ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᖾ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᖿ;->ﾇ:Lorg/json/JSONObject;

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 3
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﭸ:Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;

    .line 4
    invoke-virtual {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﾞ;->ﾒ(Lorg/json/JSONObject;)Z

    .line 5
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 6
    iget-object v7, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    .line 7
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ʴ;

    .line 8
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v4

    check-cast v4, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 9
    iget-boolean v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḟ:Z

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v1

    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 13
    const-string v5, "9XJL\n"

    const-string v6, "gAAnRUBYvjo=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 15
    const-string v5, "TQ==\n"

    const-string v6, "PQTcKj3i8eU=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﻛ:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﻛ:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﱟ()Ljava/lang/String;

    move-result-object v1

    .line 19
    :goto_0
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ʴ;->ﾇ:Ljava/lang/String;

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Eg==\n"

    const-string v5, "Pf7MGvBw9pE=\n"

    invoke-static {v4, v5}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 21
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 22
    iget-object v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ᖽ;

    .line 23
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/Κ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/r;

    .line 24
    iget-object v5, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﮌ:Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 26
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->リ()Z

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_5

    .line 27
    iget v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḹ:I

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->ヶ()I

    move-result v1

    if-ne v6, v1, :cond_4

    goto :goto_3

    :cond_4
    move v6, v8

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v9

    .line 28
    :goto_4
    new-instance v10, Lcom/ironsource/adqualitysdk/sdk/i/Ἷ;

    invoke-direct {v10, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ἷ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Ἶ;)V

    .line 29
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 35
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ﭙ;

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adqualitysdk/sdk/i/ﭙ;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/r;Landroid/content/Context;Z)V

    .line 36
    iget-boolean v0, v7, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ﾇ:Z

    if-eqz v0, :cond_6

    .line 37
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ｋ:Ljava/lang/String;

    const-string v1, "CKD8/y0ly/svvfj/JmvatHum/+wtIMuJPr7k/zE/jqwzqv+6DC7arDS9+tcjJc+8Pr2x7SM4jqgz\nuuX+LTzA\n"

    const-string v2, "W8+RmkJLrts=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﻛ(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 41
    :cond_6
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/⁔;

    invoke-direct {v0, v7, v10, v1}, Lcom/ironsource/adqualitysdk/sdk/i/⁔;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/⁀;Lcom/ironsource/adqualitysdk/sdk/i/ধ;Lcom/ironsource/adqualitysdk/sdk/i/ﭙ;)V

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 42
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 43
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 45
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    const-string v2, "dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n"

    const-string v3, "MAbSphc1kRA=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    .line 46
    :cond_7
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/⁀;->ｋ:Ljava/lang/String;

    const-string v1, "m0JdncHVMMKhDEyQ3sQw1btfSJDAkGLTv1lZjNmQdd+6RFmNjeVC+u5DTt/f1WPGoUJPmuXRftKi\nSU7f2tVi0+5CU4uNwGLZuEVYmsk=\n"

    const-string v2, "ziw8/62wELY=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v0, v1, v8}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾇ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
