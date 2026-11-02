.class public final Lcom/ironsource/Ja$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/Ja;->a(Lcom/ironsource/S2;Lcom/ironsource/m3;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/Ja;

.field final synthetic b:Lcom/ironsource/S2;

.field final synthetic c:Lcom/ironsource/m3;

.field final synthetic d:Ljava/lang/Long;


# direct methods
.method public static synthetic $r8$lambda$Gu1pkzQnMO81tQMvjyXF1j0A3hs(Lcom/ironsource/Ja;Lcom/ironsource/S2;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/Ja$d;->a(Lcom/ironsource/Ja;Lcom/ironsource/S2;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ry5ruh4D5nh6gf3nzyKYZ_diAec(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/m3;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/ironsource/Ja$d;->a(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/m3;)V

    return-void
.end method

.method constructor <init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/m3;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    iput-object p2, p0, Lcom/ironsource/Ja$d;->b:Lcom/ironsource/S2;

    iput-object p3, p0, Lcom/ironsource/Ja$d;->c:Lcom/ironsource/m3;

    iput-object p4, p0, Lcom/ironsource/Ja$d;->d:Ljava/lang/Long;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/m3;)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/m3;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/Ja;Lcom/ironsource/S2;Ljava/lang/Long;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/ironsource/Ma;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/Ma;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Ljava/lang/Long;)V

    .line 3
    invoke-virtual {p0, v0}, Lcom/ironsource/Ja;->a(Lcom/ironsource/Sa;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->j()Lcom/ironsource/d3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->j()Lcom/ironsource/d3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->j()Lcom/ironsource/d3;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, v1}, Lcom/ironsource/Fg;->a(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->a()Lcom/ironsource/p0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    iget-object v2, p0, Lcom/ironsource/Ja$d;->b:Lcom/ironsource/S2;

    iget-object v3, p0, Lcom/ironsource/Ja$d;->c:Lcom/ironsource/m3;

    new-instance v4, Lcom/ironsource/Ja$d$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, v3}, Lcom/ironsource/Ja$d$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Lcom/ironsource/m3;)V

    invoke-virtual {v0, v4}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    invoke-virtual {v0}, Lcom/ironsource/Ja;->a()Lcom/ironsource/p0;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/Ja$d;->a:Lcom/ironsource/Ja;

    iget-object v2, p0, Lcom/ironsource/Ja$d;->b:Lcom/ironsource/S2;

    iget-object v3, p0, Lcom/ironsource/Ja$d;->d:Ljava/lang/Long;

    new-instance v4, Lcom/ironsource/Ja$d$$ExternalSyntheticLambda1;

    invoke-direct {v4, v1, v2, v3}, Lcom/ironsource/Ja$d$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/Ja;Lcom/ironsource/S2;Ljava/lang/Long;)V

    invoke-virtual {v0, v4}, Lcom/ironsource/yb;->a(Ljava/lang/Runnable;)V

    return-void
.end method
