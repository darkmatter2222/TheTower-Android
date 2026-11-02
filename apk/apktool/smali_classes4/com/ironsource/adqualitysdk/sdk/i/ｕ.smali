.class public final Lcom/ironsource/adqualitysdk/sdk/i/ｕ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;
.source "SourceFile"


# instance fields
.field public final synthetic ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;

.field public final synthetic ﾇ:I


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｕ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;

    iput p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｕ;->ﾇ:I

    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᵕ;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｕ;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;

    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ﻡ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;

    iget v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ｕ;->ﾇ:I

    .line 2
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 3
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ﻐ()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 6
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;->ﱡ()Lcom/ironsource/adqualitysdk/sdk/i/ﭩ;

    move-result-object v2

    check-cast v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;

    .line 8
    iget-boolean v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﮇ;->Ḟ:Z

    if-nez v2, :cond_1

    .line 9
    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;

    move-result-object v1

    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᘢ;->ﾒ:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 12
    const-string v3, "rxJ/\n"

    const-string v4, "ymELskbtt/8=\n"

    invoke-static {v3, v4}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᖬ;->ｋ:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/16 v1, 0x64

    .line 13
    :goto_0
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘧ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;

    .line 14
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ:Landroid/os/Handler;

    const/4 v3, 0x0

    .line 15
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 16
    iget-object v2, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;->ﻏ:Landroid/os/Handler;

    new-instance v3, Lcom/ironsource/adqualitysdk/sdk/i/ッ;

    invoke-direct {v3, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ッ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ᘦ;)V

    int-to-long v0, v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
