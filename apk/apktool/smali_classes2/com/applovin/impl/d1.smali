.class public abstract Lcom/applovin/impl/d1;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Lcom/applovin/impl/e1;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/d1;)Lcom/applovin/impl/e1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d1;->a:Lcom/applovin/impl/e1;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    .line 5
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x11

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v2, 0x41900000    # 18.0f

    .line 7
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p1, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 11
    iget-object v1, p0, Lcom/applovin/impl/d1;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p1, p0, Lcom/applovin/impl/d1;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/e1;Lcom/applovin/impl/c;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/d1;->a:Lcom/applovin/impl/e1;

    .line 4
    new-instance v0, Lcom/applovin/impl/d1$a;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/d1$a;-><init>(Lcom/applovin/impl/d1;Lcom/applovin/impl/c;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/w2$a;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const-string p1, "MAX Creative Debugger"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x1020002

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/applovin/impl/d1;->b:Landroid/widget/FrameLayout;

    .line 8
    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/d1;->c:Landroid/widget/ListView;

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/d1;->b:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/applovin/impl/sdk/l;->F0:Lcom/applovin/impl/sdk/l;

    invoke-static {p1, v0}, Lcom/applovin/impl/k8;->a(Landroid/view/View;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/d1;->a:Lcom/applovin/impl/e1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/w2$a;)V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/d1;->a:Lcom/applovin/impl/e1;

    invoke-virtual {v0}, Lcom/applovin/impl/e1;->g()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/d1;->a:Lcom/applovin/impl/e1;

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/d1;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    iget-object v0, p0, Lcom/applovin/impl/d1;->a:Lcom/applovin/impl/e1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/applovin/impl/e1;->e()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->z()Lcom/applovin/impl/f1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/f1;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    sget v0, Lcom/applovin/sdk/R$string;->applovin_creative_debugger_disabled_text:I

    invoke-direct {p0, v0}, Lcom/applovin/impl/d1;->a(I)V

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/d1;->a:Lcom/applovin/impl/e1;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/applovin/impl/e1;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    sget v0, Lcom/applovin/sdk/R$string;->applovin_creative_debugger_no_ads_text:I

    invoke-direct {p0, v0}, Lcom/applovin/impl/d1;->a(I)V

    :cond_2
    return-void
.end method
