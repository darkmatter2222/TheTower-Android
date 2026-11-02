.class public Lcom/applovin/impl/b2;
.super Lcom/applovin/impl/d2;
.source "SourceFile"


# instance fields
.field private final o0:Lcom/applovin/impl/v7;

.field private final p0:Ljava/util/Set;


# direct methods
.method public static synthetic $r8$lambda$eK8nSbQCAzTPTGQCG5EZPYPyuX8(Lcom/applovin/impl/b2;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 1

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/applovin/impl/d2;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/l;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 2
    new-instance p5, Ljava/util/HashSet;

    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    iput-object p5, p1, Lcom/applovin/impl/b2;->p0:Ljava/util/Set;

    .line 14
    move-object p6, p2

    check-cast p6, Lcom/applovin/impl/v7;

    iput-object p6, p1, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    .line 16
    invoke-virtual {p6}, Lcom/applovin/impl/v7;->r1()Z

    move-result p7

    if-eqz p7, :cond_0

    .line 18
    invoke-virtual {p6}, Lcom/applovin/impl/v7;->l1()Lcom/applovin/impl/b8;

    move-result-object p7

    invoke-virtual {p7}, Lcom/applovin/impl/b8;->e()Landroid/net/Uri;

    move-result-object p7

    invoke-static {p7, p3, p4}, Lcom/applovin/impl/b8;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/l;)Landroid/widget/ImageView;

    move-result-object p7

    iput-object p7, p1, Lcom/applovin/impl/d2;->X:Landroid/widget/ImageView;

    .line 19
    new-instance v0, Lcom/applovin/impl/b2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p4, p3}, Lcom/applovin/impl/b2$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/b2;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;Landroid/app/Activity;)V

    invoke-virtual {p7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    :cond_0
    sget-object p2, Lcom/applovin/impl/v7$d;->d:Lcom/applovin/impl/v7$d;

    sget-object p3, Lcom/applovin/impl/g8;->a:[Ljava/lang/String;

    invoke-virtual {p6, p2, p3}, Lcom/applovin/impl/v7;->a(Lcom/applovin/impl/v7$d;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object p3

    .line 42
    invoke-interface {p5, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 44
    sget-object p3, Lcom/applovin/impl/v7$d;->a:Lcom/applovin/impl/v7$d;

    invoke-direct {p0, p3}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;)V

    .line 45
    const-string p3, "creativeView"

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p6}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/k4;->g()V

    return-void
.end method

.method private U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->X:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->r1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private V()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/d2;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/b2;->p0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/applovin/impl/b2;->p0:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " un-fired video progress trackers when video was completed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b2;->p0:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/applovin/impl/b2;->a(Ljava/util/Set;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/b2;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/b2;->p0:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/b2;Ljava/util/Set;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/b2;->a(Ljava/util/Set;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/l;Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    .line 3
    iget-object p4, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {p4}, Lcom/applovin/impl/v7;->l1()Lcom/applovin/impl/b8;

    move-result-object p4

    invoke-virtual {p4}, Lcom/applovin/impl/b8;->c()Landroid/net/Uri;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Industry Icon clicked, opening URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    sget-object v0, Lcom/applovin/impl/v7$d;->g:Lcom/applovin/impl/v7$d;

    invoke-direct {p0, v0}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;)V

    .line 10
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->isCustomTabsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->A()Lcom/applovin/impl/g1;

    move-result-object p1

    invoke-virtual {p0}, Lcom/applovin/impl/y1;->b()Lcom/applovin/adview/AppLovinAdView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/adview/AppLovinAdView;->getController()Lcom/applovin/impl/adview/a;

    move-result-object p2

    invoke-virtual {p1, p4, p2, p3}, Lcom/applovin/impl/g1;->a(Landroid/net/Uri;Lcom/applovin/impl/adview/a;Landroid/app/Activity;)V

    return-void

    .line 16
    :cond_1
    invoke-static {p4, p1, p3, p2}, Lcom/applovin/impl/q7;->b(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;Lcom/applovin/impl/sdk/l;)Z

    :cond_2
    return-void
.end method

.method private a(Lcom/applovin/impl/v7$d;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/applovin/impl/a8;->b:Lcom/applovin/impl/a8;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Lcom/applovin/impl/a8;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/v7$d;Lcom/applovin/impl/a8;)V
    .locals 1

    .line 143
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;Lcom/applovin/impl/a8;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V
    .locals 1

    .line 142
    sget-object v0, Lcom/applovin/impl/a8;->b:Lcom/applovin/impl/a8;

    invoke-direct {p0, p1, p2, v0}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;Lcom/applovin/impl/a8;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/v7$d;Ljava/lang/String;Lcom/applovin/impl/a8;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/v7;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    .line 145
    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/b2;->a(Ljava/util/Set;Lcom/applovin/impl/a8;)V

    return-void
.end method

.method private a(Ljava/util/Set;)V
    .locals 1

    .line 140
    sget-object v0, Lcom/applovin/impl/a8;->b:Lcom/applovin/impl/a8;

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/b2;->a(Ljava/util/Set;Lcom/applovin/impl/a8;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/applovin/impl/a8;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 146
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 149
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->q1()Lcom/applovin/impl/j8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/applovin/impl/j8;->d()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 152
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Firing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tracker(s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinFullscreenActivity"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    iget-object v8, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    move-object v3, p1

    move-object v7, p2

    invoke-static/range {v3 .. v8}, Lcom/applovin/impl/h8;->a(Ljava/util/Set;JLandroid/net/Uri;Lcom/applovin/impl/a8;Lcom/applovin/impl/sdk/l;)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/b2;)Lcom/applovin/impl/v7;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    return-object p0
.end method


# virtual methods
.method public D()V
    .locals 2

    .line 1
    sget-object v0, Lcom/applovin/impl/v7$d;->d:Lcom/applovin/impl/v7$d;

    const-string v1, "skip"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->B()V

    .line 5
    invoke-super {p0}, Lcom/applovin/impl/d2;->D()V

    return-void
.end method

.method protected E()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/d2;->E()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->i()V

    :cond_0
    return-void
.end method

.method protected N()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->R()I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Q()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Q()J

    move-result-wide v0

    goto :goto_2

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    .line 16
    invoke-virtual {v0}, Lcom/applovin/impl/v7;->p1()Lcom/applovin/impl/i8;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 17
    invoke-virtual {v1}, Lcom/applovin/impl/i8;->d()I

    move-result v4

    if-lez v4, :cond_3

    .line 19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1}, Lcom/applovin/impl/i8;->d()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_1

    .line 23
    :cond_3
    iget-wide v4, p0, Lcom/applovin/impl/d2;->f0:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_4

    move-wide v2, v4

    .line 29
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->W0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->s()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_5

    .line 34
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    :cond_5
    long-to-double v0, v2

    .line 38
    iget-object v2, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->R()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 41
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/y1;->c(J)V

    return-void
.end method

.method protected Q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/d2;->Q()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->j()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/b2;->V()V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-static {v0}, Lcom/applovin/impl/h8;->a(Lcom/applovin/impl/v7;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/applovin/impl/d2;->i0:Z

    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lcom/applovin/impl/v7$d;->e:Lcom/applovin/impl/v7$d;

    const-string v1, "creativeView"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->w()V

    .line 14
    invoke-super {p0}, Lcom/applovin/impl/d2;->R()V

    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/y1;->c:Lcom/applovin/impl/sdk/p;

    const-string v1, "AppLovinFullscreenActivity"

    const-string v2, "VAST ad does not have valid companion ad - dismissing..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_2
    const-string v0, "no_valid_companion_ad"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/b2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/d2;->T()V

    .line 3
    sget-object v0, Lcom/applovin/impl/v7$d;->d:Lcom/applovin/impl/v7$d;

    iget-boolean v1, p0, Lcom/applovin/impl/d2;->e0:Z

    if-eqz v1, :cond_0

    const-string v1, "mute"

    goto :goto_0

    :cond_0
    const-string v1, "unmute"

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/d2;->e0:Z

    invoke-virtual {v0, v1}, Lcom/applovin/impl/q4;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 136
    sget-object v0, Lcom/applovin/impl/v7$d;->b:Lcom/applovin/impl/v7$d;

    invoke-direct {p0, v0}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;)V

    .line 137
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->v()V

    .line 139
    invoke-super {p0, p1}, Lcom/applovin/impl/d2;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 4

    .line 25
    invoke-super {p0, p1}, Lcom/applovin/impl/d2;->a(Landroid/view/ViewGroup;)V

    .line 27
    invoke-direct {p0}, Lcom/applovin/impl/b2;->U()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    sget-object p1, Lcom/applovin/impl/v7$d;->f:Lcom/applovin/impl/v7$d;

    invoke-direct {p0, p1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;)V

    .line 30
    iget-object p1, p0, Lcom/applovin/impl/d2;->X:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/d2;->b0:Lcom/applovin/impl/c1;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    new-instance v2, Lcom/applovin/impl/b2$a;

    invoke-direct {v2, p0}, Lcom/applovin/impl/b2$a;-><init>(Lcom/applovin/impl/b2;)V

    const-string v3, "PROGRESS_TRACKING"

    invoke-virtual {p1, v3, v0, v1, v2}, Lcom/applovin/impl/c1;->a(Ljava/lang/String;JLcom/applovin/impl/c1$b;)V

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    iget-object v0, p0, Lcom/applovin/impl/d2;->R:Lcom/applovin/impl/a;

    if-eqz v0, :cond_1

    .line 90
    new-instance v1, Lcom/applovin/impl/m4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "video stream buffering indicator"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/d2;->S:Lcom/applovin/impl/adview/g;

    if-eqz v0, :cond_2

    .line 96
    new-instance v1, Lcom/applovin/impl/m4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->CLOSE_AD:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "skip button"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/d2;->T:Lcom/applovin/impl/k0;

    if-eqz v0, :cond_3

    .line 102
    new-instance v1, Lcom/applovin/impl/m4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "countdown clock"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/d2;->V:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 108
    new-instance v1, Lcom/applovin/impl/m4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "progress bar"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/d2;->W:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    .line 114
    new-instance v1, Lcom/applovin/impl/m4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "postitial progress bar"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/d2;->U:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 120
    new-instance v1, Lcom/applovin/impl/m4;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->VIDEO_CONTROLS:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    const-string v3, "mute button"

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/y1;->j:Lcom/applovin/impl/adview/k;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/applovin/impl/adview/k;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    new-instance v0, Lcom/applovin/impl/m4;

    iget-object v1, p0, Lcom/applovin/impl/y1;->j:Lcom/applovin/impl/adview/k;

    sget-object v2, Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;->NOT_VISIBLE:Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;

    .line 128
    invoke-virtual {v1}, Lcom/applovin/impl/adview/k;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/applovin/impl/m4;-><init>(Landroid/view/View;Lcom/iab/omid/library/applovin/adsession/FriendlyObstructionPurpose;Ljava/lang/String;)V

    .line 129
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/d2;->Q:Lcom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/k4;->b(Landroid/view/View;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/applovin/impl/v7$d;->d:Lcom/applovin/impl/v7$d;

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 21
    sget-object v0, Lcom/applovin/impl/v7$d;->e:Lcom/applovin/impl/v7$d;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 24
    :cond_0
    invoke-super {p0, p1}, Lcom/applovin/impl/d2;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected d(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/applovin/impl/d2;->d(J)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    long-to-float p1, p1

    iget-object p2, p0, Lcom/applovin/impl/y1;->b:Lcom/applovin/impl/sdk/l;

    invoke-static {p2}, Lcom/applovin/impl/u7;->e(Lcom/applovin/impl/sdk/l;)Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/applovin/impl/q4;->b(FZ)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/applovin/impl/v7$d;->h:Lcom/applovin/impl/v7$d;

    sget-object v1, Lcom/applovin/impl/a8;->n:Lcom/applovin/impl/a8;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Lcom/applovin/impl/a8;)V

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/k4;->b(Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1}, Lcom/applovin/impl/d2;->g(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/y1;->s()V

    .line 3
    iget-boolean v0, p0, Lcom/applovin/impl/d2;->i0:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/v7$d;->e:Lcom/applovin/impl/v7$d;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/v7$d;->d:Lcom/applovin/impl/v7$d;

    :goto_0
    const-string v1, "pause"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->z()V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/y1;->t()V

    .line 3
    iget-boolean v0, p0, Lcom/applovin/impl/d2;->i0:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/v7$d;->e:Lcom/applovin/impl/v7$d;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/v7$d;->d:Lcom/applovin/impl/v7$d;

    :goto_0
    const-string v1, "resume"

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/b2;->a(Lcom/applovin/impl/v7$d;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/applovin/impl/b2;->o0:Lcom/applovin/impl/v7;

    invoke-virtual {v0}, Lcom/applovin/impl/v7;->getAdEventTracker()Lcom/applovin/impl/q4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/q4;->A()V

    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d2;->b0:Lcom/applovin/impl/c1;

    invoke-virtual {v0}, Lcom/applovin/impl/c1;->c()V

    .line 3
    invoke-super {p0}, Lcom/applovin/impl/d2;->v()V

    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/applovin/impl/b2;->a(Landroid/view/ViewGroup;)V

    return-void
.end method
