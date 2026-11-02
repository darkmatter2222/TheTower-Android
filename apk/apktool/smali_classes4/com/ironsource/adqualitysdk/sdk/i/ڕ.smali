.class public final Lcom/ironsource/adqualitysdk/sdk/i/ڕ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ڋ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڕ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڕ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﺙ:Z

    .line 5
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/Һ;

    .line 6
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/Һ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ь;

    .line 7
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ь;->ﾒ:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;

    .line 14
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ח;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    .line 15
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/צ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/צ;

    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻩ;->ﾒ(Z)V

    .line 17
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڕ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->乁()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_5

    .line 20
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ڕ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ڋ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ڋ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ٵ;

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ٵ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ٵ;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v1

    .line 21
    monitor-exit v0

    throw v1
.end method
