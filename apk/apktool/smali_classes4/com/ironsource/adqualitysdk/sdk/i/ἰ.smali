.class public final Lcom/ironsource/adqualitysdk/sdk/i/ἰ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;
.source "SourceFile"


# instance fields
.field public final ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

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
    check-cast p1, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;

    .line 5
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-nez p1, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "4g==\n"

    const-string v2, "w/ESGDWpRFE=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .locals 2

    .line 1
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ἰ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    invoke-virtual {v1, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;->ﾇ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾒ()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/Ι;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
