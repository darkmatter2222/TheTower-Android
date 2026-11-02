.class public Lcom/applovin/impl/sdk/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/h$b;,
        Lcom/applovin/impl/sdk/h$c;,
        Lcom/applovin/impl/sdk/h$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/h;->d:Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/h;->a()V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/h$c;)Ljava/util/Set;
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/h;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 66
    invoke-static {p1}, Lcom/applovin/impl/m1;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    monitor-exit v0

    return-object p1

    .line 72
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/applovin/impl/sdk/h$b;Lcom/applovin/impl/sdk/h$c;)V
    .locals 1

    .line 75
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/h;->b(Lcom/applovin/impl/sdk/h$c;)Ljava/util/Set;

    move-result-object p2

    .line 76
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/sdk/h$d;

    .line 78
    invoke-interface {v0, p1}, Lcom/applovin/impl/sdk/h$d;->a(Lcom/applovin/impl/sdk/h$b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/h$c;)Ljava/util/Set;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$c;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/h$c;->values()[Lcom/applovin/impl/sdk/h$c;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 39
    iget-object v5, p0, Lcom/applovin/impl/sdk/h;->a:Ljava/util/Map;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/applovin/impl/c3;Lcom/applovin/impl/sdk/h$c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/applovin/impl/c3;->C()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/applovin/impl/sdk/h;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/h$b;

    if-nez v2, :cond_1

    .line 9
    sget-object v2, Lcom/applovin/impl/sdk/h$c;->g:Lcom/applovin/impl/sdk/h$c;

    if-ne p2, v2, :cond_0

    monitor-exit v0

    return-void

    .line 12
    :cond_0
    new-instance v2, Lcom/applovin/impl/sdk/h$b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/applovin/impl/sdk/h$b;-><init>(Lcom/applovin/impl/c3;Lcom/applovin/impl/sdk/h$c;Lcom/applovin/impl/sdk/h$a;)V

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/sdk/h;->c:Ljava/util/Map;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/h$b;->c()Lcom/applovin/impl/sdk/h$c;

    move-result-object p1

    if-ne p1, p2, :cond_2

    .line 18
    monitor-exit v0

    return-void

    .line 22
    :cond_2
    invoke-static {v2, p2}, Lcom/applovin/impl/sdk/h$b;->a(Lcom/applovin/impl/sdk/h$b;Lcom/applovin/impl/sdk/h$c;)V

    .line 26
    :goto_0
    sget-object p1, Lcom/applovin/impl/sdk/h$c;->g:Lcom/applovin/impl/sdk/h$c;

    if-ne p2, p1, :cond_3

    .line 28
    iget-object p1, p0, Lcom/applovin/impl/sdk/h;->c:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-direct {p0, v2, p2}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$b;Lcom/applovin/impl/sdk/h$c;)V

    return-void

    :catchall_0
    move-exception p1

    .line 33
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/applovin/impl/sdk/h$d;)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/h;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/h$c;

    .line 58
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$c;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/applovin/impl/sdk/h$d;Ljava/util/Set;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/applovin/impl/sdk/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/h$c;

    .line 49
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$c;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
