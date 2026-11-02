.class public abstract Lcom/applovin/impl/g0;
.super Lcom/applovin/impl/r3;
.source "SourceFile"


# instance fields
.field private b:Lcom/applovin/impl/sdk/l;

.field private c:Lcom/applovin/impl/w2;

.field private d:Ljava/util/List;

.field private final e:Ljava/util/Set;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ListView;


# direct methods
.method public static synthetic $r8$lambda$cRKdsJNMOqRYt-tw7UyGC7BeCb4(Lcom/applovin/impl/g0;Ljava/util/List;Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/g0;->a(Ljava/util/List;Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/r3;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/g0;->e:Ljava/util/Set;

    return-void
.end method

.method private a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 49
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    return p1

    :cond_0
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark_bordered:I

    return p1
.end method

.method static synthetic a(Lcom/applovin/impl/g0;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g0;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/applovin/impl/f0;

    .line 19
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 21
    invoke-virtual {v2}, Lcom/applovin/impl/f0;->a()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    .line 24
    iget-object v6, p0, Lcom/applovin/impl/g0;->e:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/high16 v7, -0x1000000

    if-eqz v6, :cond_2

    .line 26
    invoke-virtual {v2}, Lcom/applovin/impl/f0;->d()Ljava/util/Map;

    move-result-object v6

    .line 27
    invoke-virtual {v2}, Lcom/applovin/impl/f0;->c()Ljava/util/Map;

    move-result-object v8

    .line 29
    const-string v9, "PARAMETERS: "

    const v10, -0x777778

    invoke-static {v9, v10}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 30
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    const-string v11, "None"

    if-nez v9, :cond_0

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v9}, Lcom/applovin/impl/sdk/utils/JsonUtils;->maybeConvertToIndentedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_0
    move-object v6, v11

    :goto_1
    invoke-static {v6, v7}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 31
    const-string v6, "\nOPTIONS: "

    invoke-static {v6, v10}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/JsonUtils;->maybeConvertToIndentedString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    :cond_1
    invoke-static {v11, v7}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-eqz v5, :cond_2

    .line 36
    const-string v6, "\nERROR: "

    const/high16 v8, -0x10000

    invoke-static {v6, v8}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 37
    invoke-static {v4, v8}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 41
    :cond_2
    sget-object v4, Lcom/applovin/impl/v2$c;->e:Lcom/applovin/impl/v2$c;

    invoke-static {v4}, Lcom/applovin/impl/v2;->a(Lcom/applovin/impl/v2$c;)Lcom/applovin/impl/v2$b;

    move-result-object v4

    .line 42
    invoke-virtual {v2}, Lcom/applovin/impl/f0;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x12

    const/4 v8, 0x1

    invoke-static {v2, v7, v6, v8}, Lcom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Landroid/text/SpannedString;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/applovin/impl/v2$b;->b(Landroid/text/SpannedString;)Lcom/applovin/impl/v2$b;

    move-result-object v2

    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v2, v4}, Lcom/applovin/impl/v2$b;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/v2$b;

    move-result-object v2

    .line 44
    invoke-direct {p0, v5}, Lcom/applovin/impl/g0;->a(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/v2$b;->a(I)Lcom/applovin/impl/v2$b;

    move-result-object v2

    .line 45
    invoke-direct {p0, v5}, Lcom/applovin/impl/g0;->b(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/applovin/impl/v2$b;->b(I)Lcom/applovin/impl/v2$b;

    move-result-object v2

    .line 46
    invoke-virtual {v2, v8}, Lcom/applovin/impl/v2$b;->a(Z)Lcom/applovin/impl/v2$b;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private a()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/applovin/impl/g0;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/applovin/impl/g0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/applovin/impl/g0;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/g0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/applovin/impl/g0;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic a(Ljava/util/List;Lcom/applovin/impl/n2;Lcom/applovin/impl/v2;)V
    .locals 1

    .line 2
    invoke-virtual {p2}, Lcom/applovin/impl/n2;->a()I

    move-result p2

    .line 3
    iget-object p3, p0, Lcom/applovin/impl/g0;->e:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    iget-object p3, p0, Lcom/applovin/impl/g0;->e:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object p3, p0, Lcom/applovin/impl/g0;->e:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/g0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/g0;->d:Ljava/util/List;

    .line 13
    iget-object p1, p0, Lcom/applovin/impl/g0;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    return-void
.end method

.method private b(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    sget p1, Lcom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    goto :goto_0
.end method


# virtual methods
.method protected getSdk()Lcom/applovin/impl/sdk/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g0;->b:Lcom/applovin/impl/sdk/l;

    return-object v0
.end method

.method public initialize(Ljava/util/List;Lcom/applovin/impl/sdk/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/f0;",
            ">;",
            "Lcom/applovin/impl/sdk/l;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/applovin/impl/g0;->b:Lcom/applovin/impl/sdk/l;

    .line 2
    invoke-direct {p0, p1}, Lcom/applovin/impl/g0;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/g0;->d:Ljava/util/List;

    .line 4
    new-instance p2, Lcom/applovin/impl/g0$a;

    invoke-direct {p2, p0, p0}, Lcom/applovin/impl/g0$a;-><init>(Lcom/applovin/impl/g0;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/applovin/impl/g0;->c:Lcom/applovin/impl/w2;

    .line 31
    new-instance v0, Lcom/applovin/impl/g0$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/g0$$ExternalSyntheticLambda0;-><init>(Lcom/applovin/impl/g0;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/applovin/impl/w2;->a(Lcom/applovin/impl/w2$a;)V

    .line 46
    iget-object p1, p0, Lcom/applovin/impl/g0;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/applovin/impl/r3;->onCreate(Landroid/os/Bundle;)V

    .line 3
    const-string p1, "Axon Events"

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 6
    sget p1, Lcom/applovin/sdk/R$layout;->mediation_debugger_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 9
    sget p1, Lcom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/applovin/impl/g0;->g:Landroid/widget/ListView;

    .line 10
    iget-object v0, p0, Lcom/applovin/impl/g0;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 12
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/applovin/impl/g0;->f:Landroid/widget/TextView;

    const/16 v0, 0x11

    .line 13
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 14
    iget-object p1, p0, Lcom/applovin/impl/g0;->f:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 15
    iget-object p1, p0, Lcom/applovin/impl/g0;->f:Landroid/widget/TextView;

    sget v1, Lcom/applovin/sdk/R$string;->applovin_mediation_debugger_no_axon_events_text:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/applovin/sdk/R$dimen;->default_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 17
    iget-object v1, p0, Lcom/applovin/impl/g0;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const p1, 0x1020002

    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 20
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 21
    iget-object v0, p0, Lcom/applovin/impl/g0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-direct {p0}, Lcom/applovin/impl/g0;->a()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/applovin/sdk/R$menu;->axon_events_activity_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/applovin/sdk/R$id;->action_clear:I

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/g0;->b:Lcom/applovin/impl/sdk/l;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/l;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/EventServiceImpl;->clearTrackedAxonEvents()V

    .line 4
    iget-object p1, p0, Lcom/applovin/impl/g0;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lcom/applovin/impl/g0;->c:Lcom/applovin/impl/w2;

    invoke-virtual {p1}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    .line 7
    invoke-direct {p0}, Lcom/applovin/impl/g0;->a()V

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
