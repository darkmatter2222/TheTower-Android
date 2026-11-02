.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﺰ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺰ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺰ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḽ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 3
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺰ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 4
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ῡ:Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒨ;->ﾒ()V

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺰ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 9
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ῠ:Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ſ;

    .line 11
    invoke-interface {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ſ;->ﾒ()V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺰ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 14
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ῠ:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﺰ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 18
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ὑ:Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ſ;

    .line 20
    invoke-interface {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ſ;->ﾒ()V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1
.end method
