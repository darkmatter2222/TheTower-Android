.class Lcom/applovin/impl/k6$b;
.super Lcom/applovin/impl/n5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/k6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final g:J

.field private final h:I

.field private final i:Lcom/applovin/impl/c3;

.field private final j:Ljava/util/List;

.field final synthetic k:Lcom/applovin/impl/k6;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/k6;ILjava/util/List;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/k6$b;->k:Lcom/applovin/impl/k6;

    .line 3
    invoke-static {p1}, Lcom/applovin/impl/k6;->a(Lcom/applovin/impl/k6;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/k6;->b(Lcom/applovin/impl/k6;)Lcom/applovin/impl/sdk/l;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/k6;->d(Lcom/applovin/impl/k6;)Lcom/applovin/impl/e3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/e3;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/impl/n5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/l;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/k6$b;->g:J

    .line 6
    iput p2, p0, Lcom/applovin/impl/k6$b;->h:I

    .line 7
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/c3;

    iput-object p1, p0, Lcom/applovin/impl/k6$b;->i:Lcom/applovin/impl/c3;

    .line 8
    iput-object p3, p0, Lcom/applovin/impl/k6$b;->j:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/k6;ILjava/util/List;Lcom/applovin/impl/k6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/k6$b;-><init>(Lcom/applovin/impl/k6;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/k6$b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method private a(Lcom/applovin/impl/c3;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 9

    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/c3;->Z()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/applovin/impl/o3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/a4;->a(Ljava/lang/String;)Lcom/applovin/mediation/MaxMediatedNetworkInfo;

    move-result-object v2

    .line 6
    new-instance v0, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/c3;->F()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/c3;->C()Ljava/lang/String;

    move-result-object v7

    move-object v1, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;-><init>(Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;Lcom/applovin/mediation/MaxMediatedNetworkInfo;Landroid/os/Bundle;ZJLjava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/k6$b;->k:Lcom/applovin/impl/k6;

    invoke-static {p1}, Lcom/applovin/impl/k6;->c(Lcom/applovin/impl/k6;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/k6$b;Lcom/applovin/impl/c3;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/k6$b;->a(Lcom/applovin/impl/c3;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/k6$b;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/k6$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/k6$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/applovin/impl/k6$b;->h:I

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/k6$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/k6$b;->j:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/k6$b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/k6$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/k6$b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/k6$b;)Lcom/applovin/impl/c3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/k6$b;->i:Lcom/applovin/impl/c3;

    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/k6$b;)Lcom/applovin/impl/sdk/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/k6$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/k6$b;->g:J

    return-wide v0
.end method

.method static synthetic j(Lcom/applovin/impl/k6$b;)Lcom/applovin/impl/sdk/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/k6$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/k6$b;->k:Lcom/applovin/impl/k6;

    invoke-static {v0}, Lcom/applovin/impl/k6;->d(Lcom/applovin/impl/k6;)Lcom/applovin/impl/e3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/e3;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/applovin/impl/k6$b;->k:Lcom/applovin/impl/k6;

    invoke-static {v1}, Lcom/applovin/impl/k6;->d(Lcom/applovin/impl/k6;)Lcom/applovin/impl/e3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/e3;->a()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/applovin/impl/sdk/p;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/n5;->c:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/n5;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Loading ad "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/applovin/impl/k6$b;->h:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/k6$b;->j:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/k6$b;->i:Lcom/applovin/impl/c3;

    invoke-virtual {v5}, Lcom/applovin/impl/o3;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ad unit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    const-string v2, "started to load ad"

    invoke-direct {p0, v2}, Lcom/applovin/impl/k6$b;->b(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/applovin/impl/k6$b;->k:Lcom/applovin/impl/k6;

    invoke-static {v2}, Lcom/applovin/impl/k6;->e(Lcom/applovin/impl/k6;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 9
    instance-of v3, v2, Landroid/app/Activity;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->w0()Landroid/app/Activity;

    move-result-object v2

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->c0()Lcom/applovin/impl/sdk/q;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/k6$b;->i:Lcom/applovin/impl/c3;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/q;->b(Lcom/applovin/impl/c3;)V

    .line 12
    iget-object v3, p0, Lcom/applovin/impl/n5;->a:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/l;->Z()Lcom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/k6$b;->i:Lcom/applovin/impl/c3;

    new-instance v5, Lcom/applovin/impl/k6$b$a;

    iget-object v6, p0, Lcom/applovin/impl/k6$b;->k:Lcom/applovin/impl/k6;

    invoke-static {v6}, Lcom/applovin/impl/k6;->f(Lcom/applovin/impl/k6;)Lcom/applovin/impl/mediation/ads/a$a;

    move-result-object v6

    invoke-direct {v5, p0, v6, v1, v0}, Lcom/applovin/impl/k6$b$a;-><init>(Lcom/applovin/impl/k6$b;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/c3;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method
