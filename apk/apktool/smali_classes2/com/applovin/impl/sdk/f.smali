.class public Lcom/applovin/impl/sdk/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lcom/applovin/impl/sdk/p;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/l;

    .line 3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/impl/sdk/p;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->d:Ljava/util/Map;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->e:Ljava/util/Map;

    .line 7
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    .line 10
    invoke-static {}, Lcom/applovin/impl/u;->a()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/u;

    .line 12
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->d:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/r;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/r;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Ljava/util/Map;

    new-instance v2, Lcom/applovin/impl/sdk/r;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/r;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/r;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/applovin/impl/sdk/r;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/r;-><init>()V

    .line 13
    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->e:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->b(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/r;->b()I

    move-result v2

    if-lez v2, :cond_0

    .line 6
    monitor-exit v0

    return-object v1

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->d(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/r;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/applovin/impl/sdk/r;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/r;-><init>()V

    .line 7
    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->c(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/r;->a()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V
    .locals 5

    const-string v0, "Ad enqueued: "

    .line 1
    iget-object v1, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/u;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/f;->d(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object v2

    .line 4
    invoke-virtual {v2, p1}, Lcom/applovin/impl/sdk/r;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V

    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/impl/sdk/p;

    const-string v3, "AdPreloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/u;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/f;->c(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object v1

    .line 4
    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/r;->b(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->d(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/r;->b()I

    move-result v2

    if-lez v2, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->b(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/r;->a()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/r;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V

    .line 12
    new-instance v1, Lcom/applovin/impl/sdk/ad/c;

    iget-object v2, p0, Lcom/applovin/impl/sdk/f;->a:Lcom/applovin/impl/sdk/l;

    invoke-direct {v1, p1, v2}, Lcom/applovin/impl/sdk/ad/c;-><init>(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/l;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 23
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/impl/sdk/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrieved ad of zone "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AdPreloadManager"

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 27
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->b:Lcom/applovin/impl/sdk/p;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to retrieve ad of zone "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "..."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AdPreloadManager"

    invoke-virtual {v0, v2, p1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/AppLovinAdBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/f;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/f;->c(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/r;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/r;->d()Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
