.class public final Lcom/ironsource/adqualitysdk/sdk/i/Τ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/Ľ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Τ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/Τ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/Ľ;

    .line 2
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/Т;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/Т;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/Т;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Τ;)V

    .line 4
    iput-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/Т;

    .line 5
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/Ľ;->ｋ:Landroid/os/Handler;

    .line 6
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ο;

    invoke-direct {v1, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ο;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/Τ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
