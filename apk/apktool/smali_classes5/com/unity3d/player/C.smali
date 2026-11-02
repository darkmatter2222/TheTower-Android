.class public final Lcom/unity3d/player/C;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/unity3d/player/w;

.field public final synthetic b:Lcom/unity3d/player/D;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/D;Landroid/content/Context;Lcom/unity3d/player/w;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/unity3d/player/C;->b:Lcom/unity3d/player/D;

    iput-object p3, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/w;

    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 391
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/unity3d/player/C;->b:Lcom/unity3d/player/D;

    iget-object p1, p1, Lcom/unity3d/player/D;->h:Lcom/unity3d/player/y;

    .line 265
    iget-object p1, p1, Lcom/unity3d/player/y;->e:Lcom/unity3d/player/a/x;

    if-eqz p1, :cond_0

    .line 48
    iget-object p1, p1, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p1, Lcom/unity3d/player/a/w;->a:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    return v1

    :cond_1
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x42

    if-ne p1, v0, :cond_3

    .line 399
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 400
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/high16 v2, 0x20000

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    .line 402
    iget-object p1, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/w;

    const/4 p2, 0x0

    .line 220
    invoke-virtual {p1}, Lcom/unity3d/player/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/unity3d/player/w;->a(Ljava/lang/String;Z)V

    return v1

    :cond_3
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_4

    .line 406
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 408
    iget-object p1, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/w;

    .line 220
    invoke-virtual {p1}, Lcom/unity3d/player/w;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lcom/unity3d/player/w;->a(Ljava/lang/String;Z)V

    return v1

    .line 412
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onSelectionChanged(II)V
    .locals 1

    .line 435
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 436
    iget-object v0, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/w;

    sub-int/2addr p2, p1

    .line 240
    iget-object v0, v0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0, p1, p2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputSelection(II)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 0

    .line 418
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 428
    iget-object p1, p0, Lcom/unity3d/player/C;->a:Lcom/unity3d/player/w;

    invoke-virtual {p1}, Lcom/unity3d/player/w;->c()V

    :cond_0
    return-void
.end method
