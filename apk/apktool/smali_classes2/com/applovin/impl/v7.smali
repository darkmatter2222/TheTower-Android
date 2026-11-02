.class public Lcom/applovin/impl/v7;
.super Lcom/applovin/impl/sdk/ad/b;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/v4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/v7$b;,
        Lcom/applovin/impl/v7$c;,
        Lcom/applovin/impl/v7$d;
    }
.end annotation


# instance fields
.field private final A:Ljava/util/Set;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/applovin/impl/e8;

.field private final t:J

.field private final u:Lcom/applovin/impl/i8;

.field private final v:Lcom/applovin/impl/y7;

.field private final w:Ljava/lang/String;

.field private final x:Lcom/applovin/impl/x7;

.field private final y:Lcom/applovin/impl/q4;

.field private final z:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$8D6VT3d3Zu5S1RJ-gcsrFZ-vHuE(Lcom/applovin/impl/v7;Lcom/applovin/impl/m5;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/v7;->o(Lcom/applovin/impl/m5;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Lcom/applovin/impl/v7$b;)V
    .locals 3

    .line 2
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/v7$b;->b(Lcom/applovin/impl/v7$b;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/v7$b;->e(Lcom/applovin/impl/v7$b;)Lcom/applovin/impl/sdk/l;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/ad/b;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)V

    .line 4
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->f(Lcom/applovin/impl/v7$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->q:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->g(Lcom/applovin/impl/v7$b;)Lcom/applovin/impl/e8;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    .line 6
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->h(Lcom/applovin/impl/v7$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->r:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->i(Lcom/applovin/impl/v7$b;)Lcom/applovin/impl/i8;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    .line 8
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->j(Lcom/applovin/impl/v7$b;)Lcom/applovin/impl/y7;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    .line 9
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->k(Lcom/applovin/impl/v7$b;)Lcom/applovin/impl/x7;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    .line 10
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->l(Lcom/applovin/impl/v7$b;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    .line 11
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->c(Lcom/applovin/impl/v7$b;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    .line 12
    new-instance v0, Lcom/applovin/impl/q4;

    invoke-direct {v0, p0}, Lcom/applovin/impl/q4;-><init>(Lcom/applovin/impl/v7;)V

    iput-object v0, p0, Lcom/applovin/impl/v7;->y:Lcom/applovin/impl/q4;

    .line 14
    invoke-virtual {p0}, Lcom/applovin/impl/v7;->n0()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/v7;->w:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/applovin/impl/v7;->w:Ljava/lang/String;

    .line 24
    :goto_0
    invoke-static {p1}, Lcom/applovin/impl/v7$b;->d(Lcom/applovin/impl/v7$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/v7;->t:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/v7$b;Lcom/applovin/impl/v7$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/v7;-><init>(Lcom/applovin/impl/v7$b;)V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/v7;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 70
    :cond_0
    new-instance v1, Lcom/applovin/impl/v7$b;

    invoke-direct {v1}, Lcom/applovin/impl/v7$b;-><init>()V

    .line 72
    const-string v2, "full_response"

    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 74
    :cond_1
    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->b(Lcom/applovin/impl/v7$b;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 76
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "ads"

    invoke-static {v2, v4, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 77
    invoke-static {v2, v3, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 79
    :cond_2
    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 81
    invoke-static {v1, p1}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/sdk/l;

    .line 83
    const-string v2, "created_at_millis"

    const-wide/16 v4, 0x0

    invoke-static {p0, v2, v4, v5}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;J)J

    .line 84
    const-string v2, "title"

    const-string v4, ""

    invoke-static {p0, v2, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    const-string v2, "ad_description"

    invoke-static {p0, v2, v4}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->b(Lcom/applovin/impl/v7$b;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    const-string v2, "system_info"

    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 88
    invoke-static {v2, p1}, Lcom/applovin/impl/e8;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/e8;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Lcom/applovin/impl/e8;)Lcom/applovin/impl/e8;

    .line 90
    const-string v2, "video_creative"

    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 91
    invoke-static {v2, p1}, Lcom/applovin/impl/i8;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/i8;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Lcom/applovin/impl/i8;)Lcom/applovin/impl/i8;

    .line 93
    const-string v2, "companion_ad"

    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 94
    invoke-static {v2, p1}, Lcom/applovin/impl/y7;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/y7;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Lcom/applovin/impl/y7;)Lcom/applovin/impl/y7;

    .line 96
    const-string v2, "ad_verifications"

    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 97
    invoke-static {v2, p1}, Lcom/applovin/impl/x7;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/x7;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Lcom/applovin/impl/x7;)Lcom/applovin/impl/x7;

    .line 99
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "impression_trackers"

    invoke-static {p0, v4, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 100
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    move v5, v3

    .line 101
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 103
    invoke-static {v2, v5, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v6

    .line 104
    invoke-static {v6, p1}, Lcom/applovin/impl/f8;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/f8;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 107
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 110
    :cond_4
    invoke-static {v1, v4}, Lcom/applovin/impl/v7$b;->b(Lcom/applovin/impl/v7$b;Ljava/util/Set;)Ljava/util/Set;

    .line 112
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v4, "error_trackers"

    invoke-static {p0, v4, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    .line 113
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 114
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 116
    invoke-static {v2, v3, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 117
    invoke-static {v5, p1}, Lcom/applovin/impl/f8;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/f8;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 120
    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    :cond_6
    invoke-static {v1, v4}, Lcom/applovin/impl/v7$b;->a(Lcom/applovin/impl/v7$b;Ljava/util/Set;)Ljava/util/Set;

    .line 125
    new-instance p1, Lcom/applovin/impl/v7;

    invoke-direct {p1, v1}, Lcom/applovin/impl/v7;-><init>(Lcom/applovin/impl/v7$b;)V

    .line 130
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cached_ad_html_resources_urls"

    invoke-static {p0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    .line 131
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    invoke-static {p0, v2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    .line 139
    :cond_8
    invoke-virtual {p1, v2, v3}, Lcom/applovin/impl/sdk/ad/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    return-object p1
.end method

.method private a(Lcom/applovin/impl/v7$c;[Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    if-eqz p2, :cond_4

    .line 40
    array-length v0, p2

    if-lez v0, :cond_4

    .line 43
    sget-object v0, Lcom/applovin/impl/v7$c;->b:Lcom/applovin/impl/v7$c;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/applovin/impl/i8;->e()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 47
    :cond_0
    sget-object v0, Lcom/applovin/impl/v7$c;->a:Lcom/applovin/impl/v7$c;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/applovin/impl/y7;->d()Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 52
    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_3

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 57
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    .line 59
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 69
    :cond_4
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method

.method private h1()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/y7;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method private k1()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "vimp_url"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getClCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{CLCODE}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private synthetic o(Lcom/applovin/impl/m5;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "vimp_urls"

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/m5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getClCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/applovin/impl/v7;->k1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/b;->L()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/b;->N0()Z

    move-result v7

    iget-object v8, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/l;

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Lcom/applovin/impl/u7;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZLcom/applovin/impl/sdk/l;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private o1()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/i8;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 6
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public B()Ljava/util/List;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->synchronizedAdObject:Lcom/applovin/impl/m5;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/applovin/impl/v7$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/applovin/impl/v7$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/v7;)V

    invoke-virtual {v0, v1}, Lcom/applovin/impl/m5;->a(Landroidx/arch/core/util/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 12
    :try_start_0
    const-string v0, "vimp_urls"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getJsonObjectFromAdObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 13
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getClCode()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/applovin/impl/v7;->k1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/b;->L()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/b;->N0()Z

    move-result v8

    iget-object v9, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/l;

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Lcom/applovin/impl/u7;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;ZLcom/applovin/impl/sdk/l;)Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    .line 14
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public C0()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "video_clickable"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/v7;->f1()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public D0()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "vast_is_streaming"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public G0()V
    .locals 0

    return-void
.end method

.method public K()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->w:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/v7;->a(Lcom/applovin/impl/v7$d;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/applovin/impl/v7$d;[Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    const-string v1, "VastAd"

    const-string v2, "\' and events \'"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrieving trackers of type \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/applovin/impl/v7$d;->a:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    return-object p1

    .line 8
    :cond_1
    sget-object v0, Lcom/applovin/impl/v7$d;->b:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_2

    .line 10
    invoke-direct {p0}, Lcom/applovin/impl/v7;->o1()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 12
    :cond_2
    sget-object v0, Lcom/applovin/impl/v7$d;->c:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/applovin/impl/v7;->h1()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    sget-object v0, Lcom/applovin/impl/v7$d;->d:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_4

    .line 18
    sget-object p1, Lcom/applovin/impl/v7$c;->b:Lcom/applovin/impl/v7$c;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/v7;->a(Lcom/applovin/impl/v7$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    sget-object v0, Lcom/applovin/impl/v7$d;->e:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_5

    .line 22
    sget-object p1, Lcom/applovin/impl/v7$c;->a:Lcom/applovin/impl/v7$c;

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/v7;->a(Lcom/applovin/impl/v7$c;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 24
    :cond_5
    sget-object v0, Lcom/applovin/impl/v7$d;->g:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/applovin/impl/v7;->l1()Lcom/applovin/impl/b8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/b8;->b()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 28
    :cond_6
    sget-object v0, Lcom/applovin/impl/v7$d;->f:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_7

    .line 30
    invoke-virtual {p0}, Lcom/applovin/impl/v7;->l1()Lcom/applovin/impl/b8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/b8;->f()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 32
    :cond_7
    sget-object v0, Lcom/applovin/impl/v7$d;->h:Lcom/applovin/impl/v7$d;

    if-ne p1, v0, :cond_8

    .line 34
    iget-object p1, p0, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    return-object p1

    .line 37
    :cond_8
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to retrieve trackers of invalid type \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_9
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p1
.end method

.method public a()Lorg/json/JSONObject;
    .locals 5

    .line 140
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    iget-wide v1, p0, Lcom/applovin/impl/v7;->t:J

    const-string v3, "created_at_millis"

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 145
    iget-object v1, p0, Lcom/applovin/impl/v7;->q:Ljava/lang/String;

    const-string v2, "title"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/applovin/impl/v7;->r:Ljava/lang/String;

    const-string v2, "ad_description"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/applovin/impl/e8;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "system_info"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {v1}, Lcom/applovin/impl/i8;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "video_creative"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v1}, Lcom/applovin/impl/y7;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "companion_ad"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {v1}, Lcom/applovin/impl/x7;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ad_verifications"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 168
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    if-eqz v1, :cond_5

    .line 170
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 171
    iget-object v2, p0, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/f8;

    .line 173
    invoke-virtual {v3}, Lcom/applovin/impl/f8;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 175
    :cond_4
    const-string v2, "impression_trackers"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJsonArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 178
    :cond_5
    iget-object v1, p0, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    if-eqz v1, :cond_7

    .line 180
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 181
    iget-object v2, p0, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/f8;

    .line 183
    invoke-virtual {v3}, Lcom/applovin/impl/f8;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 185
    :cond_6
    const-string v2, "error_trackers"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJsonArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 189
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 190
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ad/b;->m()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 192
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1, v4, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 195
    :cond_8
    const-string v2, "cached_ad_html_resources_urls"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 197
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->synchronizedFullResponse:Lcom/applovin/impl/m5;

    if-eqz v1, :cond_9

    .line 199
    invoke-virtual {v1}, Lcom/applovin/impl/m5;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "full_response"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0

    .line 203
    :cond_9
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    const-string v2, "full_response"

    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 206
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->synchronizedAdObject:Lcom/applovin/impl/m5;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "html_template"

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/m5;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    const-string v2, "html_template"

    invoke-static {v1, v2, p1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e0()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v7;->f1()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public e1()Lcom/applovin/impl/x7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/applovin/impl/v7;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 4
    :cond_2
    check-cast p1, Lcom/applovin/impl/v7;

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/v7;->q:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/applovin/impl/v7;->q:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/applovin/impl/v7;->q:Ljava/lang/String;

    if-eqz v1, :cond_4

    :goto_0
    return v2

    .line 7
    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/v7;->r:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/applovin/impl/v7;->r:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/applovin/impl/v7;->r:Ljava/lang/String;

    if-eqz v1, :cond_6

    :goto_1
    return v2

    .line 9
    :cond_6
    iget-object v1, p0, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/e8;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    if-eqz v1, :cond_8

    :goto_2
    return v2

    .line 11
    :cond_8
    iget-object v1, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/i8;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v1, :cond_a

    :goto_3
    return v2

    .line 13
    :cond_a
    iget-object v1, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    if-eqz v1, :cond_b

    iget-object v3, p1, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/y7;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_b
    iget-object v1, p1, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    if-eqz v1, :cond_c

    :goto_4
    return v2

    .line 15
    :cond_c
    iget-object v1, p0, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    if-eqz v1, :cond_d

    iget-object v3, p1, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/x7;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_d
    iget-object v1, p1, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    if-eqz v1, :cond_e

    :goto_5
    return v2

    .line 17
    :cond_e
    iget-object v1, p0, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    if-eqz v1, :cond_f

    iget-object v3, p1, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_6

    :cond_f
    iget-object v1, p1, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    if-eqz v1, :cond_10

    :goto_6
    return v2

    .line 19
    :cond_10
    iget-object v1, p0, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    iget-object p1, p1, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    if-eqz v1, :cond_11

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    if-nez p1, :cond_12

    return v0

    :cond_12
    return v2
.end method

.method public f1()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/i8;->c()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g1()Lcom/applovin/impl/y7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    return-object v0
.end method

.method public bridge synthetic getAdEventTracker()Lcom/applovin/impl/k4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    return-object v0
.end method

.method public getAdEventTracker()Lcom/applovin/impl/q4;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/v7;->y:Lcom/applovin/impl/q4;

    return-object v0
.end method

.method public getCreatedAtMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/v7;->t:J

    return-wide v0
.end method

.method public getOriginalFullResponse()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hasVideoUrl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/i8;->g()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/v7;->q:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/v7;->r:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/applovin/impl/e8;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/applovin/impl/i8;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/applovin/impl/y7;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/applovin/impl/x7;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-object v1, p0, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    return v0
.end method

.method public i1()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "html_template"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOpenMeasurementEnabled()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "omsdk_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j1()Lcom/applovin/impl/v7$c;
    .locals 2

    .line 1
    const-string v0, "vast_first_caching_operation"

    const-string v1, "companion_ad"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/applovin/impl/v7$c;->a:Lcom/applovin/impl/v7$c;

    return-object v0

    .line 8
    :cond_0
    sget-object v0, Lcom/applovin/impl/v7$c;->b:Lcom/applovin/impl/v7$c;

    return-object v0
.end method

.method public l1()Lcom/applovin/impl/b8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/i8;->f()Lcom/applovin/impl/b8;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public m1()J
    .locals 3

    .line 1
    const-string v0, "real_close_delay"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n0()Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v7;->q1()Lcom/applovin/impl/j8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/applovin/impl/j8;->e()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n1()Lcom/applovin/impl/e8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    return-object v0
.end method

.method public p1()Lcom/applovin/impl/i8;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    return-object v0
.end method

.method public q1()Lcom/applovin/impl/j8;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lcom/applovin/impl/sdk/l;

    invoke-static {v0}, Lcom/applovin/impl/s0;->f(Lcom/applovin/impl/sdk/l;)Ljava/lang/Long;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/i8;->a(J)Lcom/applovin/impl/j8;

    move-result-object v0

    return-object v0
.end method

.method public r1()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/v7;->l1()Lcom/applovin/impl/b8;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s1()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "vast_immediate_ad_load"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public t1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->synchronizedAdObject:Lcom/applovin/impl/m5;

    if-eqz v0, :cond_0

    .line 3
    const-string v1, "vast_is_streaming"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/m5;->c(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lorg/json/JSONObject;

    const-string v2, "vast_is_streaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastAd{title=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/v7;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', adDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v7;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', systemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v7;->s:Lcom/applovin/impl/e8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoCreative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v7;->u:Lcom/applovin/impl/i8;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", companionAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v7;->v:Lcom/applovin/impl/y7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adVerifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v7;->x:Lcom/applovin/impl/x7;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", impressionTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v7;->z:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorTrackers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v7;->A:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u1()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "cache_companion_ad"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public v1()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "cache_video"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public w1()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "vast_fire_click_trackers_on_html_clicks"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public x1()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "iopms"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public y1()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "iopmsfsr"

    invoke-virtual {p0, v1, v0}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public z0()Z
    .locals 2

    .line 1
    const-string v0, "is_persisted_ad"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromFullResponse(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
