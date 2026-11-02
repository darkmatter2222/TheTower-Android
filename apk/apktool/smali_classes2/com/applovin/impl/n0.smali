.class public abstract Lcom/applovin/impl/n0;
.super Lcom/applovin/impl/r3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/n0$c;
    }
.end annotation


# instance fields
.field private b:Lcom/applovin/impl/sdk/l;

.field private c:Lcom/applovin/impl/w2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r3;-><init>()V

    return-void
.end method

.method private a(Lcom/applovin/impl/g7;Z)Lcom/applovin/impl/v2;
    .locals 5

    .line 2
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/n0;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/l;->t0()Lcom/applovin/impl/f7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/f7;->b()Z

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/applovin/impl/g7;->f()Lcom/applovin/impl/g7$a;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/g7$a;->a:Lcom/applovin/impl/g7$a;

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lcom/applovin/impl/g7;->f()Lcom/applovin/impl/g7$a;

    move-result-object v2

    sget-object v4, Lcom/applovin/impl/g7$a;->b:Lcom/applovin/impl/g7$a;

    if-ne v2, v4, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/g7;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    goto :goto_3

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/applovin/impl/g7;->c()Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lcom/applovin/impl/g7;->f()Lcom/applovin/impl/g7$a;

    move-result-object v2

    if-ne v2, v3, :cond_2

    const-string v2, "IAB Vendor ID: "

    goto :goto_1

    :cond_2
    const-string v2, "Google ATP ID: "

    .line 22
    :goto_1
    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v3

    if-eqz p2, :cond_3

    const/high16 p2, -0x10000

    goto :goto_2

    :cond_3
    const/high16 p2, -0x1000000

    .line 23
    :goto_2
    invoke-virtual {v3, p2}, Lcom/applovin/impl/v2$b;->d(I)Lcom/applovin/impl/v2$b;

    move-result-object p2

    .line 24
    invoke-virtual {p2, v1}, Lcom/applovin/impl/v2$b;->b(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    invoke-virtual {p1}, Lcom/applovin/impl/g7;->d()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/applovin/impl/v2$b;->a(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    const/4 p2, 0x1

    .line 26
    invoke-virtual {p1, p2}, Lcom/applovin/impl/v2$b;->a(Z)Lcom/applovin/impl/v2$b;

    .line 33
    :goto_3
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/applovin/impl/n0;Lcom/applovin/impl/g7;Z)Lcom/applovin/impl/v2;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/n0;->a(Lcom/applovin/impl/g7;Z)Lcom/applovin/impl/v2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getSdk()Lcom/applovin/impl/sdk/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/n0;->b:Lcom/applovin/impl/sdk/l;

    return-object v0
.end method

.method public initialize(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/g7;",
            ">;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/g7;",
            ">;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/g7;",
            ">;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/g7;",
            ">;",
            "Ljava/util/List<",
            "Lcom/applovin/impl/g7;",
            ">;",
            "Lcom/applovin/impl/sdk/l;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p6, p0, Lcom/applovin/impl/n0;->b:Lcom/applovin/impl/sdk/l;

    .line 3
    new-instance v0, Lcom/applovin/impl/n0$a;

    move-object v2, p0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/n0$a;-><init>(Lcom/applovin/impl/n0;Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, v1, Lcom/applovin/impl/n0;->c:Lcom/applovin/impl/w2;

    .line 100
    new-instance p1, Lcom/applovin/impl/n0$b;

    invoke-direct {p1, p0}, Lcom/applovin/impl/n0$b;-><init>(Lcom/applovin/impl/n0;)V

    invoke-virtual {v0, p1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/w2$a;)V

    .line 110
    iget-object p1, v1, Lcom/applovin/impl/n0;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/applovin/impl/r3;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 4
    const-string p1, "Configured CMP Networks"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/n0;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
