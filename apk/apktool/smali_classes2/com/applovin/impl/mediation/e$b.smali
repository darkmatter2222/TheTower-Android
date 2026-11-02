.class Lcom/applovin/impl/mediation/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/mediation/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/l;

.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Lcom/applovin/impl/mediation/e;

.field private final d:Lcom/applovin/impl/mediation/e$c;

.field private final e:Lcom/applovin/mediation/MaxAdFormat;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Ljava/util/Map;

.field private final i:I

.field private j:J

.field private k:J


# direct methods
.method public static synthetic $r8$lambda$C-w9E_wIWjoKkL34VaEOT3x91SI(Lcom/applovin/impl/mediation/e$b;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/mediation/e$b;->a(ILjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/e;Lcom/applovin/impl/sdk/l;Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p11, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/mediation/e$b;->b:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p10, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    .line 6
    iput-object p4, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 7
    iput-object p5, p0, Lcom/applovin/impl/mediation/e$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    .line 8
    iput-object p2, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    .line 9
    iput-object p1, p0, Lcom/applovin/impl/mediation/e$b;->f:Ljava/util/Map;

    .line 10
    iput-object p3, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    .line 11
    iput-wide p6, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    .line 12
    iput-wide p8, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 15
    const-string p1, "disable_auto_retries"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    return-void

    .line 20
    :cond_0
    invoke-virtual {p5}, Lcom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "auto_refresh_stopped"

    invoke-static {p2, p1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getBoolean(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    sget-object p1, Lcom/applovin/impl/v3;->y8:Lcom/applovin/impl/c5;

    invoke-virtual {p11, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    return-void

    .line 26
    :cond_1
    sget-object p1, Lcom/applovin/impl/v3;->y8:Lcom/applovin/impl/c5;

    invoke-virtual {p11, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/e;Lcom/applovin/impl/sdk/l;Landroid/content/Context;Lcom/applovin/impl/mediation/e$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p12}, Lcom/applovin/impl/mediation/e$b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/applovin/impl/mediation/e$c;Lcom/applovin/mediation/MaxAdFormat;JJLcom/applovin/impl/mediation/e;Lcom/applovin/impl/sdk/l;Landroid/content/Context;)V

    return-void
.end method

.method private synthetic a(ILjava/lang/String;)V
    .locals 8

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "retry_delay_sec"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "retry_attempt"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object p1

    :goto_0
    move-object v6, p1

    .line 16
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    sget-object v0, Lcom/applovin/impl/i;->e:Lcom/applovin/impl/i;

    invoke-virtual {v0}, Lcom/applovin/impl/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "art"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "era"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 22
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->f:Ljava/util/Map;

    iget-object v4, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    iget-object v5, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    move-object v7, p0

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method

.method private a(Lcom/applovin/mediation/MaxAd;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/l;->p()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    sget-object v1, Lcom/applovin/impl/i;->c:Lcom/applovin/impl/i;

    invoke-virtual {v1}, Lcom/applovin/impl/i;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "art"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/mediation/e$b;->f:Ljava/util/Map;

    iget-object v5, p0, Lcom/applovin/impl/mediation/e$b;->g:Ljava/util/Map;

    iget-object v6, p0, Lcom/applovin/impl/mediation/e$b;->h:Ljava/util/Map;

    move-object v8, p0

    invoke-static/range {v1 .. v8}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong callback invoked for ad: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/mediation/e;->d(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    sub-long v9, v0, v2

    .line 4
    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getWaterfall()Lcom/applovin/mediation/MaxAdWaterfallInfo;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    if-eqz v5, :cond_0

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->Z()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v4

    iget-wide v7, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    move-object v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/applovin/impl/mediation/MediationServiceImpl;->processWaterfallInfoPostback(Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;Lcom/applovin/mediation/MaxError;JJ)V

    goto :goto_0

    :cond_0
    move-object v6, p2

    .line 10
    :goto_0
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v0, Lcom/applovin/impl/c5;->N:Lcom/applovin/impl/c5;

    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 12
    invoke-static {v6}, Lcom/applovin/impl/j2;->a(Lcom/applovin/mediation/MaxError;)Ljava/util/Map;

    move-result-object p2

    .line 13
    const-string v0, "ad_unit_id"

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_format"

    invoke-static {v1, v0, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "attempt_number"

    invoke-static {v1, v0, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 16
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "latency_ms"

    invoke-static {v1, v0, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "consecutiveAdLoadFailuresCount = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-virtual {v1, p1}, Lcom/applovin/impl/mediation/e;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "details"

    invoke-static {v1, v0, p2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/h2;->t0:Lcom/applovin/impl/h2;

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    .line 23
    :cond_1
    invoke-interface {v6}, Lcom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    const/16 v0, -0x15e3

    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    .line 24
    invoke-static {p2}, Lcom/applovin/impl/u7;->c(Lcom/applovin/impl/sdk/l;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v0, Lcom/applovin/impl/c5;->L6:Lcom/applovin/impl/c5;

    .line 25
    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/v3;->z8:Lcom/applovin/impl/c5;

    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->e:Lcom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    .line 29
    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result v0

    iget v2, p0, Lcom/applovin/impl/mediation/e$b;->i:I

    if-ge v0, v2, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    .line 48
    :cond_3
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {p2}, Lcom/applovin/impl/mediation/e$c;->e(Lcom/applovin/impl/mediation/e$c;)I

    .line 49
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {p2}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result p2

    int-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p2, v0

    .line 51
    new-instance v0, Lcom/applovin/impl/mediation/e$b$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/mediation/e$b$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/mediation/e$b;ILjava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    .line 67
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 68
    invoke-static {v0, p1, p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 69
    :cond_4
    :goto_2
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {p2, v1}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;I)I

    .line 71
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {p2}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {p2}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 76
    move-object p2, v6

    check-cast p2, Lcom/applovin/impl/mediation/MaxErrorImpl;

    iget-object v0, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v0}, Lcom/applovin/impl/mediation/e$c;->c(Lcom/applovin/impl/mediation/e$c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setLoadTag(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2, v9, v10}, Lcom/applovin/impl/mediation/MaxErrorImpl;->setRequestLatencyMillis(J)V

    .line 78
    iget-object p2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {p2}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object p2

    invoke-static {p2, p1, v6}, Lcom/applovin/impl/x2;->a(Lcom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 79
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

    :cond_5
    return-void
.end method

.method public onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 9

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/applovin/impl/c3;

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->c(Lcom/applovin/impl/mediation/e$c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/c3;->i(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/applovin/impl/mediation/e$b;->j:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/c3;->a(J)V

    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/c3;->getWaterfall()Lcom/applovin/mediation/MaxAdWaterfallInfo;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;

    if-eqz v3, :cond_0

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->Z()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v2

    iget-wide v5, p0, Lcom/applovin/impl/mediation/e$b;->k:J

    invoke-virtual {v0}, Lcom/applovin/impl/c3;->getRequestLatencyMillis()J

    move-result-wide v7

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/applovin/impl/mediation/MediationServiceImpl;->processWaterfallInfoPostback(Lcom/applovin/impl/mediation/MaxAdWaterfallInfoImpl;Lcom/applovin/mediation/MaxError;JJ)V

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v2, Lcom/applovin/impl/c5;->N:Lcom/applovin/impl/c5;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    invoke-static {v0}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/c3;)Ljava/util/Map;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v2}, Lcom/applovin/impl/mediation/e$c;->d(Lcom/applovin/impl/mediation/e$c;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "attempt_number"

    invoke-static {v3, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 15
    invoke-virtual {v0}, Lcom/applovin/impl/c3;->getRequestLatencyMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "latency_ms"

    invoke-static {v3, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putObjectToStringIfValid(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "consecutiveAdLoadFailuresCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/applovin/impl/mediation/e;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "details"

    invoke-static {v3, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->R()Lcom/applovin/impl/d3;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/h2;->s0:Lcom/applovin/impl/h2;

    invoke-virtual {v2, v3, v1}, Lcom/applovin/impl/i2;->d(Lcom/applovin/impl/h2;Ljava/util/Map;)V

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;I)I

    .line 26
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 31
    invoke-virtual {v0}, Lcom/applovin/impl/c3;->B()Lcom/applovin/impl/mediation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/h;->c()Lcom/applovin/impl/mediation/MediationServiceImpl$b;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v3}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/applovin/impl/mediation/MediationServiceImpl$b;->a(Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 34
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/applovin/mediation/MaxAdListener;->onAdLoaded(Lcom/applovin/mediation/MaxAd;)V

    .line 35
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-static {v1}, Lcom/applovin/impl/mediation/e;->d(Lcom/applovin/impl/mediation/e;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {v0}, Lcom/applovin/impl/c3;->R()Ljava/lang/String;

    move-result-object v1

    const-string v3, "load"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->b(Lcom/applovin/impl/mediation/e$c;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/applovin/mediation/MaxAdRevenueListener;->onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;Lcom/applovin/impl/mediation/ads/a$a;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 49
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/v3;->t8:Lcom/applovin/impl/c5;

    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/l;->c(Lcom/applovin/impl/c5;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    sget-object v3, Lcom/applovin/impl/v3;->s8:Lcom/applovin/impl/c5;

    .line 50
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/impl/c5;Lcom/applovin/mediation/MaxAdFormat;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    .line 52
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/l7;->c()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/l7;->d()Z

    move-result v1

    if-nez v1, :cond_5

    .line 54
    invoke-virtual {v0}, Lcom/applovin/impl/c3;->O()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preloading waterfall 1 of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediationAdLoadManagerV2"

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_4
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/e$b;->a(Lcom/applovin/mediation/MaxAd;)V

    return-void

    .line 60
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {p1}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-static {v1, v0}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;Lcom/applovin/impl/c3;)V

    .line 67
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->d:Lcom/applovin/impl/mediation/e$c;

    invoke-static {v1}, Lcom/applovin/impl/mediation/e$c;->a(Lcom/applovin/impl/mediation/e$c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    invoke-virtual {v0}, Lcom/applovin/impl/c3;->O()I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-static {v1}, Lcom/applovin/impl/mediation/e;->a(Lcom/applovin/impl/mediation/e;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$b;->c:Lcom/applovin/impl/mediation/e;

    invoke-static {v2}, Lcom/applovin/impl/mediation/e;->b(Lcom/applovin/impl/mediation/e;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 75
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->getSizeSafely(Ljava/util/Collection;)I

    move-result v2

    .line 76
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v0, :cond_8

    add-int/lit8 v2, v2, 0x1

    .line 81
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/applovin/impl/mediation/e$b;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->Q()Lcom/applovin/impl/sdk/p;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preloading waterfall "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediationAdLoadManagerV2"

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_7
    invoke-direct {p0, p1}, Lcom/applovin/impl/mediation/e$b;->a(Lcom/applovin/mediation/MaxAd;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 83
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onAdRequestStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAdRevenuePaid(Lcom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method
