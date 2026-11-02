.class public final Lcom/ironsource/adqualitysdk/sdk/i/ﹹ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/ﯧ;


# instance fields
.field public final synthetic ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/util/List;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;

    .line 2
    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;->ｋ(Ljava/util/List;)Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    move-result-object p1

    .line 3
    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᴫ;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/s;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ﹹ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WdlfrnBP4bU8wkOqYEirp33TD6lmT6SjecJKomVe4PE=\n"

    const-string v3, "HKEvyxM7hNE=\n"

    invoke-static {v2, v3}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﭤ;->ﾒ(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method
