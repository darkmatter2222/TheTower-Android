.class Lcom/applovin/impl/m;
.super Lcom/applovin/impl/w2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/m$a;,
        Lcom/applovin/impl/m$b;
    }
.end annotation


# instance fields
.field private final e:Lcom/applovin/impl/n;

.field private final f:Lcom/applovin/impl/o;

.field private final g:Lcom/applovin/impl/o8;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/List;

.field private final k:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/applovin/impl/n;Lcom/applovin/impl/o;Lcom/applovin/impl/o8;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Lcom/applovin/impl/w2;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/m;->e:Lcom/applovin/impl/n;

    .line 4
    iput-object p3, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    if-eqz p2, :cond_0

    move-object p3, p2

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/n;->f()Lcom/applovin/impl/o;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lcom/applovin/impl/m;->f:Lcom/applovin/impl/o;

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p2}, Lcom/applovin/impl/o;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/n;->d()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/applovin/impl/m;->h:Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Lcom/applovin/impl/m;->h()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/m;->i:Ljava/util/List;

    .line 11
    invoke-direct {p0}, Lcom/applovin/impl/m;->e()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/m;->j:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/applovin/impl/m;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/m;->k:Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/m;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/w2;->a:Landroid/content/Context;

    return-object p0
.end method

.method private d()Lcom/applovin/impl/v2;
    .locals 2

    .line 12
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 13
    const-string v1, "Ad Format"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/m;->e:Lcom/applovin/impl/n;

    .line 14
    invoke-virtual {v1}, Lcom/applovin/impl/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/o8;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/m;->f:Lcom/applovin/impl/o;

    invoke-virtual {v0}, Lcom/applovin/impl/o;->a()Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/o8;

    .line 19
    iget-object v3, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/applovin/impl/o8;->b()Lcom/applovin/impl/y2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/y2;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/applovin/impl/o8;->b()Lcom/applovin/impl/y2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/y2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v2}, Lcom/applovin/impl/o8;->a()Lcom/applovin/impl/f4;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/applovin/impl/o8;->a()Lcom/applovin/impl/f4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/f4;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    const-string v3, ""

    .line 22
    :goto_1
    new-instance v4, Lcom/applovin/impl/m$b;

    iget-object v5, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-direct {v4, p0, v2, v3, v5}, Lcom/applovin/impl/m$b;-><init>(Lcom/applovin/impl/m;Lcom/applovin/impl/o8;Ljava/lang/String;Z)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private f()Lcom/applovin/impl/v2;
    .locals 2

    .line 1
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 2
    const-string v1, "AB Test Experiment Name"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/applovin/impl/m;->j()Lcom/applovin/impl/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/applovin/impl/v2;
    .locals 2

    .line 1
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 2
    const-string v1, "ID"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/m;->e:Lcom/applovin/impl/n;

    .line 3
    invoke-virtual {v1}, Lcom/applovin/impl/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/m;->g()Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Lcom/applovin/impl/m;->d()Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/m;->f:Lcom/applovin/impl/o;

    invoke-virtual {v1}, Lcom/applovin/impl/o;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/applovin/impl/m;->f()Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    if-eqz v1, :cond_1

    .line 12
    invoke-direct {p0}, Lcom/applovin/impl/m;->i()Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private i()Lcom/applovin/impl/v2;
    .locals 2

    .line 1
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 2
    const-string v1, "Selected Network"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    .line 3
    invoke-virtual {v1}, Lcom/applovin/impl/o8;->b()Lcom/applovin/impl/y2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/y2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/util/List;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/o8;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/m;->f:Lcom/applovin/impl/o;

    invoke-virtual {v0}, Lcom/applovin/impl/o;->e()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/o8;

    .line 8
    iget-object v3, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/applovin/impl/o8;->b()Lcom/applovin/impl/y2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/y2;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/applovin/impl/o8;->b()Lcom/applovin/impl/y2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/y2;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v3, Lcom/applovin/impl/m$b;

    iget-object v4, p0, Lcom/applovin/impl/m;->g:Lcom/applovin/impl/o8;

    const/4 v5, 0x1

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x0

    invoke-direct {v3, p0, v2, v6, v4}, Lcom/applovin/impl/m$b;-><init>(Lcom/applovin/impl/m;Lcom/applovin/impl/o8;Ljava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v2}, Lcom/applovin/impl/o8;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/impl/f4;

    .line 16
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v4

    .line 17
    invoke-virtual {v3}, Lcom/applovin/impl/f4;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v4

    .line 18
    invoke-virtual {v3}, Lcom/applovin/impl/f4;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v3

    .line 19
    invoke-virtual {v3, v5}, Lcom/applovin/impl/v2$b;->b(Z)Lcom/applovin/impl/v2$b;

    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v3

    .line 21
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object v1
.end method


# virtual methods
.method protected b()I
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/m$a;->d:Lcom/applovin/impl/m$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method protected c(I)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/m$a;->a:Lcom/applovin/impl/m$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/m;->i:Ljava/util/List;

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/m$a;->b:Lcom/applovin/impl/m$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/m;->j:Ljava/util/List;

    return-object p1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/m;->k:Ljava/util/List;

    return-object p1
.end method

.method protected d(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/m$a;->a:Lcom/applovin/impl/m$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/m;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/m$a;->b:Lcom/applovin/impl/m$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/m;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/m;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected e(I)Lcom/applovin/impl/v2;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/m$a;->a:Lcom/applovin/impl/m$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "INFO"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/m$a;->b:Lcom/applovin/impl/m$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "BIDDERS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "WATERFALL"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public j()Lcom/applovin/impl/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m;->f:Lcom/applovin/impl/o;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/m;->h:Ljava/lang/String;

    return-object v0
.end method
