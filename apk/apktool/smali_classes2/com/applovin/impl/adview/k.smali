.class public Lcom/applovin/impl/adview/k;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/adview/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/g2;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/g2;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/adview/k;->a:Lcom/applovin/impl/g2;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/adview/k$a;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/applovin/impl/adview/k;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/applovin/impl/adview/k$a;->a()V

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/k;->a:Lcom/applovin/impl/g2;

    invoke-virtual {v0}, Lcom/applovin/impl/g2;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1}, Lcom/applovin/impl/adview/k$a;->b()V

    return-void

    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/applovin/impl/adview/k;->b:Z

    if-eqz p1, :cond_2

    .line 26
    invoke-interface {p1}, Lcom/applovin/impl/adview/k$a;->a()V

    :cond_2
    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/adview/k;->b:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/k;->a(Lcom/applovin/impl/adview/k$a;)V

    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/adview/k;->a:Lcom/applovin/impl/g2;

    invoke-virtual {v0}, Lcom/applovin/impl/g2;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
