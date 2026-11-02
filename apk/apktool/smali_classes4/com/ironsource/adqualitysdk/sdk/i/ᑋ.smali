.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᑋ;
.super Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    .line 2
    iget-object p1, p3, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻏ:Lcom/ironsource/adqualitysdk/sdk/i/İ;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;

    .line 4
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᵩ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 5
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/İ;->ﱡ:Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;

    .line 7
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﺗ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;

    .line 8
    iget-object p1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᓖ;->ｋ:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 9
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-eqz p3, :cond_2

    .line 11
    iget-object v2, p3, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p3, p3, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    goto :goto_2

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;

    .line 15
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    .line 16
    iget-object v3, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾇ:Ljava/lang/String;

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "iQ==\n"

    const-string v6, "p93gkhORYeM=\n"

    invoke-static {v5, v6}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/noxPtvM8Z4=\n"

    const-string v7, "nxRVTLSllbM=\n"

    invoke-static {v5, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾇ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Mw==\n"

    const-string v7, "HgsAX+fwR2I=\n"

    invoke-static {v5, v7}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 21
    const-string v5, "5jPzEA==\n"

    const-string v7, "yECBfCO+vVY=\n"

    invoke-static {v5, v7, v4}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 22
    iget-object v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾇ:Ljava/lang/String;

    .line 23
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 24
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᴻ;->ﾒ:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v10, v0

    goto :goto_4

    :cond_3
    move-object v10, p2

    .line 27
    :goto_4
    new-instance v5, Lcom/ironsource/adqualitysdk/sdk/i/ї;

    .line 28
    iget-object v7, v2, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ:Ljava/lang/String;

    .line 29
    iget-object v2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    invoke-virtual {v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;->ﾒ()I

    move-result v2

    invoke-virtual {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹲ;->ﾇ()I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v9, v1, -0x1

    .line 30
    invoke-direct/range {v5 .. v10}, Lcom/ironsource/adqualitysdk/sdk/i/ї;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 31
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 32
    :cond_4
    new-instance v6, Lcom/ironsource/adqualitysdk/sdk/i/ї;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 33
    const-string v0, "+880rZmoSQK53nWphKJE\n"

    const-string v1, "1qxbw/fNKnY=\n"

    invoke-static {v0, v1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ヾ;->ﾒ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    move-object v8, p2

    .line 34
    invoke-direct/range {v6 .. v11}, Lcom/ironsource/adqualitysdk/sdk/i/ї;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_5
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    .line 37
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const-class p3, Lcom/ironsource/adqualitysdk/sdk/i/ﺪ;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    .line 39
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_5
    if-ltz v0, :cond_7

    .line 40
    aget-object v1, p1, v0

    .line 41
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    .line 45
    invoke-virtual {p2, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 48
    :cond_7
    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/StackTraceElement;

    .line 49
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ї;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    const/4 v5, 0x0

    .line 50
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/adqualitysdk/sdk/i/ї;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/Ӏ;->ﾒ:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    return-void
.end method
