.class Lcom/applovin/impl/s5;
.super Lcom/applovin/impl/q5;
.source "SourceFile"


# instance fields
.field private final r:Lcom/applovin/impl/v7;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/v7;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 1
    const-string v0, "TaskCacheVastAd"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/q5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/s5;)Lcom/applovin/impl/v7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->u5:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->getRegexMatches(Ljava/util/regex/Matcher;I)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object v3, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to cache JavaScript resource: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private j()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/q5;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->u1()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->g1()Lcom/applovin/impl/y7;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 8
    invoke-virtual {v0}, Lcom/applovin/impl/y7;->e()Lcom/applovin/impl/d8;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 12
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->c()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 14
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->b()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 78
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Companion ad does not have any resources attached. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 79
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/d8$a;->b:Lcom/applovin/impl/d8$a;

    const-string v5, "..."

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v4, :cond_6

    .line 81
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Caching static companion ad at "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_4
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, v1, v2, v6}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 86
    invoke-virtual {v0, v1}, Lcom/applovin/impl/d8;->a(Landroid/net/Uri;)V

    .line 87
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    return-void

    .line 91
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Failed to cache static companion ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_6
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/d8$a;->d:Lcom/applovin/impl/d8$a;

    if-ne v3, v4, :cond_d

    .line 97
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 99
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Begin caching HTML companion ad. Fetching from "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0, v1, v2, v6}, Lcom/applovin/impl/q5;->c(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 107
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v4, "HTML fetched. Caching HTML now..."

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_8
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v3, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/d8;->a(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    return-void

    .line 114
    :cond_9
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load companion ad resources from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_a
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caching provided HTML for companion ad. No fetch required. HTML: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_b
    iget-object v1, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/c5;->t5:Lcom/applovin/impl/c5;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 124
    invoke-direct {p0, v2}, Lcom/applovin/impl/s5;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    :cond_c
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v3, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/d8;->a(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0, v7}, Lcom/applovin/impl/sdk/ad/b;->b(Z)V

    return-void

    .line 131
    :cond_d
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/d8$a;->c:Lcom/applovin/impl/d8$a;

    if-ne v0, v1, :cond_11

    .line 134
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Skip caching of iFrame resource..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 144
    :cond_e
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Failed to retrieve non-video resources from companion ad. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_f
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "No companion ad provided. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_10
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Companion ad caching disabled. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_2
    return-void
.end method

.method private k()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/q5;->i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-static {v0}, Lcom/applovin/impl/h8;->a(Lcom/applovin/impl/v7;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->i1()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->V()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v1}, Lcom/applovin/impl/v7;->isOpenMeasurementEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v1}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->g0()Lcom/applovin/impl/o4;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/applovin/impl/o4;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/v7;->d(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finish caching HTML template "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v3}, Lcom/applovin/impl/v7;->i1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ad #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 23
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Unable to load HTML template"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private l()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/q5;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->v1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->p1()Lcom/applovin/impl/i8;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->q1()Lcom/applovin/impl/j8;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0}, Lcom/applovin/impl/j8;->e()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/q5;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Video file successfully cached into: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {v0, v1}, Lcom/applovin/impl/j8;->a(Landroid/net/Uri;)V

    return-void

    .line 23
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to cache video file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 31
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Video caching disabled. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private m()Lcom/applovin/impl/c0;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->u1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "Companion ad caching disabled. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->g1()Lcom/applovin/impl/y7;

    move-result-object v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "No companion ad provided. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/y7;->e()Lcom/applovin/impl/d8;

    move-result-object v0

    if-nez v0, :cond_5

    .line 17
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "Failed to retrieve non-video resources from companion ad. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1

    .line 22
    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->c()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string v2, ""

    :goto_0
    move-object v4, v2

    .line 24
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->b()Ljava/lang/String;

    move-result-object v2

    .line 25
    invoke-static {v4}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    .line 103
    :cond_7
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "Companion ad does not have any resources attached. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 104
    :cond_8
    :goto_1
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v3

    sget-object v5, Lcom/applovin/impl/d8$a;->b:Lcom/applovin/impl/d8$a;

    const-string v6, "..."

    if-ne v3, v5, :cond_a

    .line 106
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Caching static companion ad at "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_9
    new-instance v3, Lcom/applovin/impl/e0;

    iget-object v5, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iget-object v8, p0, Lcom/applovin/impl/q5;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    new-instance v10, Lcom/applovin/impl/s5$a;

    invoke-direct {v10, p0, v0}, Lcom/applovin/impl/s5$a;-><init>(Lcom/applovin/impl/s5;Lcom/applovin/impl/d8;)V

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/applovin/impl/e0;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Ljava/util/List;ZLjava/lang/String;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/e0$a;)V

    return-object v3

    .line 125
    :cond_a
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v3

    sget-object v5, Lcom/applovin/impl/d8$a;->d:Lcom/applovin/impl/d8$a;

    if-ne v3, v5, :cond_10

    .line 128
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 130
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Begin caching HTML companion ad. Fetching from "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0, v4, v1, v2}, Lcom/applovin/impl/q5;->c(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 138
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v4, "HTML fetched. Caching HTML now..."

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_c
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v3, Lcom/applovin/impl/s5$b;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/s5$b;-><init>(Lcom/applovin/impl/s5;Lcom/applovin/impl/d8;)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/q5$c;)Lcom/applovin/impl/d0;

    move-result-object v0

    return-object v0

    .line 153
    :cond_d
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unable to load companion ad resources from "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_e
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caching provided HTML for companion ad. No fetch required. HTML: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_f
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v3, Lcom/applovin/impl/s5$c;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/s5$c;-><init>(Lcom/applovin/impl/s5;Lcom/applovin/impl/d8;)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/q5$c;)Lcom/applovin/impl/d0;

    move-result-object v0

    return-object v0

    .line 172
    :cond_10
    invoke-virtual {v0}, Lcom/applovin/impl/d8;->d()Lcom/applovin/impl/d8$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/d8$a;->c:Lcom/applovin/impl/d8$a;

    if-ne v0, v2, :cond_11

    .line 175
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "Skip caching of iFrame resource..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_2
    return-object v1
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/k4;->f()V

    .line 3
    invoke-super {p0, p1}, Lcom/applovin/impl/q5;->a(I)V

    return-void
.end method

.method e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->h()V

    .line 2
    invoke-super {p0}, Lcom/applovin/impl/q5;->e()V

    return-void
.end method

.method protected n()Lcom/applovin/impl/d0;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->i1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v2, "Unable to load HTML template"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->i1()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->V()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/s5$e;

    invoke-direct {v2, p0}, Lcom/applovin/impl/s5$e;-><init>(Lcom/applovin/impl/s5;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/q5$c;)Lcom/applovin/impl/d0;

    move-result-object v0

    return-object v0
.end method

.method protected o()Lcom/applovin/impl/e0;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->v1()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    const-string v3, "Video caching disabled. Skipping..."

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->p1()Lcom/applovin/impl/i8;

    move-result-object v0

    if-nez v0, :cond_2

    return-object v1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->q1()Lcom/applovin/impl/j8;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 14
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/j8;->e()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    .line 17
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caching video file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " creative..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v3, Lcom/applovin/impl/s5$d;

    invoke-direct {v3, p0, v0}, Lcom/applovin/impl/s5$d;-><init>(Lcom/applovin/impl/s5;Lcom/applovin/impl/j8;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/applovin/impl/q5;->a(Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/q5;->run()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->D0()Z

    move-result v0

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v2, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Begin caching for VAST "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v4, "streaming "

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_12

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->L0:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->s1()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->e()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-direct {p0}, Lcom/applovin/impl/s5;->m()Lcom/applovin/impl/c0;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->n()Lcom/applovin/impl/d0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->o()Lcom/applovin/impl/e0;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_4
    invoke-virtual {p0, v0}, Lcom/applovin/impl/q5;->a(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_2

    .line 40
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v2}, Lcom/applovin/impl/v7;->j1()Lcom/applovin/impl/v7$c;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/v7$c;->a:Lcom/applovin/impl/v7$c;

    if-ne v2, v3, :cond_9

    .line 46
    invoke-direct {p0}, Lcom/applovin/impl/s5;->m()Lcom/applovin/impl/c0;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 49
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_6
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->n()Lcom/applovin/impl/d0;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 55
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_7
    invoke-virtual {p0, v0}, Lcom/applovin/impl/q5;->a(Ljava/util/List;)Ljava/util/List;

    .line 60
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->e()V

    .line 62
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->o()Lcom/applovin/impl/e0;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_8
    invoke-virtual {p0, v1}, Lcom/applovin/impl/q5;->a(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_2

    .line 73
    :cond_9
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->o()Lcom/applovin/impl/e0;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 76
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_a
    invoke-virtual {p0, v0}, Lcom/applovin/impl/q5;->a(Ljava/util/List;)Ljava/util/List;

    .line 81
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->e()V

    .line 83
    invoke-direct {p0}, Lcom/applovin/impl/s5;->m()Lcom/applovin/impl/c0;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_b
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->n()Lcom/applovin/impl/d0;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 92
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_c
    invoke-virtual {p0, v1}, Lcom/applovin/impl/q5;->a(Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_2

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->s1()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 105
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->e()V

    .line 109
    :cond_e
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->j1()Lcom/applovin/impl/v7$c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/v7$c;->a:Lcom/applovin/impl/v7$c;

    if-ne v0, v1, :cond_f

    .line 111
    invoke-direct {p0}, Lcom/applovin/impl/s5;->j()V

    .line 112
    invoke-direct {p0}, Lcom/applovin/impl/s5;->k()V

    goto :goto_1

    .line 116
    :cond_f
    invoke-direct {p0}, Lcom/applovin/impl/s5;->l()V

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->s1()Z

    move-result v0

    if-nez v0, :cond_10

    .line 122
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->e()V

    .line 126
    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->j1()Lcom/applovin/impl/v7$c;

    move-result-object v0

    if-ne v0, v1, :cond_11

    .line 128
    invoke-direct {p0}, Lcom/applovin/impl/s5;->l()V

    goto :goto_2

    .line 132
    :cond_11
    invoke-direct {p0}, Lcom/applovin/impl/s5;->j()V

    .line 133
    invoke-direct {p0}, Lcom/applovin/impl/s5;->k()V

    goto :goto_2

    .line 139
    :cond_12
    iget-object v0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    sget-object v1, Lcom/applovin/impl/c5;->L0:Lcom/applovin/impl/c5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-direct {p0}, Lcom/applovin/impl/s5;->m()Lcom/applovin/impl/c0;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 145
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_13
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->o()Lcom/applovin/impl/e0;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 151
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_14
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->n()Lcom/applovin/impl/d0;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_15
    invoke-virtual {p0, v0}, Lcom/applovin/impl/q5;->a(Ljava/util/List;)Ljava/util/List;

    .line 163
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->e()V

    goto :goto_2

    .line 167
    :cond_16
    invoke-direct {p0}, Lcom/applovin/impl/s5;->j()V

    .line 168
    invoke-direct {p0}, Lcom/applovin/impl/s5;->l()V

    .line 169
    invoke-direct {p0}, Lcom/applovin/impl/s5;->k()V

    .line 171
    invoke-virtual {p0}, Lcom/applovin/impl/s5;->e()V

    .line 175
    :goto_2
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v1, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished caching VAST ad #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_17
    iget-object v0, p0, Lcom/applovin/impl/s5;->r:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->t1()V

    .line 178
    invoke-virtual {p0}, Lcom/applovin/impl/q5;->h()V

    return-void
.end method
