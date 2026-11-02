.class public final Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ｋ:Ljava/util/ArrayList;

.field public ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

.field public ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;Ljava/util/ArrayList;)V
    .locals 6

    .line 69
    iget-object v0, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    if-eqz v0, :cond_0

    .line 70
    iget-boolean v1, v0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾒ:Z

    if-eqz v1, :cond_0

    .line 71
    iget v0, v0, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﾇ:I

    const/4 v2, 0x0

    .line 72
    invoke-static {p0, v1, v0, v2}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_0

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 78
    :goto_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    .line 79
    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    if-eqz v3, :cond_5

    .line 80
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    iget-object v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 81
    iget v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ｋ:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_5

    .line 82
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    iget-object v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 83
    iget v5, v4, Lcom/ironsource/adqualitysdk/sdk/i/ƭ;->ﻛ:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    goto :goto_3

    .line 84
    :cond_1
    iget-object v3, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﱡ:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 89
    :cond_2
    iget-object v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 90
    iget-boolean v4, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﺙ:Z

    if-eqz v4, :cond_3

    .line 91
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 92
    iget-object v4, v4, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻐ:Ljava/lang/Class;

    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    .line 94
    :cond_3
    iget-object v3, v3, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻐ:Ljava/lang/Class;

    .line 95
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_5

    .line 98
    iget v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾇ:I

    if-nez v3, :cond_4

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 103
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 101
    iput v3, p1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾇ:I

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static ﾒ(Ljava/lang/Class;ZILjava/util/List;)[Ljava/lang/reflect/Field;
    .locals 5

    :goto_0
    if-eqz p0, :cond_0

    .line 30
    invoke-static {p0, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ(Ljava/lang/Class;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 33
    new-array v0, p3, [Ljava/lang/reflect/Field;

    if-eqz p0, :cond_3

    .line 35
    new-array v0, p3, [Ljava/lang/reflect/Field;

    .line 36
    new-array v1, p3, [Ljava/lang/reflect/Field;

    .line 38
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    :catch_1
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/ｨ;->ﾒ:Ljava/lang/String;

    .line 49
    array-length v2, v0

    .line 50
    array-length v3, v1

    add-int v4, v2, v3

    .line 51
    new-array v4, v4, [Ljava/lang/reflect/Field;

    .line 52
    invoke-static {v0, p3, v4, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    invoke-static {v1, p3, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_1

    return-object v4

    .line 54
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    move p1, p3

    :goto_1
    if-eqz p0, :cond_2

    if-eq p1, p2, :cond_2

    .line 56
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    array-length v1, v4

    .line 58
    array-length v2, v0

    add-int v3, v1, v2

    .line 59
    new-array v3, v3, [Ljava/lang/reflect/Field;

    .line 60
    invoke-static {v4, p3, v3, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    invoke-static {v0, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v3

    .line 62
    :catch_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    array-length v1, v4

    .line 64
    array-length v2, v0

    add-int v3, v1, v2

    .line 65
    new-array v3, v3, [Ljava/lang/reflect/Field;

    .line 66
    invoke-static {v4, p3, v3, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    invoke-static {v0, p3, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_3

    move-object v4, v3

    .line 68
    :catch_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-object v4

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;)Ljava/lang/reflect/Field;
    .locals 2

    .line 9
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;

    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;Ljava/util/ArrayList;)V

    .line 16
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ｋ:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    monitor-exit v0

    return-object p1

    .line 19
    :cond_1
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﾒ(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 2

    .line 1
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/Ł;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 6
    iput-object p2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻐ:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;)Ljava/lang/reflect/Field;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;Ljava/util/ArrayList;)V
    .locals 2

    .line 20
    const-class v0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    invoke-direct {v1}, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;-><init>()V

    iput-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;

    .line 25
    iput-object p2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;

    .line 26
    iget p2, p2, Lcom/ironsource/adqualitysdk/sdk/i/ᓓ;->ﻏ:I

    .line 27
    iput p2, v1, Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;->ﾇ:I

    .line 28
    invoke-static {p1, v1, p3}, Lcom/ironsource/adqualitysdk/sdk/i/ᒍ;->ﾒ(Ljava/lang/Class;Lcom/ironsource/adqualitysdk/sdk/i/ᒐ;Ljava/util/ArrayList;)V

    .line 29
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
