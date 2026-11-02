.class Lcom/applovin/impl/j7$b;
.super Lcom/applovin/impl/e4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/j7;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Lcom/applovin/impl/y2;

.field final synthetic q:Lcom/applovin/impl/j7;


# direct methods
.method constructor <init>(Lcom/applovin/impl/j7;Lcom/applovin/impl/i3;Landroid/content/Context;Lcom/applovin/impl/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/j7$b;->q:Lcom/applovin/impl/j7;

    iput-object p4, p0, Lcom/applovin/impl/j7$b;->p:Lcom/applovin/impl/y2;

    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/e4;-><init>(Lcom/applovin/impl/i3;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j7$b;->q:Lcom/applovin/impl/j7;

    invoke-static {v0}, Lcom/applovin/impl/j7;->c(Lcom/applovin/impl/j7;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/j7$b;->q:Lcom/applovin/impl/j7;

    invoke-static {v0}, Lcom/applovin/impl/j7;->c(Lcom/applovin/impl/j7;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/j7$b;->p:Lcom/applovin/impl/y2;

    invoke-virtual {v1}, Lcom/applovin/impl/y2;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget v0, Lcom/applovin/sdk/R$drawable;->applovin_ic_check_mark_borderless:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j7$b;->q:Lcom/applovin/impl/j7;

    invoke-static {v0}, Lcom/applovin/impl/j7;->c(Lcom/applovin/impl/j7;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/j7$b;->q:Lcom/applovin/impl/j7;

    invoke-static {v0}, Lcom/applovin/impl/j7;->c(Lcom/applovin/impl/j7;)Lcom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/l;->u0()Lcom/applovin/impl/l7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/l7;->b()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/j7$b;->p:Lcom/applovin/impl/y2;

    invoke-virtual {v1}, Lcom/applovin/impl/y2;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xffff01

    return v0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/applovin/impl/e4;->e()I

    move-result v0

    return v0
.end method

.method public k()Landroid/text/SpannedString;
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
    iget-object v1, p0, Lcom/applovin/impl/j7$b;->p:Lcom/applovin/impl/y2;

    invoke-virtual {v1}, Lcom/applovin/impl/y2;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Landroid/text/SpannedString;

    move-result-object v0

    return-object v0
.end method
