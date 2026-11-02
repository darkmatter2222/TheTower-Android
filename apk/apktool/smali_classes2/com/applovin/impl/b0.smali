.class public Lcom/applovin/impl/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/z5$b;
.implements Lcom/applovin/impl/x5$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b0$a;,
        Lcom/applovin/impl/b0$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/b0$a;

.field private c:Lcom/applovin/impl/z;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/b0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/b0;->a:Lcom/applovin/impl/sdk/l;

    .line 3
    iput-object p2, p0, Lcom/applovin/impl/b0;->b:Lcom/applovin/impl/b0$a;

    return-void
.end method

.method public static a(Lcom/applovin/impl/z;Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/a0;

    .line 15
    invoke-virtual {p0}, Lcom/applovin/impl/z;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/applovin/impl/a0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 18
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/a0;

    .line 20
    invoke-virtual {v3, v1}, Lcom/applovin/impl/a0;->a(Lcom/applovin/impl/a0;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b0;->c:Lcom/applovin/impl/z;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/b0;->b:Lcom/applovin/impl/b0$a;

    iget-object v2, p0, Lcom/applovin/impl/b0;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/applovin/impl/b0$a;->a(Lcom/applovin/impl/z;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    new-instance v0, Lcom/applovin/impl/z5;

    iget-object v1, p0, Lcom/applovin/impl/b0;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {v0, v1, p0}, Lcom/applovin/impl/z5;-><init>(Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/z5$b;)V

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/b0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/b0$b;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/applovin/impl/b0;->b:Lcom/applovin/impl/b0$a;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/applovin/impl/b0$a;->a(Lcom/applovin/impl/b0$b;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/b0$b;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/applovin/impl/b0;->b:Lcom/applovin/impl/b0$a;

    invoke-interface {v0, p1, p2}, Lcom/applovin/impl/b0$a;->a(Lcom/applovin/impl/b0$b;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 31
    new-instance v0, Lcom/applovin/impl/x5;

    iget-object v1, p0, Lcom/applovin/impl/b0;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {v0, v1, p1, p0}, Lcom/applovin/impl/x5;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/String;Lcom/applovin/impl/x5$b;)V

    .line 32
    iget-object p1, p0, Lcom/applovin/impl/b0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, p1, v5

    .line 42
    const-string v7, "#"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 45
    new-instance v7, Lcom/applovin/impl/a0;

    invoke-direct {v7, v6, v3}, Lcom/applovin/impl/a0;-><init>(Ljava/lang/String;I)V

    .line 46
    invoke-virtual {v7}, Lcom/applovin/impl/a0;->h()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    invoke-virtual {v7}, Lcom/applovin/impl/a0;->b()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-eqz v8, :cond_2

    .line 52
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 65
    :cond_3
    new-instance p1, Lcom/applovin/impl/z;

    invoke-direct {p1, v0, v1}, Lcom/applovin/impl/z;-><init>(Ljava/util/Map;Ljava/util/List;)V

    iput-object p1, p0, Lcom/applovin/impl/b0;->c:Lcom/applovin/impl/z;

    .line 66
    iput-object p2, p0, Lcom/applovin/impl/b0;->d:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/applovin/impl/b0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/b0;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app-ads.txt fetched: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/b0;->c:Lcom/applovin/impl/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppAdsTxtService"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_4
    iget-object p1, p0, Lcom/applovin/impl/b0;->b:Lcom/applovin/impl/b0$a;

    iget-object v0, p0, Lcom/applovin/impl/b0;->c:Lcom/applovin/impl/z;

    invoke-interface {p1, v0, p2}, Lcom/applovin/impl/b0$a;->a(Lcom/applovin/impl/z;Ljava/lang/String;)V

    return-void
.end method
