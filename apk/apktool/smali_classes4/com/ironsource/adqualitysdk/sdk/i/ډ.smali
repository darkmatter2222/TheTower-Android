.class public final Lcom/ironsource/adqualitysdk/sdk/i/ډ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ه;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ډ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ه;

    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﾒ:Z

    if-eqz v1, :cond_5

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/ϛ;

    .line 3
    iget-object v3, v1, Lcom/ironsource/adqualitysdk/sdk/i/ϛ;->ﮌ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 4
    iget-object v5, v0, Lcom/ironsource/adqualitysdk/sdk/i/ه;->ﾇ:Landroid/content/Context;

    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ږ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ږ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ډ;)V

    monitor-enter v3

    .line 5
    :try_start_0
    iget-object v1, v3, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v3

    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﭴ()Z

    move-result v1

    .line 9
    sput-boolean v1, Lcom/ironsource/adqualitysdk/sdk/i/ᐧ;->ﮉ:Z

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﭸ()Z

    move-result v1

    .line 11
    sput-boolean v1, Lcom/ironsource/adqualitysdk/sdk/i/ṟ;->ﱡ:Z

    .line 12
    iget-boolean v1, v3, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾇ:Z

    if-nez v1, :cond_4

    .line 13
    const-string v1, "lC2SqqFiYbCsGoeU\n"

    const-string v2, "1UnD38AOCMQ=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VyNushSJW65XI26yFIlW6ghhLcxW0QTgHy4C+2jRF+8Tejq/\n"

    const-string v6, "eg5DnzmkdoM=\n"

    invoke-static {v4, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/IronSourceAdQuality;->getSDKVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "YMiHeMSLJlxtyId4xIsm\n"

    const-string v6, "QOWqVemmC3E=\n"

    invoke-static {v4, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    .line 14
    invoke-static {v1, v1, v2, v8}, Lcom/ironsource/adqualitysdk/sdk/i/Λ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ব;

    invoke-direct {v1, v3, v5}, Lcom/ironsource/adqualitysdk/sdk/i/ব;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 24
    new-instance v7, Lcom/ironsource/adqualitysdk/sdk/i/গ;

    invoke-direct {v7, v3, v0, v5}, Lcom/ironsource/adqualitysdk/sdk/i/গ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Lcom/ironsource/adqualitysdk/sdk/i/ږ;Landroid/content/Context;)V

    .line 36
    invoke-virtual {v3}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﻐ()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v4, v5

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾒ:Ljava/lang/String;

    .line 38
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ō;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ō;-><init>()V

    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ƈ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ƈ;-><init>()V

    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/Ȳ;

    invoke-direct {v2}, Lcom/ironsource/adqualitysdk/sdk/i/Ȳ;-><init>()V

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    const/4 v9, 0x0

    aput-object v0, v6, v9

    aput-object v1, v6, v8

    const/4 v0, 0x2

    aput-object v2, v6, v0

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    .line 41
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾇ:Ljava/util/List;

    .line 42
    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adqualitysdk/sdk/i/ғ;

    .line 47
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ܪ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/ironsource/adqualitysdk/sdk/i/গ;)V

    move-object v7, v2

    .line 49
    :goto_0
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;

    move-object v6, v0

    move-object v5, v4

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Ljava/lang/String;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    goto :goto_1

    :cond_3
    move-object v4, v5

    .line 50
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/Ť;

    invoke-direct {v6}, Lcom/ironsource/adqualitysdk/sdk/i/Ť;-><init>()V

    move-object v5, v4

    .line 51
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/וּ;->ﾒ:Ljava/lang/String;

    .line 52
    new-instance v2, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;

    invoke-direct/range {v2 .. v7}, Lcom/ironsource/adqualitysdk/sdk/i/ۊ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;Ljava/lang/String;Landroid/content/Context;Lcom/ironsource/adqualitysdk/sdk/i/ғ;Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    invoke-static {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 53
    :goto_1
    iput-boolean v8, v3, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾇ:Z

    goto :goto_2

    .line 55
    :cond_4
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ঌ;

    invoke-direct {v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ঌ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ږ;)V

    invoke-static {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 56
    monitor-exit v3

    throw v0

    :cond_5
    return-void
.end method
