.class public final Lcom/unity3d/player/B;
.super Lcom/unity3d/player/w;
.source "SourceFile"


# instance fields
.field public h:Z

.field public i:Landroid/os/Handler;

.field public j:Lcom/unity3d/player/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/w;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/unity3d/player/B;->h:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 26
    iget-boolean v0, p0, Lcom/unity3d/player/B;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 30
    iget-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iget-object v0, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 43
    new-instance v0, Lcom/unity3d/player/z;

    invoke-direct {v0, p0}, Lcom/unity3d/player/z;-><init>(Lcom/unity3d/player/B;)V

    iput-object v0, p0, Lcom/unity3d/player/B;->j:Lcom/unity3d/player/z;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unity3d/player/B;->i:Landroid/os/Handler;

    .line 52
    iget-object v1, p0, Lcom/unity3d/player/B;->j:Lcom/unity3d/player/z;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/unity3d/player/B;->h:Z

    return-void
.end method

.method public createEditText(Lcom/unity3d/player/w;)Landroid/widget/EditText;
    .locals 2

    .line 87
    new-instance v0, Lcom/unity3d/player/A;

    iget-object v1, p0, Lcom/unity3d/player/w;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/unity3d/player/A;-><init>(Landroid/content/Context;Lcom/unity3d/player/w;)V

    return-object v0
.end method

.method public final hide()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/unity3d/player/B;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unity3d/player/B;->j:Lcom/unity3d/player/z;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/w;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/unity3d/player/B;->h:Z

    .line 68
    invoke-virtual {p0}, Lcom/unity3d/player/w;->invokeOnClose()V

    return-void
.end method

.method public final isConsumeOutsideTouchesEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setHideInputField(Z)V
    .locals 1

    .line 279
    iput-boolean p1, p0, Lcom/unity3d/player/w;->d:Z

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :goto_0
    iget-object p1, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 81
    iget-object p1, p0, Lcom/unity3d/player/w;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
