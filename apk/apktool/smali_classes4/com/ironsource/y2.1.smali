.class public Lcom/ironsource/y2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "nurl"

.field public static final o:Ljava/lang/String; = "adMarkup"

.field public static final p:Ljava/lang/String; = "instance"

.field public static final q:Ljava/lang/String; = "adData"

.field public static final r:Ljava/lang/String; = "price"

.field public static final s:Ljava/lang/String; = "serverData"

.field public static final t:Ljava/lang/String; = "loadTimeout"

.field public static final u:Ljava/lang/String; = "order"

.field public static final v:Ljava/lang/String; = "show"

.field public static final w:Ljava/lang/String; = "price"

.field public static final x:Ljava/lang/String; = "notifications"

.field public static final y:Ljava/lang/String; = "burl"

.field public static final z:Ljava/lang/String; = "lurl"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lorg/json/JSONObject;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Integer;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/json/JSONObject;

.field private m:Lcom/ironsource/Db;

.field private n:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ironsource/y2;->a:Ljava/lang/String;

    .line 3
    const-string v1, ""

    iput-object v1, p0, Lcom/ironsource/y2;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ironsource/y2;->c:Lorg/json/JSONObject;

    .line 5
    iput-object v1, p0, Lcom/ironsource/y2;->d:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/ironsource/y2;->e:Ljava/lang/Integer;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/ironsource/y2;->f:I

    .line 8
    iput v1, p0, Lcom/ironsource/y2;->g:I

    .line 9
    iput v1, p0, Lcom/ironsource/y2;->h:I

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/y2;->i:Ljava/util/List;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/y2;->j:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ironsource/y2;->k:Ljava/util/List;

    .line 13
    iput-object v0, p0, Lcom/ironsource/y2;->l:Lorg/json/JSONObject;

    .line 14
    iput-object v0, p0, Lcom/ironsource/y2;->m:Lcom/ironsource/Db;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/ironsource/y2;->n:Z

    .line 18
    iput-object p1, p0, Lcom/ironsource/y2;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1, v0, v1}, Lcom/ironsource/y2;-><init>(Lorg/json/JSONObject;ILorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;ILorg/json/JSONObject;)V
    .locals 13

    const-string v0, "loadTimeout"

    const-string v1, "larmData"

    const-string v2, "notifications"

    const-string v3, "serverData"

    const-string v4, "adMarkup"

    const-string v5, "instance"

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    .line 21
    iput-object v6, p0, Lcom/ironsource/y2;->a:Ljava/lang/String;

    .line 22
    const-string v7, ""

    iput-object v7, p0, Lcom/ironsource/y2;->b:Ljava/lang/String;

    .line 23
    iput-object v6, p0, Lcom/ironsource/y2;->c:Lorg/json/JSONObject;

    .line 24
    iput-object v7, p0, Lcom/ironsource/y2;->d:Ljava/lang/String;

    .line 25
    iput-object v6, p0, Lcom/ironsource/y2;->e:Ljava/lang/Integer;

    const/4 v7, -0x1

    .line 26
    iput v7, p0, Lcom/ironsource/y2;->f:I

    .line 27
    iput v7, p0, Lcom/ironsource/y2;->g:I

    .line 28
    iput v7, p0, Lcom/ironsource/y2;->h:I

    .line 29
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/ironsource/y2;->i:Ljava/util/List;

    .line 30
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/ironsource/y2;->j:Ljava/util/List;

    .line 31
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/ironsource/y2;->k:Ljava/util/List;

    .line 32
    iput-object v6, p0, Lcom/ironsource/y2;->l:Lorg/json/JSONObject;

    .line 33
    iput-object v6, p0, Lcom/ironsource/y2;->m:Lcom/ironsource/Db;

    const/4 v10, 0x1

    .line 34
    iput-boolean v10, p0, Lcom/ironsource/y2;->n:Z

    const/4 v11, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 48
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/ironsource/y2;->a:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/y2;->b:Ljava/lang/String;

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/y2;->b:Ljava/lang/String;

    .line 72
    :cond_2
    :goto_0
    const-string v3, "adData"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/y2;->c:Lorg/json/JSONObject;

    .line 73
    const-string v3, "price"

    const-string v4, "0"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ironsource/y2;->d:Ljava/lang/String;

    .line 75
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    const-string v3, "burl"

    invoke-direct {p0, v2, v3, v7}, Lcom/ironsource/y2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 79
    const-string v3, "lurl"

    invoke-direct {p0, v2, v3, v8}, Lcom/ironsource/y2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 80
    const-string v3, "nurl"

    invoke-direct {p0, v2, v3, v9}, Lcom/ironsource/y2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V

    .line 84
    :cond_3
    const-string v2, "armData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v3, 0x2

    .line 86
    new-array v3, v3, [Lorg/json/JSONObject;

    aput-object p3, v3, v11

    aput-object v2, v3, v10

    .line 87
    invoke-static {v3}, Lcom/ironsource/pa;->a([Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/ironsource/y2;->l:Lorg/json/JSONObject;

    .line 90
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/Db;->a(Lorg/json/JSONObject;)Lcom/ironsource/Db;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v6

    .line 92
    :goto_1
    iput-object v1, p0, Lcom/ironsource/y2;->m:Lcom/ironsource/Db;

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 100
    :cond_5
    iput-object v6, p0, Lcom/ironsource/y2;->e:Ljava/lang/Integer;

    .line 102
    const-string v0, "order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/ironsource/y2;->a(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 105
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 106
    iput-boolean v11, p0, Lcom/ironsource/y2;->n:Z

    .line 107
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;I)V
    .locals 1

    .line 1
    iput p2, p0, Lcom/ironsource/y2;->f:I

    .line 2
    iput p2, p0, Lcom/ironsource/y2;->g:I

    .line 3
    iput p2, p0, Lcom/ironsource/y2;->h:I

    if-eqz p1, :cond_0

    .line 6
    const-string v0, "show"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/ironsource/y2;->g:I

    .line 8
    const-string v0, "price"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/ironsource/y2;->h:I

    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/ironsource/pa;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ironsource/c9;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ironsource/y2;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->i:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/ironsource/Db;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->m:Lcom/ironsource/Db;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/y2;->f:I

    return v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->j:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->k:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->d:Ljava/lang/String;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/y2;->h:I

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->b:Ljava/lang/String;

    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ironsource/y2;->g:I

    return v0
.end method

.method public m()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/y2;->l:Lorg/json/JSONObject;

    return-object v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/y2;->n:Z

    return v0
.end method
