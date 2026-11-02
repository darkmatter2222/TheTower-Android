.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ﻐ:Ljava/lang/String;


# instance fields
.field public final ﻛ:Ljava/util/ArrayList;

.field public final ｋ:Ljava/lang/String;

.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WWBEJ86pFGw=\n"

    const-string v1, "CwUpSLrMUC4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "doJDwKjD6v5p3knV48Xps3CVT8y5xO//\n"

    const-string v1, "AvAio82hi50=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "Am0oj7q563AUYTWHovXyZxM=\n"

    const-string v1, "cQJH4tbYxgM=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1
    const-string v0, "+Xm35udf8M+xBpaywF2uiJ8sz7zuGeTSvjuB+/9a59LwGYq7/Vqz2eg3jOPuCbLPqTfN7ugepdWJ\nMJHF/yOy67I7lO+gRg==\n"

    const-string v1, "3Un4i4tr17w=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﻐ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/⁀;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﻛ:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    const-string v1, "+nYldWBAVyflKi9gK0ZUavxhKXlxR1Im\n"

    const-string v2, "jgREFgUiNkQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "7PMttIbBDPf6/zC8no0V4P0=\n"

    const-string v3, "n5xC2eqgIYQ=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    .line 6
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/⁀;

    .line 7
    iput-object p3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ｋ:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object p1

    new-instance p2, Lcom/ironsource/adqualitysdk/sdk/i/ﹰ;

    invoke-direct {p2, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹰ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;)V

    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 10
    iget-object p3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ↄ:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 11
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;Lcom/ironsource/adqualitysdk/sdk/i/ſ;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;)Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;
    .locals 4

    .line 19
    instance-of v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;

    if-eqz v0, :cond_0

    .line 20
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    .line 21
    move-object v1, v0

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 24
    const-string v1, "gMxq\n"

    const-string v3, "46scbCEZHkI=\n"

    invoke-static {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﾇ()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ｋ:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 28
    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;

    invoke-virtual {p0, v0}, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;->ﾇ(Ljava/lang/String;)Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v1

    throw p0

    .line 30
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;)V

    return-object p0
.end method

.method public static ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;)V
    .locals 3

    .line 28
    instance-of v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ⅰ;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    iget-boolean v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﻏ:Z

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 33
    const-string v0, "FT7g\n"

    const-string v2, "ckSDo0Z7orE=\n"

    invoke-static {v0, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "iwmGXo3UOEKEFIo=\n"

    const-string v1, "4XrpMKOzQmw=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0

    throw p0

    .line 36
    :cond_1
    const-string v0, "+dogH3oKYL0=\n"

    const-string v1, "k6lPcVRvDt4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    iput-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﻛ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;Lcom/ironsource/adqualitysdk/sdk/i/ĺ;)V
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;)Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ｋ:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    const-string v3, "NQ==\n"

    const-string v4, "GmqP9jFVV2M=\n"

    invoke-static {v3, v4, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ϙ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yw==\n"

    const-string v2, "5Nfc4POVeY0=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GQ==\n"

    const-string v3, "N9KS+cTCU2o=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ףּ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->טּ()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    invoke-virtual {v0, v9}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    :cond_0
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ﯦ;

    move-object v6, p0

    move-object v8, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ﯦ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ĺ;)V

    sget-object p1, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    .line 10
    :try_start_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 11
    invoke-interface {p1, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 13
    sget-object p2, Lcom/ironsource/adqualitysdk/sdk/i/Ł;->ﾒ:Ljava/lang/String;

    const-string v0, "dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n"

    const-string v1, "MAbSphc1kRA=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ｴ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    goto :goto_0

    :cond_1
    move-object v6, p0

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    move-object v6, p0

    move-object p1, v0

    .line 14
    monitor-exit p0

    throw p1
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;Lcom/ironsource/adqualitysdk/sdk/i/ĺ;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ｋ:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;)Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;->ﾒ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yw==\n"

    const-string v2, "5Nfc4POVeY0=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "GQ==\n"

    const-string v3, "N9KS+cTCU2o=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﮐ()Z

    move-result v1

    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﻛ:Ljava/util/ArrayList;

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ﯾ;

    invoke-direct {v2, p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﯾ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;Lcom/ironsource/adqualitysdk/sdk/i/ĺ;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 20
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ᵤ;Lcom/ironsource/adqualitysdk/sdk/i/ĺ;)V

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﭔ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ΐ;

    invoke-virtual {p1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ΐ;->ﾒ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 27
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
