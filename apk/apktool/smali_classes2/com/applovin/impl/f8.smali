.class public Lcom/applovin/impl/f8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/v4;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/applovin/impl/f8;->e:J

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/applovin/impl/f8;->f:I

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/impl/z7;)I
    .locals 1

    .line 88
    const-string v0, "start"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 92
    :cond_0
    const-string v0, "firstQuartile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x19

    return p0

    .line 96
    :cond_1
    const-string v0, "midpoint"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x32

    return p0

    .line 100
    :cond_2
    const-string v0, "thirdQuartile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x4b

    return p0

    .line 104
    :cond_3
    const-string v0, "complete"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 106
    invoke-virtual {p1}, Lcom/applovin/impl/z7;->g()I

    move-result p0

    return p0

    :cond_4
    const/16 p0, 0x5f

    return p0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/applovin/impl/u8;Lcom/applovin/impl/z7;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/f8;
    .locals 11

    const-string v0, ":"

    const-string v1, "VastTracker"

    if-eqz p0, :cond_b

    if-eqz p2, :cond_a

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/applovin/impl/u8;->d()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p0

    const-string p1, "Unable to create tracker. Could not find URL."

    invoke-virtual {p0, v1, p1}, Lcom/applovin/impl/sdk/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2

    .line 8
    :cond_1
    new-instance v4, Lcom/applovin/impl/f8;

    invoke-direct {v4}, Lcom/applovin/impl/f8;-><init>()V

    .line 10
    iput-object v3, v4, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/applovin/impl/u8;->a()Ljava/util/Map;

    move-result-object v3

    const-string v5, "id"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lcom/applovin/impl/u8;->a()Ljava/util/Map;

    move-result-object v3

    const-string v5, "event"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v4, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    .line 13
    sget-object v3, Lcom/applovin/impl/c5;->w5:Lcom/applovin/impl/c5;

    invoke-virtual {p2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v4, Lcom/applovin/impl/f8;->d:Z

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p1}, Lcom/applovin/impl/z7;->b()Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "vast_fire_trackers_from_webview"

    iget-boolean v6, v4, Lcom/applovin/impl/f8;->d:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v4, Lcom/applovin/impl/f8;->d:Z

    .line 19
    :cond_2
    invoke-virtual {v4}, Lcom/applovin/impl/f8;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/applovin/impl/f8;->a(Ljava/lang/String;Lcom/applovin/impl/z7;)I

    move-result p1

    iput p1, v4, Lcom/applovin/impl/f8;->f:I

    .line 22
    invoke-virtual {p0}, Lcom/applovin/impl/u8;->a()Ljava/util/Map;

    move-result-object p0

    const-string p1, "offset"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 23
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 28
    const-string p1, "%"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/StringUtils;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v4, Lcom/applovin/impl/f8;->f:I

    return-object v4

    .line 34
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 36
    invoke-static {p0, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->explode(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    add-int/lit8 v0, p1, -0x1

    const-wide/16 v5, 0x0

    move v3, v0

    :goto_0
    if-ltz v3, :cond_7

    .line 46
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 47
    invoke-static {v7}, Lcom/applovin/impl/sdk/utils/StringUtils;->isNumeric(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v3, v0, :cond_4

    int-to-long v7, v7

    :goto_1
    add-long/2addr v5, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v8, p1, -0x2

    if-ne v3, v8, :cond_5

    .line 59
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    goto :goto_1

    :cond_5
    add-int/lit8 v8, p1, -0x3

    if-ne v3, v8, :cond_6

    .line 64
    sget-object v8, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v9, v7

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v7

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 69
    :cond_7
    iput-wide v5, v4, Lcom/applovin/impl/f8;->e:J

    const/4 p0, -0x1

    .line 70
    iput p0, v4, Lcom/applovin/impl/f8;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    return-object v4

    :catchall_0
    move-exception p0

    .line 79
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    const-string v0, "Error occurred while initializing"

    invoke-virtual {p1, v1, v0, p0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    :cond_9
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->E()Lcom/applovin/impl/s1;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Lcom/applovin/impl/s1;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    .line 81
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 82
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/l;)Lcom/applovin/impl/f8;
    .locals 4

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 107
    :cond_0
    new-instance v0, Lcom/applovin/impl/f8;

    invoke-direct {v0}, Lcom/applovin/impl/f8;-><init>()V

    .line 109
    const-string v1, "uri_string"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p1

    .line 111
    :cond_1
    iput-object v1, v0, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    .line 113
    const-string p1, "identifier"

    invoke-static {p0, p1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    .line 114
    const-string p1, "event"

    invoke-static {p0, p1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    .line 115
    const-string p1, "offset_seconds"

    const-wide/16 v1, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/applovin/impl/f8;->e:J

    .line 116
    const-string p1, "offset_percent"

    const/4 v1, -0x1

    invoke-static {p0, p1, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/applovin/impl/f8;->f:I

    return-object v0
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 4

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    const-string v2, "identifier"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    const-string v2, "event"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    const-string v2, "uri_string"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-wide v1, p0, Lcom/applovin/impl/f8;->e:J

    const-string v3, "offset_seconds"

    invoke-static {v0, v3, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 123
    iget v1, p0, Lcom/applovin/impl/f8;->f:I

    const-string v2, "offset_percent"

    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lorg/json/JSONObject;Ljava/lang/String;I)V

    return-object v0
.end method

.method public a(JI)Z
    .locals 5

    .line 83
    iget-wide v0, p0, Lcom/applovin/impl/f8;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v4

    .line 87
    :goto_1
    iget p2, p0, Lcom/applovin/impl/f8;->f:I

    if-ltz p2, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    if-lt p3, p2, :cond_3

    move p2, v3

    goto :goto_3

    :cond_3
    move p2, v4

    :goto_3
    if-eqz v2, :cond_4

    if-nez p1, :cond_5

    :cond_4
    if-eqz v0, :cond_6

    if-eqz p2, :cond_6

    :cond_5
    return v3

    :cond_6
    return v4
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/f8;->d:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/applovin/impl/f8;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    check-cast p1, Lcom/applovin/impl/f8;

    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/f8;->e:J

    iget-wide v4, p1, Lcom/applovin/impl/f8;->e:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget v0, p0, Lcom/applovin/impl/f8;->f:I

    iget v2, p1, Lcom/applovin/impl/f8;->f:I

    if-eq v0, v2, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v2, p1, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    :goto_0
    return v1

    .line 8
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    :goto_1
    return v1

    .line 9
    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lcom/applovin/impl/f8;->e:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/applovin/impl/f8;->f:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VastTracker{identifier=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/f8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', event=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/f8;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', uriString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/f8;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', offsetSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/applovin/impl/f8;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offsetPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/f8;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
