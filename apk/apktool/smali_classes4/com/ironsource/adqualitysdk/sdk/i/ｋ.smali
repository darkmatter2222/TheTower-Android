.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｋ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

.field public final synthetic ﾇ:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ףּ;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ﾇ:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ﾇ:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ףּ;Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ﾇ;

    invoke-direct {v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﾇ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ｋ;)V

    invoke-static {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ՙ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;)V

    .line 8
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    .line 9
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮌ:Z

    if-eqz v1, :cond_0

    .line 10
    iget-boolean v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮐ:Z

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ﾇ:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ףּ;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｋ;->ﾇ:Landroid/app/Activity;

    .line 13
    invoke-virtual {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/є;->ﻛ(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 14
    iput-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ףּ;->ﮐ:Z

    :cond_0
    return-void
.end method
