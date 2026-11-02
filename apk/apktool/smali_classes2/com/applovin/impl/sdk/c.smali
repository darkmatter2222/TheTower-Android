.class public Lcom/applovin/impl/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/h$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/util/List;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Set;

.field private final g:Ljava/util/Set;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->d:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->e:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->f:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/c;->g:Ljava/util/Set;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    .line 12
    iput-object p1, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/l;

    .line 14
    sget-object p1, Lcom/applovin/impl/sdk/h$c;->b:Lcom/applovin/impl/sdk/h$c;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p1, Lcom/applovin/impl/sdk/h$c;->c:Lcom/applovin/impl/sdk/h$c;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, Lcom/applovin/impl/sdk/h$c;->d:Lcom/applovin/impl/sdk/h$c;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object p1, Lcom/applovin/impl/sdk/h$c;->f:Lcom/applovin/impl/sdk/h$c;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object p1, Lcom/applovin/impl/sdk/h$c;->h:Lcom/applovin/impl/sdk/h$c;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object p1, Lcom/applovin/impl/sdk/h$c;->g:Lcom/applovin/impl/sdk/h$c;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b()Ljava/util/List;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applovin/impl/sdk/c;->d:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private b(Lcom/applovin/impl/sdk/h$b;)V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->c:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 33
    :try_start_0
    monitor-exit v0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/h$b;->b()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/h$b;->c()Lcom/applovin/impl/sdk/h$c;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/h$c;->g:Lcom/applovin/impl/sdk/h$c;

    if-ne v2, v3, :cond_1

    .line 38
    iget-object p1, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v0

    return-void

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v0

    return-void

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/c;->a()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/sdk/c;->b()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/sdk/c$a;

    .line 5
    invoke-interface {v2, v0}, Lcom/applovin/impl/sdk/c$a;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v2, p0, Lcom/applovin/impl/sdk/c;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/sdk/h$b;

    .line 7
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/h$b;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/applovin/impl/sdk/c$a;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->e:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    if-nez p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->m()Lcom/applovin/impl/sdk/h;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->g:Ljava/util/Set;

    invoke-virtual {p1, p0, v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$d;Ljava/util/Set;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    .line 39
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/applovin/impl/sdk/h$b;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/c;->b(Lcom/applovin/impl/sdk/h$b;)V

    .line 13
    invoke-direct {p0}, Lcom/applovin/impl/sdk/c;->d()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    iget-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    if-nez p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->m()Lcom/applovin/impl/sdk/h;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->g:Ljava/util/Set;

    invoke-virtual {p1, p0, v1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$d;Ljava/util/Set;)V

    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    .line 24
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Lcom/applovin/impl/sdk/c$a;)V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->d:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 18
    iget-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->m()Lcom/applovin/impl/sdk/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$d;)V

    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    .line 23
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/c;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/c;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/c;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/applovin/impl/sdk/c;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->m()Lcom/applovin/impl/sdk/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/impl/sdk/h$d;)V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/applovin/impl/sdk/c;->h:Z

    .line 11
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
