.class public final Lcom/ironsource/adqualitysdk/sdk/i/ʺ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ᕽ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/ᕽ;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᕽ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ﻤ;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0J1EDffC0g==\n"

    const-string v2, "ovgweIWs8uA=\n"

    invoke-static {v1, v2}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᕽ;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    const-string v0, "77OnA8l8Lg==\n"

    const-string v1, "ndbTdrsSFbQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/ᕽ;->ﾒ(Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;Lcom/ironsource/adqualitysdk/sdk/i/İ;)Lcom/ironsource/adqualitysdk/sdk/i/Ι;

    move-result-object p1

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p1, Lcom/ironsource/adqualitysdk/sdk/i/Ι;->ﾇ:Z

    return-object p1
.end method
