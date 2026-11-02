.class public Lcom/ironsource/mediationsdk/o;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/o$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ironsource/mediationsdk/ISBannerSize;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/ironsource/mediationsdk/o$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/o;->c:Z

    if-nez p2, :cond_0

    .line 12
    sget-object p2, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 14
    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/o;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/o;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/o;->c:Z

    if-nez p2, :cond_0

    .line 34
    sget-object p2, Lcom/ironsource/mediationsdk/ISBannerSize;->BANNER:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 36
    :cond_0
    iput-object p2, p0, Lcom/ironsource/mediationsdk/o;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/o;->c:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ironsource/mediationsdk/o;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    .line 3
    iput-object v0, p0, Lcom/ironsource/mediationsdk/o;->b:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/ironsource/mediationsdk/o;->d:Lcom/ironsource/mediationsdk/o$a;

    .line 6
    invoke-static {}, Lcom/ironsource/F2;->a()Lcom/ironsource/F2;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/F2;->a(Lcom/ironsource/Ia;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/o;->c:Z

    return v0
.end method

.method protected c()Lcom/ironsource/mediationsdk/o;
    .locals 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/o;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/o;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/o;-><init>(Landroid/content/Context;Lcom/ironsource/mediationsdk/ISBannerSize;)V

    .line 2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/o;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/ironsource/mediationsdk/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Lcom/ironsource/mediationsdk/ISBannerSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/o;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/o;->d:Lcom/ironsource/mediationsdk/o$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/ironsource/mediationsdk/o$a;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setBannerSize(Lcom/ironsource/mediationsdk/ISBannerSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ironsource/mediationsdk/o;->a:Lcom/ironsource/mediationsdk/ISBannerSize;

    return-void
.end method
