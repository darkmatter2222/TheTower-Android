.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｃ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

.field public final synthetic ﻛ:I

.field public final synthetic ｋ:J

.field public final synthetic ﾇ:Z

.field public final synthetic ﾒ:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;Lorg/json/JSONObject;ZJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﾒ:Lorg/json/JSONObject;

    iput-boolean p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﾇ:Z

    iput-wide p4, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ｋ:J

    iput p6, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﻛ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﾒ:Lorg/json/JSONObject;

    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﾇ:Z

    iget-wide v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ｋ:J

    iget v5, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｃ;->ﻛ:I

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﾇ()Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    move-result-object v6

    monitor-enter v6

    .line 4
    :try_start_0
    iget-boolean v7, v6, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﻐ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    if-eqz v7, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    :try_start_1
    iget-wide v6, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﱡ:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    cmp-long v6, v3, v8

    if-lez v6, :cond_1

    .line 6
    const-string v6, "cA4A\n"

    const-string v7, "GWp0apF4qng=\n"

    invoke-static {v6, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﱡ:J

    sub-long/2addr v3, v7

    invoke-virtual {v2, v6, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 9
    :cond_1
    iget v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﱟ:I

    if-lez v3, :cond_2

    if-lez v5, :cond_2

    .line 10
    const-string v3, "EJg6Zg==\n"

    const-string v4, "efVXAmImMxc=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﱟ:I

    sub-int/2addr v5, v4

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    :cond_2
    const-string v3, "UCR1VbU=\n"

    const-string v4, "NksHNtDdS/Q=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 15
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﭖ:Ljava/lang/String;

    const-string v0, "KQ/IA4CE5H8FEd4FnMOmfhwi0wKb0NlpAxDKAJfQ4yocHMMAncXi\n"

    const-string v4, "bH26bPKkhgo=\n"

    invoke-static {v0, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    .line 16
    invoke-static/range {v3 .. v8}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/ironsource/adqualitysdk/sdk/i/ᵘ;Z)V

    .line 17
    :goto_0
    iget-object v0, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ҷ;

    .line 18
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ҷ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    .line 19
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/แ;

    .line 20
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/แ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ܕ;

    .line 21
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ܕ;->ﺙ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 22
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﭴ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 23
    const-string v1, "c4Ho6BXptvBkntrxF+W2yg==\n"

    const-string v3, "B/G3gXuAwq8=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 24
    monitor-exit v6

    throw v0
.end method
