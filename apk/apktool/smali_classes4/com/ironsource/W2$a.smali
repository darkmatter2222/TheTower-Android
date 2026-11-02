.class public final Lcom/ironsource/W2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/W2;->a()Lcom/ironsource/W2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/W2;


# direct methods
.method constructor <init>(Lcom/ironsource/W2;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 4

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v0}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/k8;->getSize()Lcom/ironsource/i8;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lcom/ironsource/i8;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/ironsource/i8;->a()I

    move-result v0

    const/16 v3, 0x11

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4
    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-static {v0}, Lcom/ironsource/W2;->a(Lcom/ironsource/W2;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v0}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v2}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 7
    :cond_1
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/ironsource/W2$a;->a:Lcom/ironsource/W2;

    invoke-virtual {v0}, Lcom/ironsource/W2;->d()Lcom/ironsource/k8;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method
