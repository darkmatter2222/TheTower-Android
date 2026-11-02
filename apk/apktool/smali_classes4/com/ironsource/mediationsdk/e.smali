.class public Lcom/ironsource/mediationsdk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/ironsource/mediationsdk/f;

.field private f:Lcom/ironsource/mediationsdk/IronSource$a;

.field private g:Lcom/ironsource/A2;

.field private h:Lcom/ironsource/c2;

.field private i:Lcom/ironsource/mediationsdk/ISBannerSize;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/IronSource$a;Lcom/ironsource/A2;Lcom/ironsource/c2;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "1"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->a:Ljava/lang/String;

    .line 22
    const-string v0, "102"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->b:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->c:Ljava/lang/String;

    .line 24
    const-string v0, "GenericNotifications"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->d:Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/ironsource/mediationsdk/e;->f:Lcom/ironsource/mediationsdk/IronSource$a;

    .line 53
    iput-object p2, p0, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    .line 54
    iput-object p3, p0, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/c2;

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "1"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->a:Ljava/lang/String;

    .line 3
    const-string v0, "102"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->c:Ljava/lang/String;

    .line 5
    const-string v0, "GenericNotifications"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/e;->d:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;IZLcom/ironsource/ia;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/j2;",
            "IZ",
            "Lcom/ironsource/ia;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/ironsource/mediationsdk/h;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/e;->f:Lcom/ironsource/mediationsdk/IronSource$a;

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/h;-><init>(Lcom/ironsource/mediationsdk/IronSource$a;)V

    .line 152
    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/Map;)V

    .line 153
    invoke-virtual {v0, p2}, Lcom/ironsource/mediationsdk/h;->a(Ljava/util/List;)V

    .line 154
    invoke-virtual {v0, p3}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/j2;)V

    .line 155
    invoke-virtual {v0, p4}, Lcom/ironsource/mediationsdk/h;->a(I)V

    .line 156
    iget-object p1, p0, Lcom/ironsource/mediationsdk/e;->i:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 157
    invoke-virtual {v0, p6}, Lcom/ironsource/mediationsdk/h;->a(Lcom/ironsource/ia;)V

    .line 158
    invoke-virtual {v0, p5}, Lcom/ironsource/mediationsdk/h;->b(Z)V

    .line 160
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/d;->a(Lcom/ironsource/mediationsdk/h;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)V
    .locals 8

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    .line 4
    invoke-virtual {v0, p1, p2, p3}, Lcom/ironsource/mediationsdk/f;->a(Landroid/content/Context;Lcom/ironsource/mediationsdk/h;Lcom/ironsource/c2;)Lcom/ironsource/mediationsdk/e$a;

    move-result-object p1

    .line 6
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p2, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 8
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 9
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute auction exception "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    iget-object p2, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    .line 17
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/f;->a()Z

    move-result p2

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 18
    invoke-virtual {p1, p2, v0}, Lcom/ironsource/i2;->a(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v2, 0x3e8

    move-object v1, p3

    .line 19
    invoke-interface/range {v1 .. v7}, Lcom/ironsource/c2;->a(ILjava/lang/String;ILjava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;ILcom/ironsource/ia;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/j2;",
            "I",
            "Lcom/ironsource/ia;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->g()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    .line 23
    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;IZLcom/ironsource/ia;)Lorg/json/JSONObject;

    move-result-object p4

    move p5, v6

    .line 25
    new-instance p1, Lcom/ironsource/mediationsdk/e$a;

    iget-object p2, v1, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/c2;

    new-instance p3, Ljava/net/URL;

    iget-object p6, v1, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p6, v0}, Lcom/ironsource/A2;->a(Z)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p3, p6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object p6, v1, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    invoke-direct/range {p1 .. p6}, Lcom/ironsource/mediationsdk/e$a;-><init>(Lcom/ironsource/c2;Ljava/net/URL;Lorg/json/JSONObject;ZLcom/ironsource/A2;)V

    .line 32
    sget-object p2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    invoke-virtual {p2, p1}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, p0

    :goto_0
    move-object p1, v0

    .line 34
    invoke-static {}, Lcom/ironsource/r4;->d()Lcom/ironsource/r4;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ironsource/r4;->a(Ljava/lang/Throwable;)V

    .line 35
    sget-object p2, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "execute auction exception "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 36
    iget-object v2, v1, Lcom/ironsource/mediationsdk/e;->h:Lcom/ironsource/c2;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    sget-object p1, Lcom/ironsource/i2;->a:Lcom/ironsource/i2;

    iget-object p2, v1, Lcom/ironsource/mediationsdk/e;->g:Lcom/ironsource/A2;

    .line 41
    invoke-virtual {p2}, Lcom/ironsource/A2;->n()Z

    move-result p2

    const/16 p3, 0x3e8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 42
    invoke-virtual {p1, p2, p3}, Lcom/ironsource/i2;->a(ZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/16 v3, 0x3e8

    .line 43
    invoke-interface/range {v2 .. v8}, Lcom/ironsource/c2;->a(ILjava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;ILcom/ironsource/ia;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/j2;",
            "I",
            "Lcom/ironsource/ia;",
            "Lcom/ironsource/mediationsdk/ISBannerSize;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p7, p0, Lcom/ironsource/mediationsdk/e;->i:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 2
    invoke-virtual/range {p0 .. p6}, Lcom/ironsource/mediationsdk/e;->a(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;Lcom/ironsource/j2;ILcom/ironsource/ia;)V

    return-void
.end method

.method public a(Lcom/ironsource/y2;ILcom/ironsource/y2;)V
    .locals 10

    .line 68
    invoke-virtual {p1}, Lcom/ironsource/y2;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "reportLoadSuccess"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 71
    const-string v8, ""

    const-string v9, ""

    const-string v7, ""

    move-object v6, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p2

    .line 73
    invoke-virtual {v6}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v1, p1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v5

    move-object p1, v6

    goto :goto_0

    :cond_0
    move-object v6, p1

    move v5, p2

    if-eqz p3, :cond_1

    .line 77
    invoke-virtual {p3}, Lcom/ironsource/y2;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 80
    const-string v8, "102"

    const-string v9, ""

    const-string v7, ""

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p3

    const-string v0, "GenericNotifications"

    invoke-virtual {p3, v2, v0, p2}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcom/ironsource/y2;ILcom/ironsource/y2;Ljava/lang/String;)V
    .locals 10

    .line 46
    invoke-virtual {p1}, Lcom/ironsource/y2;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "reportImpression"

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 49
    const-string v7, ""

    const-string v8, ""

    move-object v6, p1

    move v5, p2

    move-object v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p2

    .line 51
    invoke-virtual {v6}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v2, p4, p1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v5

    move-object p1, v6

    move-object p4, v9

    goto :goto_0

    :cond_0
    move-object v6, p1

    move v5, p2

    move-object v9, p4

    if-eqz p3, :cond_1

    .line 55
    invoke-virtual {p3}, Lcom/ironsource/y2;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v3

    .line 58
    const-string v7, ""

    const-string v8, "102"

    invoke-virtual/range {v3 .. v9}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object p3

    const-string p4, "GenericNotifications"

    invoke-virtual {p3, v2, p4, p2}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            ">;I",
            "Lcom/ironsource/y2;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/y2;->j()I

    move-result v0

    .line 98
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "reportAuctionLose"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 99
    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v4, p2

    .line 100
    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/y2;

    .line 101
    invoke-virtual {v2}, Lcom/ironsource/y2;->j()I

    move-result v5

    .line 102
    invoke-virtual {v2}, Lcom/ironsource/y2;->i()Ljava/lang/String;

    move-result-object v10

    if-ge v5, v0, :cond_1

    .line 105
    const-string v6, "1"

    goto :goto_1

    :cond_1
    const-string v6, "102"

    :goto_1
    move-object v11, v6

    .line 107
    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "instance="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", instancePriceOrder= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", loseReasonCode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", winnerInstance="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 115
    invoke-virtual/range {p5 .. p5}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", winnerInstancePriceOrder="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 116
    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lcom/ironsource/y2;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 130
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v6

    .line 131
    const-string v12, ""

    move/from16 v8, p3

    move-object/from16 v9, p5

    invoke-virtual/range {v6 .. v12}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 133
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v7

    .line 134
    invoke-virtual {v2}, Lcom/ironsource/y2;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v3, v8, v6}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v4, p2

    goto/16 :goto_0

    :cond_3
    if-eqz p4, :cond_4

    .line 140
    invoke-virtual/range {p4 .. p4}, Lcom/ironsource/y2;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 142
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v12

    .line 143
    const-string v17, "102"

    const-string v18, ""

    const-string v16, ""

    move/from16 v14, p3

    move-object/from16 v15, p5

    invoke-virtual/range {v12 .. v18}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;ILcom/ironsource/y2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {}, Lcom/ironsource/mediationsdk/d;->b()Lcom/ironsource/mediationsdk/d;

    move-result-object v2

    const-string v4, "GenericNotifications"

    invoke-virtual {v2, v3, v4, v1}, Lcom/ironsource/mediationsdk/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public a(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/ironsource/mediationsdk/u;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ironsource/y2;",
            ">;I",
            "Lcom/ironsource/y2;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/u;

    .line 91
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/u;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/ironsource/mediationsdk/e;->a(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;ILcom/ironsource/y2;Lcom/ironsource/y2;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/ironsource/mediationsdk/e;->e:Lcom/ironsource/mediationsdk/f;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/f;->b()Z

    move-result v0

    return v0
.end method
