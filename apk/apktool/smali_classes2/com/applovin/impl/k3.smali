.class public Lcom/applovin/impl/k3;
.super Lcom/applovin/impl/w2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/k3$a;
    }
.end annotation


# instance fields
.field private final e:Lcom/applovin/impl/i3;

.field private f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;

.field private final j:Ljava/util/List;

.field private k:Landroid/text/SpannedString;


# direct methods
.method constructor <init>(Lcom/applovin/impl/i3;Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/applovin/impl/w2;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    .line 5
    invoke-virtual {p1}, Lcom/applovin/impl/i3;->q()Lcom/applovin/impl/i3$a;

    move-result-object p2

    sget-object v0, Lcom/applovin/impl/i3$a;->d:Lcom/applovin/impl/i3$a;

    if-ne p2, v0, :cond_0

    .line 7
    new-instance p2, Landroid/text/SpannableString;

    const-string v0, "Tap for more information"

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {p2, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 9
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/applovin/impl/k3;->k:Landroid/text/SpannedString;

    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Landroid/text/SpannedString;

    const-string v0, ""

    invoke-direct {p2, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/applovin/impl/k3;->k:Landroid/text/SpannedString;

    .line 16
    :goto_0
    invoke-direct {p0}, Lcom/applovin/impl/k3;->g()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/k3;->f:Ljava/util/List;

    .line 17
    invoke-virtual {p1}, Lcom/applovin/impl/i3;->n()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/applovin/impl/k3;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/k3;->g:Ljava/util/List;

    .line 18
    invoke-direct {p0}, Lcom/applovin/impl/k3;->e()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/k3;->h:Ljava/util/List;

    .line 19
    invoke-virtual {p1}, Lcom/applovin/impl/i3;->f()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/applovin/impl/k3;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/k3;->i:Ljava/util/List;

    .line 20
    invoke-direct {p0}, Lcom/applovin/impl/k3;->j()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/k3;->j:Ljava/util/List;

    .line 22
    invoke-virtual {p0}, Lcom/applovin/impl/w2;->notifyDataSetChanged()V

    return-void
.end method

.method private a(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 33
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark_bordered:I

    return p1

    :cond_0
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    return p1
.end method

.method private a(Lcom/applovin/impl/i3$b;)Lcom/applovin/impl/v2;
    .locals 2

    .line 11
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 12
    sget-object v1, Lcom/applovin/impl/i3$b;->h:Lcom/applovin/impl/i3$b;

    if-ne p1, v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/applovin/impl/w2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->a(Landroid/content/Context;)Lcom/applovin/impl/v2$b;

    .line 17
    :cond_0
    const-string v1, "Test Mode"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 18
    invoke-virtual {p1}, Lcom/applovin/impl/i3$b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lcom/applovin/impl/i3$b;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(I)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 20
    const-string v1, "Restart Required"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->b(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lcom/applovin/impl/i3$b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/v2$b;->a(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Lcom/applovin/impl/v2$b;->a(Z)Lcom/applovin/impl/v2$b;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/v2;
    .locals 1

    if-eqz p3, :cond_0

    .line 24
    sget-object v0, Lcom/applovin/impl/v2$c;->f:Lcom/applovin/impl/v2$c;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/applovin/impl/v2$c;->e:Lcom/applovin/impl/v2$c;

    :goto_0
    invoke-static {v0}, Lcom/applovin/impl/v2;->a(Lcom/applovin/impl/v2$c;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/k3;->k:Landroid/text/SpannedString;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/applovin/impl/v2$b;->a(Landroid/text/SpannedString;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    .line 27
    const-string v0, "Instructions"

    invoke-virtual {p1, v0}, Lcom/applovin/impl/v2$b;->b(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p2}, Lcom/applovin/impl/v2$b;->a(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    if-eqz p3, :cond_2

    .line 29
    sget p2, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark_bordered:I

    goto :goto_2

    :cond_2
    invoke-direct {p0, p4}, Lcom/applovin/impl/k3;->c(Z)I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Lcom/applovin/impl/v2$b;->a(I)Lcom/applovin/impl/v2$b;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 30
    iget-object p2, p0, Lcom/applovin/impl/w2;->a:Landroid/content/Context;

    sget p4, Lcom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    goto :goto_3

    :cond_3
    invoke-direct {p0, p4}, Lcom/applovin/impl/k3;->d(Z)I

    move-result p2

    :goto_3
    invoke-virtual {p1, p2}, Lcom/applovin/impl/v2$b;->b(I)Lcom/applovin/impl/v2$b;

    move-result-object p1

    xor-int/lit8 p2, p3, 0x1

    .line 31
    invoke-virtual {p1, p2}, Lcom/applovin/impl/v2$b;->a(Z)Lcom/applovin/impl/v2$b;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/l1;

    .line 7
    invoke-virtual {v1}, Lcom/applovin/impl/l1;->b()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/applovin/impl/l1;->a()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1}, Lcom/applovin/impl/l1;->c()Z

    move-result v1

    const/4 v4, 0x1

    .line 10
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/applovin/impl/k3;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private b(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/w2;->a:Landroid/content/Context;

    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_checkmarkColor:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/w2;->a:Landroid/content/Context;

    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    goto :goto_0
.end method

.method private b(Ljava/util/List;)Ljava/util/List;
    .locals 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/u4;

    .line 7
    invoke-virtual {v1}, Lcom/applovin/impl/u4;->b()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1}, Lcom/applovin/impl/u4;->a()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v1}, Lcom/applovin/impl/u4;->c()Z

    move-result v1

    const/4 v4, 0x1

    .line 10
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/applovin/impl/k3;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private c(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 24
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_x_mark:I

    return p1

    :cond_0
    sget p1, Lcom/applovin/sdk/R$drawable;->applovin_ic_warning:I

    return p1
.end method

.method private c(Ljava/util/List;)Lcom/applovin/impl/v2;
    .locals 3

    .line 20
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 21
    const-string v1, "Region/VPN Required"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, ", "

    invoke-static {p1, v2, v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->implode(Ljava/util/Collection;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object p1

    return-object p1
.end method

.method private d(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/applovin/impl/w2;->a:Landroid/content/Context;

    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_xmarkColor:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/w2;->a:Landroid/content/Context;

    sget v0, Lcom/applovin/sdk/R$color;->applovin_sdk_warningColor:I

    goto :goto_0
.end method

.method private d()Lcom/applovin/impl/v2;
    .locals 3

    .line 20
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 21
    const-string v1, "Adapter"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    .line 22
    invoke-virtual {v1}, Lcom/applovin/impl/i3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->z()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/k3;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->a(I)Lcom/applovin/impl/v2$b;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    .line 27
    invoke-virtual {v2}, Lcom/applovin/impl/i3;->z()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/k3;->b(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/v2$b;->b(I)Lcom/applovin/impl/v2$b;

    .line 30
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method private e()Ljava/util/List;
    .locals 5

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    iget-object v2, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v2}, Lcom/applovin/impl/i3;->D()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    invoke-static {}, Lcom/applovin/impl/sdk/l;->I0()Z

    move-result v2

    .line 27
    const-string v3, "Java 8"

    const-string v4, "For optimal performance, please enable Java 8 support. See: https://support.axon.ai/en/max/android/overview/integration"

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/applovin/impl/k3;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private f()Lcom/applovin/impl/v2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 4
    const-string v1, "Initialization Status"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    .line 5
    invoke-virtual {v1}, Lcom/applovin/impl/i3;->i()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/k3;->f(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->a(Z)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 1

    .line 8
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_SUCCESS:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_UNKNOWN:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 9
    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->DOES_NOT_APPLY:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 10
    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZED_FAILURE:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 16
    const-string p1, "Failure"

    return-object p1

    .line 18
    :cond_1
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    invoke-virtual {v0}, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 20
    const-string p1, "Initializing..."

    return-object p1

    .line 24
    :cond_2
    const-string p1, "Not Initialized"

    return-object p1

    .line 25
    :cond_3
    :goto_0
    const-string p1, "Initialized"

    return-object p1
.end method

.method private g()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/k3;->i()Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->addObjectIfExists(Ljava/lang/Object;Ljava/util/List;)Z

    .line 3
    invoke-direct {p0}, Lcom/applovin/impl/k3;->d()Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->addObjectIfExists(Ljava/lang/Object;Ljava/util/List;)Z

    .line 4
    invoke-direct {p0}, Lcom/applovin/impl/k3;->f()Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->addObjectIfExists(Ljava/lang/Object;Ljava/util/List;)Z

    return-object v0
.end method

.method private i()Lcom/applovin/impl/v2;
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/v2;->a()Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 2
    const-string v1, "SDK"

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    .line 3
    invoke-virtual {v1}, Lcom/applovin/impl/i3;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->c(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->F()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/k3;->a(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/v2$b;->a(I)Lcom/applovin/impl/v2$b;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    .line 8
    invoke-virtual {v2}, Lcom/applovin/impl/i3;->F()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/applovin/impl/k3;->b(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/v2$b;->b(I)Lcom/applovin/impl/v2$b;

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    sget-object v1, Lcom/applovin/impl/v2$c;->e:Lcom/applovin/impl/v2$c;

    invoke-static {v1}, Lcom/applovin/impl/v2;->a(Lcom/applovin/impl/v2$c;)Lcom/applovin/impl/v2$b;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    .line 6
    invoke-virtual {v2}, Lcom/applovin/impl/i3;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/applovin/impl/v2$b;->d(Ljava/lang/String;)Lcom/applovin/impl/v2$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/applovin/impl/v2$b;->a()Lcom/applovin/impl/v2;

    move-result-object v1

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->y()Lcom/applovin/impl/i3$b;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/i3$b;->d:Lcom/applovin/impl/i3$b;

    if-ne v1, v2, :cond_1

    return-object v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->s()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->s()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/k3;->c(Ljava/util/List;)Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->y()Lcom/applovin/impl/i3$b;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/applovin/impl/k3;->a(Lcom/applovin/impl/i3$b;)Lcom/applovin/impl/v2;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public a(Lcom/applovin/impl/n2;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/n2;->b()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/k3$a;->e:Lcom/applovin/impl/k3$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/n2;->a()I

    move-result p1

    iget-object v0, p0, Lcom/applovin/impl/k3;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b()I
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/k3$a;->f:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method protected c(I)Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/k3$a;->a:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/k3;->f:Ljava/util/List;

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/k3$a;->b:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/k3;->g:Ljava/util/List;

    return-object p1

    .line 9
    :cond_1
    sget-object v0, Lcom/applovin/impl/k3$a;->c:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/k3;->h:Ljava/util/List;

    return-object p1

    .line 13
    :cond_2
    sget-object v0, Lcom/applovin/impl/k3$a;->d:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 15
    iget-object p1, p0, Lcom/applovin/impl/k3;->i:Ljava/util/List;

    return-object p1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/k3;->j:Ljava/util/List;

    return-object p1
.end method

.method protected d(I)I
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/k3$a;->a:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/k3;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/k3$a;->b:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/k3;->g:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 9
    :cond_1
    sget-object v0, Lcom/applovin/impl/k3$a;->c:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 11
    iget-object p1, p0, Lcom/applovin/impl/k3;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 13
    :cond_2
    sget-object v0, Lcom/applovin/impl/k3$a;->d:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 15
    iget-object p1, p0, Lcom/applovin/impl/k3;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 19
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/k3;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected e(I)Lcom/applovin/impl/v2;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/k3$a;->a:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "INTEGRATIONS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/k3$a;->b:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 7
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "PERMISSIONS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 9
    :cond_1
    sget-object v0, Lcom/applovin/impl/k3$a;->c:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 11
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "CONFIGURATION"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_2
    sget-object v0, Lcom/applovin/impl/k3$a;->d:Lcom/applovin/impl/k3$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 15
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "DEPENDENCIES"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 19
    :cond_3
    new-instance p1, Lcom/applovin/impl/a5;

    const-string v0, "TEST ADS"

    invoke-direct {p1, v0}, Lcom/applovin/impl/a5;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public h()Lcom/applovin/impl/i3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/k3;->e:Lcom/applovin/impl/i3;

    return-object v0
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/k3;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/k3;->f:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediatedNetworkListAdapter{}"

    return-object v0
.end method
