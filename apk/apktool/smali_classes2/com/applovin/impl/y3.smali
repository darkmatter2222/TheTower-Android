.class public final Lcom/applovin/impl/y3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/util/HashMap;

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/util/HashMap;

.field private static final g:Ljava/lang/Object;

.field private static final h:Ljava/util/HashMap;

.field private static final i:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Lorg/json/JSONObject;

.field private final c:Lorg/json/JSONObject;


# direct methods
.method public static synthetic $r8$lambda$0mXP1l-ARJCGaK-_2UH-pQyAqAQ(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0}, Lcom/applovin/impl/y3;->a(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KbiQLvvJp0FUVYuoRWERrPDqVDY(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1}, Lcom/applovin/impl/y3;->a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/applovin/impl/y3;->d:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/y3;->e:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/applovin/impl/y3;->f:Ljava/util/HashMap;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/y3;->g:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/applovin/impl/y3;->h:Ljava/util/HashMap;

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/y3;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    .line 4
    sget-object p1, Lcom/applovin/impl/v3;->I8:Lcom/applovin/impl/c5;

    invoke-direct {p0, p1}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/c5;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/y3;->b:Lorg/json/JSONObject;

    .line 5
    sget-object p1, Lcom/applovin/impl/v3;->H8:Lcom/applovin/impl/c5;

    invoke-direct {p0, p1}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/c5;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/y3;->c:Lorg/json/JSONObject;

    .line 7
    sget-object p1, Lcom/applovin/impl/e5;->K:Lcom/applovin/impl/e5;

    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/f5;->a(Lcom/applovin/impl/e5;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/applovin/impl/x3$a;->a:Lcom/applovin/impl/x3$a;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/y3;->a(Ljava/lang/String;Lcom/applovin/impl/x3$a;)V

    .line 10
    sget-object p1, Lcom/applovin/impl/e5;->L:Lcom/applovin/impl/e5;

    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/applovin/impl/f5;->a(Lcom/applovin/impl/e5;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/applovin/impl/x3$a;->b:Lcom/applovin/impl/x3$a;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/y3;->a(Ljava/lang/String;Lcom/applovin/impl/x3$a;)V

    return-void
.end method

.method private static synthetic a(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    const-wide/16 v0, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    return-object p0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 163
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6

    .line 107
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 111
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 112
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 113
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 115
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/applovin/impl/w3;

    .line 116
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 119
    invoke-virtual {v5}, Lcom/applovin/impl/w3;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 123
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/applovin/impl/x3$a;)Ljava/util/HashMap;
    .locals 1

    .line 63
    sget-object v0, Lcom/applovin/impl/x3$a;->a:Lcom/applovin/impl/x3$a;

    if-ne p1, v0, :cond_0

    .line 65
    sget-object p1, Lcom/applovin/impl/y3;->d:Ljava/util/HashMap;

    return-object p1

    .line 67
    :cond_0
    sget-object v0, Lcom/applovin/impl/x3$a;->b:Lcom/applovin/impl/x3$a;

    if-ne p1, v0, :cond_1

    .line 69
    sget-object p1, Lcom/applovin/impl/y3;->f:Ljava/util/HashMap;

    return-object p1

    .line 73
    :cond_1
    sget-object p1, Lcom/applovin/impl/y3;->h:Ljava/util/HashMap;

    return-object p1
.end method

.method private a(Lcom/applovin/impl/x3;)Ljava/util/HashMap;
    .locals 5

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/applovin/impl/x3;->a()Lcom/applovin/impl/x3$a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/x3$a;)Ljava/util/HashMap;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/applovin/impl/x3;->a()Lcom/applovin/impl/x3$a;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/x3$a;)Ljava/lang/Object;

    move-result-object p1

    .line 91
    monitor-enter p1

    .line 93
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 96
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 97
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    sget-object v4, Lcom/applovin/impl/w3$a;->c:Lcom/applovin/impl/w3$a;

    invoke-virtual {v4}, Lcom/applovin/impl/w3$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 100
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 102
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_1
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3$a;Lcom/applovin/impl/w3$a;)Ljava/util/Map;
    .locals 8

    .line 8
    invoke-direct {p0, p2}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/x3$a;)Ljava/util/HashMap;

    move-result-object v0

    .line 9
    invoke-direct {p0, p2}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/x3$a;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 12
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 17
    invoke-virtual {p3}, Lcom/applovin/impl/w3$a;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_0

    .line 18
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 20
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 22
    sget-object v6, Lcom/applovin/impl/x3$a;->c:Lcom/applovin/impl/x3$a;

    if-ne p2, v6, :cond_1

    .line 24
    invoke-static {v4}, Lcom/applovin/impl/n3;->a(Ljava/lang/String;)Lcom/applovin/impl/n3;

    move-result-object v4

    .line 26
    invoke-virtual {v4}, Lcom/applovin/impl/n3;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 35
    :cond_2
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/applovin/impl/c5;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->jsonObjectFromJsonString(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/applovin/impl/u3;Ljava/util/Map;)V
    .locals 4

    .line 36
    invoke-virtual {p1}, Lcom/applovin/impl/u3;->c()Lcom/applovin/impl/n3;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/applovin/impl/n3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    .line 39
    iget-object v0, p0, Lcom/applovin/impl/y3;->c:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInteger(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 43
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 45
    invoke-static {v3}, Lcom/applovin/impl/n3;->a(Ljava/lang/String;)Lcom/applovin/impl/n3;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/applovin/impl/n3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v2, v1, :cond_3

    goto :goto_2

    .line 54
    :cond_3
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 55
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v2, v1, :cond_5

    .line 57
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/applovin/impl/n3;->a(Ljava/lang/String;)Lcom/applovin/impl/n3;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/applovin/impl/n3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 62
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/x3$a;)V
    .locals 6

    .line 127
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-direct {p0, p2}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/x3$a;)Ljava/util/HashMap;

    move-result-object v0

    .line 130
    invoke-direct {p0, p2}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/x3$a;)Ljava/lang/Object;

    move-result-object p2

    .line 132
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->toStringObjectMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 134
    monitor-enter p2

    .line 136
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 138
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 143
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/applovin/impl/w3;->a(Ljava/lang/String;)Lcom/applovin/impl/w3;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 148
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 149
    invoke-direct {p0, v4}, Lcom/applovin/impl/y3;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    :cond_3
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 157
    sget-object v4, Lcom/applovin/impl/w3$a;->c:Lcom/applovin/impl/w3$a;

    invoke-virtual {v4}, Lcom/applovin/impl/w3$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;Lcom/applovin/impl/w3$b;)Z
    .locals 2

    const-string v0, "MediationStatsManager"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string p2, "Failed to update stat, no stat provided"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    if-nez p2, :cond_3

    .line 80
    iget-object p1, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string p2, "Failed to update stat, no dimension key provided"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    if-nez p3, :cond_5

    .line 86
    iget-object p1, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/y3;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string p2, "Failed to update stat, no stat updater provided"

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/applovin/impl/x3$a;)Ljava/lang/Object;
    .locals 1

    .line 47
    sget-object v0, Lcom/applovin/impl/x3$a;->a:Lcom/applovin/impl/x3$a;

    if-ne p1, v0, :cond_0

    .line 49
    sget-object p1, Lcom/applovin/impl/y3;->e:Ljava/lang/Object;

    return-object p1

    .line 51
    :cond_0
    sget-object v0, Lcom/applovin/impl/x3$a;->b:Lcom/applovin/impl/x3$a;

    if-ne p1, v0, :cond_1

    .line 53
    sget-object p1, Lcom/applovin/impl/y3;->g:Ljava/lang/Object;

    return-object p1

    .line 57
    :cond_1
    sget-object p1, Lcom/applovin/impl/y3;->i:Ljava/lang/Object;

    return-object p1
.end method

.method private b(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;Lcom/applovin/impl/w3$b;)Ljava/util/Map;
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;Lcom/applovin/impl/w3$b;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/applovin/impl/x3;->b()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/applovin/impl/x3;->a()Lcom/applovin/impl/x3$a;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/x3$a;)Ljava/util/HashMap;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Lcom/applovin/impl/x3;->a()Lcom/applovin/impl/x3$a;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/x3$a;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9
    monitor-enter v2

    .line 11
    :try_start_0
    instance-of v4, p2, Lcom/applovin/impl/u3;

    if-eqz v4, :cond_2

    .line 13
    move-object v4, p2

    check-cast v4, Lcom/applovin/impl/u3;

    invoke-direct {p0, v4, v1}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/u3;Ljava/util/Map;)V

    .line 17
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-nez v4, :cond_3

    .line 20
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 21
    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_3
    invoke-virtual {p1}, Lcom/applovin/impl/w3;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/w3$a;

    .line 28
    invoke-virtual {v1}, Lcom/applovin/impl/w3$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    if-nez v5, :cond_4

    .line 32
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 33
    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_4
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p3, v6}, Lcom/applovin/impl/w3$b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 38
    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    sget-object p3, Lcom/applovin/impl/w3$a;->c:Lcom/applovin/impl/w3$a;

    invoke-virtual {p1, p3}, Lcom/applovin/impl/w3;->a(Lcom/applovin/impl/w3$a;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 45
    invoke-direct {p0, p2}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/x3;)V

    :cond_6
    return-object v3

    :catchall_0
    move-exception p1

    .line 46
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(Lcom/applovin/impl/x3;)V
    .locals 2

    .line 66
    invoke-virtual {p1}, Lcom/applovin/impl/x3;->a()Lcom/applovin/impl/x3$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/y3;->c(Lcom/applovin/impl/x3$a;)Lcom/applovin/impl/e5;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/x3;)Ljava/util/HashMap;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/applovin/impl/y3;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/applovin/impl/f5;->b(Lcom/applovin/impl/e5;Ljava/lang/Object;Landroid/content/Context;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;)Z
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/applovin/impl/y3;->b:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 59
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {p2}, Lcom/applovin/impl/x3;->a()Lcom/applovin/impl/x3$a;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/applovin/impl/y3;->b:Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v2, v1, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/applovin/impl/w3;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lorg/json/JSONArray;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private c(Lcom/applovin/impl/x3$a;)Lcom/applovin/impl/e5;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/x3$a;->a:Lcom/applovin/impl/x3$a;

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/applovin/impl/e5;->K:Lcom/applovin/impl/e5;

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/x3$a;->b:Lcom/applovin/impl/x3$a;

    if-ne p1, v0, :cond_1

    .line 7
    sget-object p1, Lcom/applovin/impl/e5;->L:Lcom/applovin/impl/e5;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public a(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3$a;)Ljava/util/Map;
    .locals 1

    .line 7
    sget-object v0, Lcom/applovin/impl/w3$a;->b:Lcom/applovin/impl/w3$a;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y3;->a(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3$a;Lcom/applovin/impl/w3$a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;)Ljava/util/Map;
    .locals 1

    .line 3
    new-instance v0, Lcom/applovin/impl/y3$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/applovin/impl/y3$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;Lcom/applovin/impl/w3$b;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;Ljava/lang/Long;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/applovin/impl/y3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/applovin/impl/y3$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Long;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/y3;->b(Lcom/applovin/impl/w3;Lcom/applovin/impl/x3;Lcom/applovin/impl/w3$b;)Ljava/util/Map;

    return-void
.end method
