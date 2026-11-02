.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒉ;
.super Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "9lWqxOcJDCE=\n"

    const-string v1, "kTDego5sYEU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "DiFARr3hXKoa\n"

    const-string v1, "aUQ0ANSEMM4=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "/Mc7ARrCYUXdyyorF/90ZeLSKg==\n"

    const-string v1, "m6JPR3OwEjE=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "KM19gOYA1yAJwWyq6yXNICf4e6PpG9w=\n"

    const-string v1, "T6gJxo9ypFQ=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "p06mpBGjJUyhUKeBAKAhUK1Qp6AX\n"

    const-string v1, "xDzDxWXGYyU=\n"

    invoke-static {v0, v1}, Lcom/ironsource/adqualitysdk/sdk/StringFog;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;-><init>()V

    return-void
.end method

.method public static ﻛ(Ljava/util/ArrayList;)Ljava/lang/reflect/Field;
    .locals 11

    .line 1
    const-class v0, Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 2
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {p0, v3, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v2

    .line 4
    iget-object v2, v2, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 5
    const-class v4, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    monitor-enter v4

    .line 6
    :try_start_0
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    .line 9
    :cond_0
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 10
    iget-object v5, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 13
    :catch_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 14
    :goto_0
    array-length v6, v0

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v0, v7

    .line 15
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 16
    invoke-virtual {v8, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 18
    :cond_2
    iget-object p0, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 19
    iget-object p0, v2, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    monitor-exit v4

    goto :goto_2

    .line 22
    :cond_3
    monitor-exit v4

    const/4 p0, 0x0

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static ｋ(Ljava/util/ArrayList;)Ljava/lang/reflect/Field;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 3
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 4
    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 5
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 7
    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 10
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 12
    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0

    .line 15
    :cond_1
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v1

    .line 18
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public static ﾇ(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Class;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 3
    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 4
    const-class v1, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    invoke-static {p0, v2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 5
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v1

    .line 6
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {v1, v0, p0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;Ljava/util/ArrayList;)V

    return-object v2

    .line 9
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 10
    :cond_1
    const-class v1, Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 13
    const-class v0, Ljava/lang/Boolean;

    invoke-static {p0, v2, v0}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object p0

    .line 16
    iget-object p0, p0, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ᓕ;
    .locals 1

    .line 6
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 8
    new-instance v0, Lcom/ironsource/adqualitysdk/sdk/i/ᓕ;

    invoke-direct {v0}, Lcom/ironsource/adqualitysdk/sdk/i/ᓕ;-><init>()V

    return-object v0
.end method

.method public static ﾒ(Ljava/util/ArrayList;)Ljava/lang/reflect/Field;
    .locals 3

    const/4 v0, 0x0

    .line 1
    const-class v1, Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    const/4 v1, 0x1

    .line 2
    const-class v2, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    invoke-static {p0, v1, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ﹽ;->ﾒ(Ljava/util/List;ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 3
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ()Lcom/ironsource/adqualitysdk/sdk/i/ṛ;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/ironsource/adqualitysdk/sdk/i/ṛ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    .line 5
    invoke-virtual {v1, v0, p0}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;)Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method
