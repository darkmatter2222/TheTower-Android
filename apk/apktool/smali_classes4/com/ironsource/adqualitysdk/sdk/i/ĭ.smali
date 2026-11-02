.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ĭ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# instance fields
.field public final ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    .line 3
    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 3
    :cond_1
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v1, v3}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 6
    :cond_3
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    if-nez p1, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾒ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ĭ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract ﾒ()Ljava/lang/String;
.end method
