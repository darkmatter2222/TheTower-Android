.class public abstract Lcom/applovin/impl/q3;
.super Lcom/applovin/impl/r3;
.source "SourceFile"


# instance fields
.field private b:Lcom/applovin/impl/s3;

.field private c:Landroid/database/DataSetObserver;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/applovin/impl/a;


# direct methods
.method public static synthetic $r8$lambda$9mD71rewDV_6y0cMh-BkpBSbTog(Lcom/applovin/impl/q3;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/q3;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r3;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/q3;->f:Lcom/applovin/impl/a;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/applovin/impl/a;->b()V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/q3;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/impl/q3;->f:Lcom/applovin/impl/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/applovin/impl/q3;->f:Lcom/applovin/impl/a;

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/Context;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    invoke-virtual {v1}, Lcom/applovin/impl/s3;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/applovin/impl/u7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/q3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/q3;->a()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/q3;Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/q3;->b(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/q3;)Lcom/applovin/impl/s3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/s3;->q()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    const-string v0, "android.intent.extra.TITLE"

    const-string v2, "Mediation Debugger logs"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    const-string v0, "android.intent.extra.SUBJECT"

    const-string v2, "MAX Mediation Debugger logs"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 15
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->y()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/s3;->b(Z)V

    .line 20
    new-instance v0, Lcom/applovin/impl/q3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/q3$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/q3;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/q3;->a()V

    .line 6
    new-instance v0, Lcom/applovin/impl/a;

    const/16 v1, 0x32

    const v2, 0x101007a

    invoke-direct {v0, p0, v1, v2}, Lcom/applovin/impl/a;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/applovin/impl/q3;->f:Lcom/applovin/impl/a;

    const v1, -0x333334

    .line 7
    invoke-virtual {v0, v1}, Lcom/applovin/impl/a;->setColor(I)V

    .line 9
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 10
    iget-object v1, p0, Lcom/applovin/impl/q3;->d:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/applovin/impl/q3;->f:Lcom/applovin/impl/a;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/q3;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/applovin/impl/q3;->f:Lcom/applovin/impl/a;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/applovin/impl/q3;->f:Lcom/applovin/impl/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a;->a()V

    return-void
.end method


# virtual methods
.method protected getSdk()Lcom/applovin/impl/sdk/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->u()Lcom/applovin/impl/sdk/l;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/applovin/impl/r3;->onCreate(Landroid/os/Bundle;)V

    .line 4
    const-string p1, "MAX Mediation Debugger"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x1020002

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/applovin/impl/q3;->d:Landroid/widget/FrameLayout;

    .line 8
    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/q3;->e:Landroid/widget/ListView;

    .line 9
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/applovin/sdk/R$menu;->mediation_debugger_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/applovin/impl/r3;->onDestroy()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/q3;->c:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/w2$a;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    sget v0, Lcom/applovin/sdk/R$id;->action_share:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/applovin/impl/q3;->b()V

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    invoke-virtual {v0}, Lcom/applovin/impl/w2;->c()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/s3;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/applovin/impl/q3;->c()V

    :cond_0
    return-void
.end method

.method public setListAdapter(Lcom/applovin/impl/s3;Lcom/applovin/impl/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/q3;->c:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    .line 9
    new-instance p1, Lcom/applovin/impl/q3$a;

    invoke-direct {p1, p0}, Lcom/applovin/impl/q3$a;-><init>(Lcom/applovin/impl/q3;)V

    iput-object p1, p0, Lcom/applovin/impl/q3;->c:Landroid/database/DataSetObserver;

    .line 19
    invoke-direct {p0, p0}, Lcom/applovin/impl/q3;->b(Landroid/content/Context;)V

    .line 21
    iget-object p1, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    iget-object v0, p0, Lcom/applovin/impl/q3;->c:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 22
    iget-object p1, p0, Lcom/applovin/impl/q3;->b:Lcom/applovin/impl/s3;

    new-instance v0, Lcom/applovin/impl/q3$b;

    invoke-direct {v0, p0, p2}, Lcom/applovin/impl/q3$b;-><init>(Lcom/applovin/impl/q3;Lcom/applovin/impl/c;)V

    invoke-virtual {p1, v0}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/w2$a;)V

    return-void
.end method
