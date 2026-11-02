.class public Lcom/applovin/impl/e4;
.super Lcom/applovin/impl/v2;
.source "SourceFile"


# instance fields
.field private final n:Lcom/applovin/impl/i3;

.field private final o:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/i3;Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/v2$c;->e:Lcom/applovin/impl/v2$c;

    invoke-direct {p0, v0}, Lcom/applovin/impl/v2;-><init>(Lcom/applovin/impl/v2$c;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    .line 4
    iput-object p2, p0, Lcom/applovin/impl/e4;->o:Landroid/content/Context;

    .line 6
    invoke-direct {p0}, Lcom/applovin/impl/e4;->t()Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/v2;->c:Landroid/text/SpannedString;

    .line 7
    invoke-direct {p0}, Lcom/applovin/impl/e4;->s()Landroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/v2;->d:Landroid/text/SpannedString;

    return-void
.end method

.method private q()Landroid/text/SpannedString;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->z()Z

    move-result v0

    const/high16 v1, -0x10000

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v2, -0x1000000

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v3, "ADAPTER  "

    const v4, -0x777778

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v3, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v3}, Lcom/applovin/impl/i3;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    iget-object v3, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v3}, Lcom/applovin/impl/i3;->A()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 10
    iget-object v3, p0, Lcom/applovin/impl/e4;->o:Landroid/content/Context;

    sget v4, Lcom/applovin/sdk/R$color;->applovin_sdk_orangeColor:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    const-string v4, "  LATEST  "

    invoke-static {v4, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    iget-object v3, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v3}, Lcom/applovin/impl/i3;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v2}, Lcom/applovin/impl/i3;->B()Z

    move-result v2

    if-nez v2, :cond_1

    .line 16
    new-instance v2, Landroid/text/SpannableString;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    const-string v2, "INCOMPATIBLE WITH MAX SDK VERSION"

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 20
    :cond_1
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 24
    :cond_2
    const-string v0, "Adapter Found"

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    .line 29
    :cond_3
    const-string v0, "Adapter Missing"

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method

.method private s()Landroid/text/SpannedString;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/e4;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/applovin/impl/e4;->u()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    new-instance v1, Landroid/text/SpannableString;

    const-string v2, "\n"

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 6
    invoke-direct {p0}, Lcom/applovin/impl/e4;->q()Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->q()Lcom/applovin/impl/i3$a;

    move-result-object v1

    sget-object v3, Lcom/applovin/impl/i3$a;->d:Lcom/applovin/impl/i3$a;

    const/high16 v4, -0x10000

    if-ne v1, v3, :cond_1

    .line 10
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    const-string v1, "Invalid Integration"

    invoke-static {v1, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->q()Lcom/applovin/impl/i3$a;

    move-result-object v1

    sget-object v3, Lcom/applovin/impl/i3$a;->c:Lcom/applovin/impl/i3$a;

    if-ne v1, v3, :cond_2

    .line 15
    iget-object v1, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->E()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 18
    const-string v1, "Mismatched SDK/Adapter Versions"

    invoke-static {v1, v4}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 22
    :cond_2
    :goto_0
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private t()Landroid/text/SpannedString;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/e4;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    const v0, -0x777778

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v1}, Lcom/applovin/impl/i3;->g()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method

.method private u()Landroid/text/SpannedString;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->F()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "SDK\t\t\t\t\t  "

    const v3, -0x777778

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSubSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v2}, Lcom/applovin/impl/i3;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Retrieving SDK Version..."

    goto :goto_0

    :cond_1
    const-string v0, "SDK Found"

    :goto_0
    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0

    .line 16
    :cond_2
    const-string v0, "SDK Missing"

    const/high16 v1, -0x10000

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->createListItemDetailSpannedString(Ljava/lang/String;I)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/applovin/impl/e4;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_disclosure_arrow:I

    return v0

    :cond_0
    invoke-super {p0}, Lcom/applovin/impl/v2;->h()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/e4;->o:Landroid/content/Context;

    sget v1, Lcom/applovin/sdk/R$color;->applovin_sdk_disclosureButtonColor:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->h()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    .line 2
    :cond_0
    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_mediation_placeholder:I

    return v0
.end method

.method public o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0}, Lcom/applovin/impl/i3;->q()Lcom/applovin/impl/i3$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/i3$a;->b:Lcom/applovin/impl/i3$a;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Lcom/applovin/impl/i3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediatedNetworkListItemViewModel{text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/v2;->c:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", detailText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/v2;->d:Landroid/text/SpannedString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/e4;->n:Lcom/applovin/impl/i3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
