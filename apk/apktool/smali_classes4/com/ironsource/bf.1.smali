.class Lcom/ironsource/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/Q8;
.implements Lcom/ironsource/Q8$a;


# static fields
.field private static final c:I = 0x1


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/ironsource/mediationsdk/IronSource$a;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/ironsource/ja;


# direct methods
.method constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    .line 6
    new-instance v0, Lcom/ironsource/ja;

    invoke-direct {v0}, Lcom/ironsource/ja;-><init>()V

    iput-object v0, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    .line 7
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource$a;->values()[Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    const/4 v4, 0x1

    .line 8
    invoke-direct {p0, v3, v4}, Lcom/ironsource/bf;->a(Lcom/ironsource/mediationsdk/IronSource$a;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/ironsource/mediationsdk/IronSource$a;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/ironsource/bf$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->c(I)V

    return-void

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->a(I)V

    return-void

    .line 16
    :cond_2
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->b(I)V

    return-void

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/ironsource/bf;->b:Lcom/ironsource/ja;

    invoke-virtual {p1, p2}, Lcom/ironsource/ja;->d(I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/ironsource/mediationsdk/IronSource$a;)I
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    .line 18
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/unity3d/mediation/a;->a(Lcom/unity3d/mediation/LevelPlay$AdFormat;)Lcom/ironsource/mediationsdk/IronSource$a;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/ironsource/bf;->a(Lcom/ironsource/mediationsdk/IronSource$a;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public declared-synchronized b(Lcom/ironsource/mediationsdk/IronSource$a;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/bf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ironsource/bf;->a(Lcom/ironsource/mediationsdk/IronSource$a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
