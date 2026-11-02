.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ſ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;Lcom/ironsource/adqualitysdk/sdk/i/ſ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ſ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 2
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ὑ:Ljava/util/ArrayList;

    .line 3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ſ;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḽ:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﮣ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ſ;

    invoke-interface {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ſ;->ﾒ()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0

    throw v1
.end method
