.class public abstract Lcom/applovin/impl/c7;
.super Lcom/applovin/impl/r3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/c7$b;
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

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/v2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getSdk()Lcom/applovin/impl/sdk/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c7;->b:Lcom/applovin/impl/sdk/l;

    return-object v0
.end method

.method public initialize(Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/g7;",
            ">;",
            "Lcom/applovin/impl/sdk/l;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/applovin/impl/c7;->b:Lcom/applovin/impl/sdk/l;

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Lcom/applovin/impl/q0;->b()Lcom/applovin/impl/q0$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/applovin/impl/q0$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->t0()Lcom/applovin/impl/f7;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/f7;->b()Z

    move-result v5

    if-nez v5, :cond_0

    .line 12
    const-string p2, "Has User Consent"

    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/c7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/v2;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/applovin/impl/g7;

    .line 17
    invoke-virtual {p2}, Lcom/applovin/impl/g7;->a()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {p2}, Lcom/applovin/impl/g7;->f()Lcom/applovin/impl/g7$a;

    move-result-object v2

    sget-object v6, Lcom/applovin/impl/g7$a;->a:Lcom/applovin/impl/g7$a;

    if-ne v2, v6, :cond_2

    .line 22
    invoke-virtual {p2}, Lcom/applovin/impl/g7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/applovin/impl/c7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/v2;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p2}, Lcom/applovin/impl/g7;->f()Lcom/applovin/impl/g7$a;

    move-result-object v2

    sget-object v6, Lcom/applovin/impl/g7$a;->b:Lcom/applovin/impl/g7$a;

    if-ne v2, v6, :cond_1

    .line 26
    invoke-virtual {p2}, Lcom/applovin/impl/g7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/applovin/impl/c7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/v2;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_1

    .line 29
    invoke-virtual {p2}, Lcom/applovin/impl/g7;->f()Lcom/applovin/impl/g7$a;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/g7$a;->b:Lcom/applovin/impl/g7$a;

    if-ne v1, v2, :cond_1

    .line 32
    invoke-virtual {p2}, Lcom/applovin/impl/g7;->b()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, v0}, Lcom/applovin/impl/c7;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/applovin/impl/v2;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_4
    new-instance v0, Lcom/applovin/impl/c7$a;

    move-object v2, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/c7$a;-><init>(Lcom/applovin/impl/c7;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    iput-object v0, v1, Lcom/applovin/impl/c7;->c:Lcom/applovin/impl/w2;

    .line 84
    invoke-virtual {v0}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

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
    const-string p1, "Network Consent Statuses"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 7
    iget-object v0, p0, Lcom/applovin/impl/c7;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
