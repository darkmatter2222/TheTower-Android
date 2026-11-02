.class public Lcom/applovin/impl/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/sdk/d;

.field private final c:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$-FxjE4vdzSvo0SXiMNmHyN9Hp4U(Lcom/applovin/impl/sdk/e;Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_JgC93v_SIeyxayiMBRBtNi5mcM(Lcom/applovin/impl/sdk/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->d()V

    return-void
.end method

.method public static synthetic $r8$lambda$hxomZOfFyJytJDQEAY-vp7ottLo(Lcom/applovin/impl/sdk/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->c()V

    return-void
.end method

.method public static synthetic $r8$lambda$jNwSUbAXfl7n-to43yguQF2BZr0(Lcom/applovin/impl/sdk/e;Lcom/applovin/impl/sdk/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->c(Lcom/applovin/impl/sdk/d$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    .line 6
    iput-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    .line 7
    new-instance v0, Lcom/applovin/impl/sdk/d;

    invoke-direct {v0, p1}, Lcom/applovin/impl/sdk/d;-><init>(Lcom/applovin/impl/sdk/l;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/d$a;
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/d$a;

    .line 31
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d$a;->f()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/d$a;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/e;->b(Lcom/applovin/impl/sdk/d$a;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/d;->a(Ljava/util/List;)V

    .line 56
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private a(Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/d$a;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "AdPersistenceManager"

    const-string v2, "Loading persisted ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    invoke-interface {p1, p2}, Lcom/applovin/impl/sdk/e$a;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 49
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    invoke-virtual {p1, p3}, Lcom/applovin/impl/sdk/d;->b(Lcom/applovin/impl/sdk/d$a;)V

    .line 51
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object p3, Lcom/applovin/impl/h2;->b0:Lcom/applovin/impl/h2;

    invoke-virtual {p1, p3, p2}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;)V
    .locals 1

    if-eqz p4, :cond_1

    .line 17
    invoke-static {p5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0, p1, p4, p2}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/d$a;)V

    return-void

    .line 24
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/u;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/u;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    const-string v1, "AdPersistenceManager"

    invoke-virtual {v0, v1, p4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 42
    invoke-interface {p1, v0}, Lcom/applovin/impl/sdk/e$a;->a(Lcom/applovin/impl/sdk/ad/b;)V

    .line 43
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/d;->b(Lcom/applovin/impl/sdk/d$a;)V

    .line 45
    new-instance p1, Lcom/applovin/impl/sdk/AppLovinError;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p4}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object p2

    sget-object p4, Lcom/applovin/impl/h2;->c0:Lcom/applovin/impl/h2;

    invoke-virtual {p2, p4, p3, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/d$a;)Z
    .locals 4

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/c5;->h1:Lcom/applovin/impl/c5;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d$a;->c()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/applovin/impl/sdk/d$a;)Z
    .locals 4

    .line 6
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/d$a;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/l;->o()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic c()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->e()V

    .line 10
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->a()V

    return-void
.end method

.method private synthetic c(Lcom/applovin/impl/sdk/d$a;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string v0, "AdPersistenceManager"

    const-string v1, "Ad failed to persist"

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    sget-object v0, Lcom/applovin/impl/c5;->f1:Lcom/applovin/impl/c5;

    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->h()V

    :cond_1
    return-void
.end method

.method private synthetic d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->r0()Lcom/applovin/impl/f5;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/e5;->E:Lcom/applovin/impl/e5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/f5;->b(Lcom/applovin/impl/e5;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/d;->a()V

    return-void
.end method

.method private d(Lcom/applovin/impl/sdk/d$a;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/d;->b(Lcom/applovin/impl/sdk/d$a;)V

    return-void
.end method

.method private e()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->r0()Lcom/applovin/impl/f5;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/e5;->E:Lcom/applovin/impl/e5;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/f5;->a(Lcom/applovin/impl/e5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toJsonArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 9
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 10
    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/d$a;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/d$a;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/d$a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/d$a;->c()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 15
    iget-object v4, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object v4

    sget-object v5, Lcom/applovin/impl/h2;->d0:Lcom/applovin/impl/h2;

    const-string v6, "details"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ttl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v6, v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 17
    invoke-virtual {v4, v5, v2}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 26
    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v3

    const-string v4, "AdPersistenceManager"

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v3

    const-string v5, "Failed to deserialize persisted ad file path"

    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    :cond_3
    iget-object v3, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v3

    const-string v5, "deserializePersistedAdFilePath"

    invoke-virtual {v3, v4, v5, v2}, Lcom/applovin/impl/s1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method private f()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/x6;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    new-instance v3, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda3;-><init>(Lcom/applovin/impl/sdk/e;)V

    const-string v4, "loadPersistedAdFilesQueueAndCleanupAsync"

    invoke-direct {v1, v2, v4, v3}, Lcom/applovin/impl/x6;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/i6$b;->e:Lcom/applovin/impl/i6$b;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    return-void
.end method

.method private h()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/d$a;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 12
    :try_start_2
    iget-object v4, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v4

    const-string v5, "AdPersistenceManager"

    const-string v6, "Failed to serialize persisted ad file path"

    invoke-virtual {v4, v5, v6, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :cond_0
    iget-object v4, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object v4

    const-string v5, "AdPersistenceManager"

    const-string v6, "serializePersistedAdFilePath"

    invoke-virtual {v4, v5, v6, v3}, Lcom/applovin/impl/s1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 17
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 20
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->r0()Lcom/applovin/impl/f5;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/e5;->E:Lcom/applovin/impl/e5;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/f5;->b(Lcom/applovin/impl/e5;Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v0

    .line 21
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/d$a;->a(Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/impl/sdk/d$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/e;->d(Lcom/applovin/impl/sdk/d$a;)V

    return-void
.end method

.method public a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/e$a;)V
    .locals 3

    if-nez p2, :cond_1

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    const-string p2, "Persisted ad could not be retrieved: listener is null"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string v0, "AdPersistenceManager"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/applovin/impl/m1;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 8
    const-string p1, "Persisted ad could not be retrieved: adZone is null"

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/u;Ljava/lang/String;)V

    return-void

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/h2;->a0:Lcom/applovin/impl/h2;

    invoke-virtual {v1, v2, p1, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 15
    invoke-virtual {p1}, Lcom/applovin/impl/u;->g()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/sdk/d$a;

    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    new-instance v2, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/sdk/e;Lcom/applovin/impl/sdk/e$a;Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/u;)V

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/d;->a(Lcom/applovin/impl/sdk/d$a;Lcom/applovin/impl/sdk/d$c;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->f()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.applovin.application_paused"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public b(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->g()Lcom/applovin/impl/f;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->X:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/h2;Lcom/applovin/impl/sdk/ad/b;)V

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->b:Lcom/applovin/impl/sdk/d;

    new-instance v1, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/sdk/e;)V

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/d;->b(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/d$b;)V

    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->s0()Lcom/applovin/impl/i6;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/x6;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e;->a:Lcom/applovin/impl/sdk/l;

    new-instance v3, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/e$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/impl/sdk/e;)V

    const-string v4, "resetManagerState"

    invoke-direct {v1, v2, v4, v3}, Lcom/applovin/impl/x6;-><init>(Lcom/applovin/impl/sdk/l;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object v2, Lcom/applovin/impl/i6$b;->e:Lcom/applovin/impl/i6$b;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/i6;->a(Lcom/applovin/impl/n5;Lcom/applovin/impl/i6$b;)V

    return-void
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e;->h()V

    return-void
.end method
