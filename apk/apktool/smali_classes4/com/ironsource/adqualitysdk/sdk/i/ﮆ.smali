.class public abstract Lcom/ironsource/adqualitysdk/sdk/i/ﮆ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget v1, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻐ:I

    .line 3
    iget-boolean v2, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾒ:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 4
    iget v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾇ:I

    .line 5
    new-array v5, v3, [Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 9
    sget-object v7, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ:Ljava/lang/String;

    .line 10
    array-length v7, v5

    .line 11
    array-length v8, v6

    add-int v9, v7, v8

    .line 12
    new-array v9, v9, [Ljava/lang/reflect/Method;

    .line 13
    invoke-static {v5, v3, v9, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-static {v6, v3, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v2, :cond_0

    .line 15
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    move v2, v3

    move-object v5, v9

    :goto_0
    if-eqz p0, :cond_1

    if-eq v2, v4, :cond_1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    .line 21
    array-length v7, v5

    .line 22
    array-length v8, v6

    add-int v9, v7, v8

    .line 23
    new-array v10, v9, [Ljava/lang/reflect/Method;

    .line 24
    invoke-static {v5, v3, v10, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    invoke-static {v6, v3, v10, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 27
    array-length v6, v5

    add-int v7, v9, v6

    .line 28
    new-array v7, v7, [Ljava/lang/reflect/Method;

    .line 29
    invoke-static {v10, v3, v7, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    invoke-static {v5, v3, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    move-object v5, v7

    goto :goto_0

    .line 36
    :cond_1
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    .line 37
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 38
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 39
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 40
    iget v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ｋ:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_d

    .line 41
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    .line 42
    iget v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﻛ:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_4

    goto/16 :goto_5

    .line 43
    :cond_4
    iget-object v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﱡ:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_5

    .line 47
    :cond_5
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 48
    iget v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﮐ:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 49
    array-length v6, v4

    if-eq v5, v6, :cond_6

    goto :goto_5

    .line 50
    :cond_6
    iget-object v5, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﱟ:Ljava/util/List;

    if-eqz v5, :cond_9

    .line 51
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    array-length v7, v4

    if-eq v6, v7, :cond_7

    goto :goto_5

    :cond_7
    move v6, v3

    .line 54
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 55
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    aget-object v8, v4, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 56
    :cond_9
    iget-object v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻏ:Ljava/lang/Class;

    const/4 v5, 0x1

    if-eqz v4, :cond_b

    .line 57
    iget-boolean v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﺙ:Z

    if-eqz v6, :cond_a

    .line 58
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    .line 59
    iget-object v6, p1, Lcom/ironsource/adqualitysdk/sdk/i/ﹱ;->ﻏ:Ljava/lang/Class;

    .line 60
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_4

    .line 62
    :cond_a
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    goto :goto_4

    :cond_b
    move v4, v5

    :goto_4
    if-eqz v4, :cond_d

    if-nez v1, :cond_c

    goto :goto_6

    :cond_c
    add-int/lit8 v1, v1, -0x1

    :cond_d
    :goto_5
    move v5, v3

    :goto_6
    if-eqz v5, :cond_3

    .line 63
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    return-object v0
.end method
