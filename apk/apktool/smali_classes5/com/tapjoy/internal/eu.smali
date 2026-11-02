.class Lcom/tapjoy/internal/eu;
.super Lcom/tapjoy/internal/et;
.source "SourceFile"


# instance fields
.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Lcom/tapjoy/TJCurrency;

.field private f:Lcom/tapjoy/TapjoyCache;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/tapjoy/internal/et;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/tapjoy/internal/eu;->c:Z

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/eu;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    .line 32
    iput-object v0, p0, Lcom/tapjoy/internal/eu;->f:Lcom/tapjoy/TapjoyCache;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/eu;Lcom/tapjoy/TJCurrency;)Lcom/tapjoy/TJCurrency;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    return-object p1
.end method

.method static synthetic a(Lcom/tapjoy/internal/eu;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tapjoy/internal/eu;->f:Lcom/tapjoy/TapjoyCache;

    return-object p1
.end method

.method private j(Ljava/lang/String;)Z
    .locals 2

    .line 543
    iget-boolean v0, p0, Lcom/tapjoy/internal/eu;->a:Z

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because Tapjoy SDK has not successfully connected."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private k(Ljava/lang/String;)Z
    .locals 2

    .line 554
    iget-boolean v0, p0, Lcom/tapjoy/internal/eu;->c:Z

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can not call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " because Tapjoy SDK is not initialized."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/eu;->d:Ljava/lang/String;

    .line 556
    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    iget-object v1, p0, Lcom/tapjoy/internal/eu;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .locals 1

    .line 199
    const-string v0, ""

    invoke-static {p1, v0, v0, p2}, Lcom/tapjoy/TJPlacementManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    return-object p1
.end method

.method public final a(F)V
    .locals 1

    .line 218
    const-string v0, "setCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->setCurrencyMultiplier(F)V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 3

    .line 8113
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 8394
    const-string v1, "setUserLevel"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setUserLevel({}) called"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8399
    iget-object v0, v0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hm;->a(Ljava/lang/Integer;)Z

    :cond_1
    return-void
.end method

.method public final a(ILcom/tapjoy/TJAwardCurrencyListener;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "awardCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->awardCurrency(ILcom/tapjoy/TJAwardCurrencyListener;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/tapjoy/TJSpendCurrencyListener;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "spendCurrency"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/TJCurrency;->spendCurrency(ILcom/tapjoy/TJSpendCurrencyListener;)V

    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 11135
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 11412
    const-string v1, "setUserCohortVariable"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-lez p1, :cond_0

    const/4 v1, 0x5

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 12095
    :goto_0
    sget-boolean v2, Lcom/tapjoy/internal/hg;->a:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 12097
    const-string v2, "setCohortVariable: variableIndex is out of range"

    invoke-static {v2}, Lcom/tapjoy/internal/hg;->b(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    .line 11420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setUserCohortVariable({}, {}) called"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13014
    invoke-static {p2}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 11422
    iget-object v0, v0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    invoke-virtual {v0, p1, p2}, Lcom/tapjoy/internal/hm;->a(ILjava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 210
    invoke-static {p1}, Lcom/tapjoy/internal/b;->a(Landroid/app/Activity;)V

    return-void

    .line 212
    :cond_0
    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v0, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "Cannot set activity to NULL"

    invoke-direct {p1, v0, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    const-string v0, "TapjoyAPI"

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 531
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 18261
    iget-object v1, v0, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 18262
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->b(Landroid/content/Context;)V

    .line 18265
    :cond_0
    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18269
    new-instance v0, Lcom/tapjoy/TJInstallReferrer;

    invoke-direct {v0}, Lcom/tapjoy/TJInstallReferrer;-><init>()V

    .line 18270
    invoke-virtual {v0, p1}, Lcom/tapjoy/TJInstallReferrer;->init(Landroid/content/Context;)V

    return-void

    .line 18266
    :cond_1
    new-instance p1, Lcom/tapjoy/TapjoyIntegrationException;

    const-string v0, "InstallReferrerClient APIs aren\'t available in your project. To use activateInstallReferrerClient() API,`com.android.installreferrer:installreferrer` dependency is required to your project level build.gradle file"

    invoke-direct {p1, v0}, Lcom/tapjoy/TapjoyIntegrationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 526
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 14252
    iget-object v1, v0, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 14253
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->b(Landroid/content/Context;)V

    .line 14255
    :cond_0
    iget-object p1, v0, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    iget-object v1, v0, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    .line 15169
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 15170
    const-string p1, "fiverocks"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 15172
    invoke-static {v1}, Lcom/tapjoy/internal/hm;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/internal/hm;->f()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 15173
    invoke-static {v1}, Lcom/tapjoy/internal/hj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hj;

    move-result-object p1

    .line 15325
    iget-object p1, p1, Lcom/tapjoy/internal/hj;->g:Lcom/tapjoy/internal/hi;

    .line 16210
    sget-object p2, Lcom/tapjoy/internal/fa;->a:Lcom/tapjoy/internal/fa;

    const-string v1, "push_ignore"

    invoke-virtual {p1, p2, v1}, Lcom/tapjoy/internal/hi;->a(Lcom/tapjoy/internal/fa;Ljava/lang/String;)Lcom/tapjoy/internal/ex$a;

    move-result-object p2

    .line 16211
    new-instance v1, Lcom/tapjoy/internal/fe;

    invoke-direct {v1, v0, v0, v2}, Lcom/tapjoy/internal/fe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p2, Lcom/tapjoy/internal/ex$a;->s:Lcom/tapjoy/internal/fe;

    .line 16212
    invoke-virtual {p1, p2}, Lcom/tapjoy/internal/hi;->a(Lcom/tapjoy/internal/ex$a;)V

    return-void

    .line 15177
    :cond_1
    const-string p1, "title"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 15178
    const-string v3, "message"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 15180
    const-string v3, "rich"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 15181
    const-string v5, "sound"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 15182
    const-string v6, "payload"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/lang/String;

    .line 15184
    const-string v6, "always"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15185
    const-string v8, "true"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v9, :cond_3

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v10

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v11

    .line 15187
    :goto_1
    const-string v9, "repeatable"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 15188
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move v11, v10

    .line 15190
    :cond_5
    :goto_2
    const-string v8, "placement"

    invoke-interface {p2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 15192
    const-string v9, "nid"

    invoke-interface {p2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Lcom/tapjoy/internal/hl;->b(Ljava/lang/Object;)I

    move-result v9

    .line 15194
    const-string v10, "channel_id"

    invoke-interface {p2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    if-nez v6, :cond_6

    .line 15195
    invoke-static {v1}, Lcom/tapjoy/internal/hj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tapjoy/internal/hj;->d()Z

    move-result p2

    if-nez p2, :cond_7

    .line 15197
    :cond_6
    invoke-static {p1}, Lcom/tapjoy/internal/gs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15198
    invoke-static {v3}, Lcom/tapjoy/internal/hl;->a(Ljava/lang/Object;)Z

    move-result p2

    .line 15199
    invoke-static {v5}, Lcom/tapjoy/internal/hl;->a(Ljava/lang/Object;)Z

    move-result v6

    move-object v3, p1

    move v5, p2

    .line 15196
    invoke-static/range {v1 .. v10}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object p1

    .line 15204
    invoke-static {v1}, Lcom/tapjoy/internal/hj;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hj;

    move-result-object p2

    .line 16332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 16340
    invoke-virtual {p2, v1}, Lcom/tapjoy/internal/hj;->b(Landroid/content/Context;)V

    .line 16341
    iget-object v5, p2, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    invoke-virtual {v5, v2, v3, v4, v11}, Lcom/tapjoy/internal/hm;->a(Ljava/lang/String;JZ)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16342
    iget-object p2, p2, Lcom/tapjoy/internal/hj;->g:Lcom/tapjoy/internal/hi;

    .line 17216
    sget-object v3, Lcom/tapjoy/internal/fa;->a:Lcom/tapjoy/internal/fa;

    const-string v4, "push_show"

    invoke-virtual {p2, v3, v4}, Lcom/tapjoy/internal/hi;->a(Lcom/tapjoy/internal/fa;Ljava/lang/String;)Lcom/tapjoy/internal/ex$a;

    move-result-object v3

    .line 17217
    new-instance v4, Lcom/tapjoy/internal/fe;

    invoke-direct {v4, v0, v0, v2}, Lcom/tapjoy/internal/fe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v3, Lcom/tapjoy/internal/ex$a;->s:Lcom/tapjoy/internal/fe;

    .line 17218
    invoke-virtual {p2, v3}, Lcom/tapjoy/internal/hi;->a(Lcom/tapjoy/internal/ex$a;)V

    .line 17369
    const-string p2, "notification"

    .line 17370
    invoke-virtual {v1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    .line 17371
    invoke-virtual {p2, v9, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_7
    return-void
.end method

.method public final a(Landroid/content/Context;Z)V
    .locals 0

    .line 46
    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyConnectCore;->optOutAdvertisingID(Landroid/content/Context;Z)V

    return-void
.end method

.method public final a(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    .line 14079
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    invoke-static {p1}, Lcom/tapjoy/internal/hj;->a(Landroid/opengl/GLSurfaceView;)V

    return-void
.end method

.method public final a(Lcom/tapjoy/TJEarnedCurrencyListener;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "setEarnedCurrencyListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->setEarnedCurrencyListener(Lcom/tapjoy/TJEarnedCurrencyListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    if-eqz v0, :cond_0

    const-string v0, "getCurrencyBalance"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->e:Lcom/tapjoy/TJCurrency;

    invoke-virtual {v0, p1}, Lcom/tapjoy/TJCurrency;->getCurrencyBalance(Lcom/tapjoy/TJGetCurrencyBalanceListener;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/tapjoy/TJVideoListener;)V
    .locals 1

    .line 277
    const-string v0, "setVideoListener"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sput-object p1, Lcom/tapjoy/TJAdUnit;->a:Lcom/tapjoy/TJVideoListener;

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v1, p1

    .line 306
    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    move-wide v4, p2

    .line 311
    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .locals 1

    .line 397
    const-string v0, "setUserID"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    .line 7103
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object p2

    .line 7386
    const-string v0, "setUserId"

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/hj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8010
    invoke-static {p1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7390
    iget-object p2, p2, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    invoke-virtual {p2, p1}, Lcom/tapjoy/internal/hm;->b(Ljava/lang/String;)Z

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 402
    iget-object p1, p0, Lcom/tapjoy/internal/eu;->d:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/tapjoy/TJSetUserIDListener;->onSetUserIDFailure(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-static {p1, v0, v0, p2}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 11

    .line 2407
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 2611
    const-string v1, "trackPurchase"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2614
    const-string v2, "productId"

    invoke-static {p1, v1, v2}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2617
    const-string p1, "currencyCode"

    invoke-static {p2, v1, p1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2620
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2621
    const-string p2, "invalid currency code"

    invoke-static {v1, p1, p2}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2624
    :cond_0
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 2625
    invoke-static/range {p5 .. p5}, Lcom/tapjoy/internal/he;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2627
    iget-object v3, v0, Lcom/tapjoy/internal/hj;->g:Lcom/tapjoy/internal/hi;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v6, p3

    invoke-virtual/range {v3 .. v10}, Lcom/tapjoy/internal/hi;->a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    const-string p1, "trackPurchase called"

    invoke-static {p1}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v4, p3

    .line 316
    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 292
    invoke-static {p1, p2, p3, p4}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 326
    invoke-static/range {p1 .. p6}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 13

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    .line 331
    invoke-static/range {v0 .. v12}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;J)V
    .locals 13

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    .line 336
    invoke-static/range {v0 .. v12}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V
    .locals 0

    .line 342
    invoke-static/range {p1 .. p13}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 3384
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 3828
    const-string v1, "trackEvent"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3831
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3835
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p5, :cond_3

    .line 3836
    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 3837
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3838
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 3839
    const-string v4, "key in values map"

    if-nez v3, :cond_1

    .line 4073
    sget-boolean p1, Lcom/tapjoy/internal/hg;->a:Z

    if-eqz p1, :cond_4

    .line 4074
    const-string p1, "{}: {} must not be null"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Tapjoy"

    invoke-static {p3, p1, p2}, Lcom/tapjoy/internal/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 3842
    :cond_1
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 3843
    check-cast v3, Ljava/lang/String;

    .line 3844
    invoke-static {v3, v1, v4}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3847
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 3848
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 3849
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3851
    :cond_2
    const-string p1, "value in values map"

    const-string p2, "must be a long"

    invoke-static {v1, p1, p2}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3857
    :cond_3
    iget-object v3, v0, Lcom/tapjoy/internal/hj;->g:Lcom/tapjoy/internal/hi;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/tapjoy/internal/hi;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3858
    const-string p1, "trackEvent category:{}, name:{}, p1:{}, p2:{}, values:{} called"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 444
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->a(Ljava/util/Set;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 41
    invoke-static {p1}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/tapjoy/internal/eu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z
    .locals 3

    monitor-enter p0

    .line 145
    :try_start_0
    const-string v0, "event"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 148
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "The application context is NULL"

    invoke-direct {p2, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p3, :cond_0

    .line 150
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return v0

    .line 154
    :cond_1
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v2, "The limited SDK key is NULL. A valid limited SDK key is required to connect successfully to Tapjoy"

    invoke-direct {p2, v1, v2}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p3, :cond_2

    .line 157
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_2
    monitor-exit p0

    return v0

    .line 163
    :cond_3
    :try_start_2
    new-instance v1, Lcom/tapjoy/internal/eu$2;

    invoke-direct {v1, p0, p1, p3}, Lcom/tapjoy/internal/eu$2;-><init>(Lcom/tapjoy/internal/eu;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V

    invoke-static {p1, p2, v1}, Lcom/tapjoy/TapjoyConnectCore;->requestLimitedTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)V
    :try_end_2
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 194
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 188
    :try_start_3
    const-string p2, "TapjoyAPI"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p3, :cond_4

    .line 190
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    :cond_4
    monitor-exit p0

    return v0

    :catch_1
    move-exception p1

    .line 183
    :try_start_4
    const-string p2, "TapjoyAPI"

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p3, :cond_5

    .line 185
    invoke-interface {p3}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    :cond_5
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    if-eqz p3, :cond_0

    .line 64
    :try_start_0
    const-string v0, "TJC_OPTION_ENABLE_LOGGING"

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    const-string v1, "true"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyLog;->setDebugEnabled(Z)V

    .line 70
    :cond_0
    const-string v0, "event"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->setSDKType(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 73
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "The application context is NULL"

    invoke-direct {p2, p3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_1

    .line 75
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    monitor-exit p0

    return v0

    .line 79
    :cond_2
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    const-string p1, "TapjoyAPI"

    new-instance p2, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    const-string v1, "The SDK key is NULL. A valid SDK key is required to connect successfully to Tapjoy"

    invoke-direct {p2, p3, v1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_3

    .line 82
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_3
    monitor-exit p0

    return v0

    .line 86
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    invoke-static {p1}, Lcom/tapjoy/TapjoyAppSettings;->init(Landroid/content/Context;)V

    .line 92
    new-instance v1, Lcom/tapjoy/internal/eu$1;

    invoke-direct {v1, p0, p1, p4}, Lcom/tapjoy/internal/eu$1;-><init>(Lcom/tapjoy/internal/eu;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V

    invoke-static {p1, p2, p3, v1}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)V
    :try_end_3
    .catch Lcom/tapjoy/TapjoyIntegrationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/tapjoy/TapjoyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p2, 0x1

    .line 137
    :try_start_4
    iput-boolean p2, p0, Lcom/tapjoy/internal/eu;->c:Z

    if-eqz p3, :cond_5

    .line 1585
    const-string p4, "TJC_OPTION_DISABLE_AUTOMATIC_SESSION_TRACKING"

    invoke-virtual {p3, p4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 1586
    const-string p4, "true"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 1594
    const-string p1, "TapjoyAPI"

    const-string p3, "Automatic session tracking is disabled."

    invoke-static {p1, p3}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1591
    :cond_5
    invoke-static {p1}, Lcom/tapjoy/internal/fn;->a(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 139
    :goto_0
    monitor-exit p0

    return p2

    :catch_0
    move-exception p1

    .line 131
    :try_start_5
    const-string p2, "TapjoyAPI"

    new-instance p3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->SDK_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_6

    .line 133
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 134
    :cond_6
    monitor-exit p0

    return v0

    :catch_1
    move-exception p1

    .line 126
    :try_start_6
    const-string p2, "TapjoyAPI"

    new-instance p3, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v1, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->INTEGRATION_ERROR:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyIntegrationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, v1, p1}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {p2, p3}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    if-eqz p4, :cond_7

    .line 128
    invoke-interface {p4}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 129
    :cond_7
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;
    .locals 1

    .line 204
    const-string v0, ""

    invoke-static {p1, v0, v0, p2}, Lcom/tapjoy/TJPlacementManager;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Lcom/tapjoy/TJPlacement;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "12.10.0"

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    .line 9123
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 9403
    const-string v1, "setUserFriendCount"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setUserFriendCount({}) called"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9408
    iget-object v0, v0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    if-ltz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hm;->b(Ljava/lang/Integer;)Z

    :cond_1
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 2

    .line 376
    invoke-static {}, Lcom/tapjoy/internal/fn;->a()V

    .line 378
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    const/4 v1, 0x1

    .line 6000
    iput-boolean v1, v0, Lcom/tapjoy/internal/hj;->m:Z

    .line 6171
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 536
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 18275
    iget-object v1, v0, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 18276
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->b(Landroid/content/Context;)V

    .line 18279
    :cond_0
    iget-object p1, v0, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tapjoy/internal/hj;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .line 10093
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 10378
    const-string v1, "setAppDataVersion"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11006
    invoke-static {p1}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10382
    iget-object v0, v0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hm;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 321
    invoke-static/range {v0 .. v5}, Lcom/tapjoy/internal/gx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final b(Z)V
    .locals 7

    .line 483
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 13303
    const-string v1, "setPushNotificationDisabled"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13306
    iget-object v1, v0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/hm;->a(Z)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 13309
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v4, "setPushNotificationDisabled({}) called"

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    .line 13312
    new-array v4, v4, [Ljava/lang/Object;

    .line 13313
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v3, "setPushNotificationDisabled({}) called, but it is already {}"

    if-eqz p1, :cond_1

    const-string p1, "disabled"

    goto :goto_0

    :cond_1
    const-string p1, "enabled"

    :goto_0
    move-object v6, v3

    move v3, v2

    move-object v2, v4

    move-object v4, v6

    :goto_1
    aput-object p1, v2, v3

    .line 13312
    invoke-static {v4, v2}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 13317
    iget-boolean p1, v0, Lcom/tapjoy/internal/hj;->j:Z

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/tapjoy/internal/hj;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 13318
    iget-object p1, v0, Lcom/tapjoy/internal/hj;->n:Ljava/lang/String;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    iget-object p1, v0, Lcom/tapjoy/internal/hj;->e:Landroid/content/Context;

    .line 13319
    invoke-static {p1}, Lcom/tapjoy/internal/hl;->a(Landroid/content/Context;)Lcom/tapjoy/internal/hl;

    move-result-object p1

    .line 14044
    iget-object v1, p1, Lcom/tapjoy/internal/o;->b:Lcom/tapjoy/internal/q;

    iget-object p1, p1, Lcom/tapjoy/internal/o;->a:Landroid/content/Context;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/q;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 13319
    invoke-static {p1}, Lcom/tapjoy/internal/gs;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13320
    :goto_2
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final c()F
    .locals 1

    .line 226
    const-string v0, "getCurrencyMultiplier"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->getCurrencyMultiplier()F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 1

    .line 385
    invoke-static {}, Lcom/tapjoy/internal/fn;->a()V

    .line 6189
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 458
    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->c()Ljava/util/Set;

    move-result-object v1

    .line 459
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 460
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->a(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 564
    invoke-static {}, Lcom/tapjoy/internal/gh;->a()Lcom/tapjoy/internal/gh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gh;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    .line 352
    const-string v0, "startSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-static {}, Lcom/tapjoy/internal/fn;->a()V

    .line 356
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appResume()V

    .line 4201
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->e()V

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .line 466
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 470
    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->c()Ljava/util/Set;

    move-result-object v1

    .line 471
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 472
    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->a(Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 574
    invoke-static {}, Lcom/tapjoy/internal/gh;->a()Lcom/tapjoy/internal/gh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gh;->b(Z)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 363
    const-string v0, "endSession"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-static {}, Lcom/tapjoy/internal/fn;->a()V

    .line 367
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    const/4 v1, 0x0

    .line 5000
    iput-boolean v1, v0, Lcom/tapjoy/internal/hj;->m:Z

    .line 368
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->appPause()V

    .line 5208
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->f()V

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .line 238
    const-string v0, "actionComplete"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/TapjoyConnectCore;->actionComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 508
    const-string v0, "getSupportURL"

    invoke-direct {p0, v0}, Lcom/tapjoy/internal/eu;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->getSupportURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hj;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .line 449
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->a(Ljava/util/Set;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 1

    .line 569
    invoke-static {}, Lcom/tapjoy/internal/gh;->a()Lcom/tapjoy/internal/gh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gh;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 1

    .line 521
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/hj;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final h()Z
    .locals 3

    .line 478
    invoke-static {}, Lcom/tapjoy/internal/hj;->a()Lcom/tapjoy/internal/hj;

    move-result-object v0

    .line 13294
    const-string v1, "isPushNotificationDisabled"

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/hj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 13297
    :cond_0
    iget-object v0, v0, Lcom/tapjoy/internal/hj;->f:Lcom/tapjoy/internal/hm;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hm;->f()Z

    move-result v0

    .line 13298
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "isPushNotificationDisabled = {}"

    invoke-static {v2, v1}, Lcom/tapjoy/internal/hg;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 0

    .line 409
    invoke-static {p1}, Lcom/tapjoy/TapjoyConnectCore;->setCustomParameter(Ljava/lang/String;)V

    return-void
.end method

.method public final i()Z
    .locals 1

    .line 493
    iget-boolean v0, p0, Lcom/tapjoy/internal/eu;->a:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Lcom/tapjoy/internal/eu;->b:Z

    return v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 516
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getUserToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 414
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getCustomParameter()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lcom/tapjoy/TJPrivacyPolicy;
    .locals 1

    .line 614
    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v0

    return-object v0
.end method
