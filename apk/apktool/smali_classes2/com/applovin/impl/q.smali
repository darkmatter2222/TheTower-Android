.class public abstract Lcom/applovin/impl/q;
.super Lcom/applovin/impl/r3;
.source "SourceFile"


# instance fields
.field private b:Lcom/applovin/impl/sdk/l;

.field private c:Lcom/applovin/impl/w2;

.field private d:Ljava/util/List;

.field private e:Z

.field private f:Landroid/widget/ListView;


# direct methods
.method public static synthetic $r8$lambda$kSJKa4RMkEAGCUl5MvtfoJNzSuU(Lcom/applovin/impl/q;Ljava/util/List;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/q;->a(Ljava/util/List;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n7xCklFpfX_lSYjBBVA-44VS0Hg(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;Lcom/applovin/mediation/MaxDebuggerAdUnitWaterfallsListActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/q;->a(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;Lcom/applovin/mediation/MaxDebuggerAdUnitWaterfallsListActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tXGUzCGUxx0hG43Y4a9qHQvkAnU(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/applovin/impl/q;->a(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r3;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/q;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 7

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/n;

    .line 20
    new-instance v2, Landroid/text/SpannableStringBuilder;

    const-string v3, "ID\t\t\t\t\t\t"

    const v4, -0x777778

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 21
    invoke-virtual {v1}, Lcom/applovin/impl/n;->c()Ljava/lang/String;

    move-result-object v3

    const/high16 v5, -0x1000000

    invoke-static {v3, v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 22
    new-instance v3, Landroid/text/SpannedString;

    const-string v6, "\n"

    invoke-direct {v3, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 23
    const-string v3, "FORMAT  "

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    invoke-virtual {v1}, Lcom/applovin/impl/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26
    sget-object v3, Lcom/applovin/impl/v2$c;->e:Lcom/applovin/impl/v2$c;

    invoke-static {v3}, Lcom/applovin/impl/v2;->a(Lcom/applovin/impl/v2$c;)Lcom/applovin/impl/v2$b;

    move-result-object v3

    .line 27
    invoke-virtual {v1}, Lcom/applovin/impl/n;->d()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x12

    const/4 v6, 0x1

    invoke-static {v1, v5, v4, v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/applovin/impl/v2$b;->b(Landroid/text/SpannedString;)Lcom/applovin/impl/v2$b;

    move-result-object v1

    new-instance v3, Landroid/text/SpannedString;

    invoke-direct {v3, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v1, v3}, Lcom/applovin/impl/v2$b;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/v2$b;

    move-result-object v1

    .line 29
    invoke-virtual {v1, p0}, Lcom/applovin/impl/v2$b;->a(Landroid/content/Context;)Lcom/applovin/impl/v2$b;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v6}, Lcom/applovin/impl/v2$b;->a(Z)Lcom/applovin/impl/v2$b;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static synthetic a(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p0, v0, v0, p1}, Lcom/applovin/impl/l;->initialize(Lcom/applovin/impl/n;Lcom/applovin/impl/o;Lcom/applovin/impl/o8;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method private static synthetic a(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;Lcom/applovin/mediation/MaxDebuggerAdUnitWaterfallsListActivity;)V
    .locals 0

    .line 16
    invoke-virtual {p2, p0, p1}, Lcom/applovin/impl/p;->initialize(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/applovin/impl/sdk/l;Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 0

    .line 2
    invoke-virtual {p3}, Lcom/applovin/impl/n2;->a()I

    move-result p3

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/n;

    .line 5
    invoke-virtual {p1}, Lcom/applovin/impl/n;->g()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 7
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->e()Lcom/applovin/impl/c;

    move-result-object p3

    new-instance p4, Lcom/applovin/impl/q$$ExternalSyntheticLambda0;

    invoke-direct {p4, p1, p2}, Lcom/applovin/impl/q$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;)V

    const-class p1, Lcom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    invoke-static {p0, p1, p3, p4}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/l;->e()Lcom/applovin/impl/c;

    move-result-object p3

    new-instance p4, Lcom/applovin/impl/q$$ExternalSyntheticLambda1;

    invoke-direct {p4, p1, p2}, Lcom/applovin/impl/q$$ExternalSyntheticLambda1;-><init>(Lcom/applovin/impl/n;Lcom/applovin/impl/sdk/l;)V

    const-class p1, Lcom/applovin/mediation/MaxDebuggerAdUnitWaterfallsListActivity;

    invoke-static {p0, p1, p3, p4}, Lcom/applovin/impl/d;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/c;Lcom/applovin/impl/d$b;)V

    return-void
.end method


# virtual methods
.method protected getSdk()Lcom/applovin/impl/sdk/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q;->b:Lcom/applovin/impl/sdk/l;

    return-object v0
.end method

.method public initialize(Ljava/util/List;ZLcom/applovin/impl/sdk/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/n;",
            ">;Z",
            "Lcom/applovin/impl/sdk/l;",
            ")V"
        }
    .end annotation

    .line 1
    iput-boolean p2, p0, Lcom/applovin/impl/q;->e:Z

    .line 2
    iput-object p3, p0, Lcom/applovin/impl/q;->b:Lcom/applovin/impl/sdk/l;

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/q;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/q;->d:Ljava/util/List;

    .line 5
    new-instance p2, Lcom/applovin/impl/q$a;

    invoke-direct {p2, p0, p0, p1}, Lcom/applovin/impl/q$a;-><init>(Lcom/applovin/impl/q;Landroid/content/Context;Ljava/util/List;)V

    iput-object p2, p0, Lcom/applovin/impl/q;->c:Lcom/applovin/impl/w2;

    .line 32
    new-instance v0, Lcom/applovin/impl/q$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/applovin/impl/q$$ExternalSyntheticLambda2;-><init>(Lcom/applovin/impl/q;Ljava/util/List;Lcom/applovin/impl/sdk/l;)V

    invoke-virtual {p2, v0}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/w2$a;)V

    .line 51
    iget-object p1, p0, Lcom/applovin/impl/q;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    .line 53
    invoke-virtual {p0}, Lcom/applovin/impl/r3;->markInitialized()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/applovin/impl/r3;->onCreate(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lcom/applovin/impl/r3;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 9
    :cond_0
    iget-boolean p1, p0, Lcom/applovin/impl/q;->e:Z

    if-eqz p1, :cond_1

    const-string p1, "Selective Init "

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string v0, "Ad Units"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 12
    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 14
    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/q;->f:Landroid/widget/ListView;

    .line 15
    iget-object v0, p0, Lcom/applovin/impl/q;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
