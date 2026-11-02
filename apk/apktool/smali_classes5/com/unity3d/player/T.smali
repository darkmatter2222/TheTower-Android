.class public final Lcom/unity3d/player/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/U;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/U;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 102
    iget-object p2, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    iget-object p2, p2, Lcom/unity3d/player/U;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->updateGLDisplay(ILandroid/view/Surface;)V

    .line 103
    iget-object p1, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    iget-object p1, p1, Lcom/unity3d/player/U;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->sendSurfaceChangedEvent()V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    iget-object v0, v0, Lcom/unity3d/player/U;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->updateGLDisplay(ILandroid/view/Surface;)V

    .line 97
    iget-object p1, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    iget-object v0, p1, Lcom/unity3d/player/U;->c:Lcom/unity3d/player/a/C;

    iget-object p1, p1, Lcom/unity3d/player/U;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 114
    iget-object v1, v0, Lcom/unity3d/player/a/C;->b:Lcom/unity3d/player/a/B;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    iget-object v1, v0, Lcom/unity3d/player/a/C;->b:Lcom/unity3d/player/a/B;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 119
    iget-object v0, v0, Lcom/unity3d/player/a/C;->b:Lcom/unity3d/player/a/B;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 108
    iget-object p1, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    iget-object v0, p1, Lcom/unity3d/player/U;->c:Lcom/unity3d/player/a/C;

    iget-object p1, p1, Lcom/unity3d/player/U;->a:Lcom/unity3d/player/a/g;

    .line 97
    iget-object v1, v0, Lcom/unity3d/player/a/C;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, v0, Lcom/unity3d/player/a/C;->b:Lcom/unity3d/player/a/B;

    if-nez v1, :cond_0

    .line 101
    new-instance v1, Lcom/unity3d/player/a/B;

    iget-object v2, v0, Lcom/unity3d/player/a/C;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/unity3d/player/a/B;-><init>(Lcom/unity3d/player/a/C;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/unity3d/player/a/C;->b:Lcom/unity3d/player/a/B;

    .line 103
    :cond_0
    iget-object v0, v0, Lcom/unity3d/player/a/C;->b:Lcom/unity3d/player/a/B;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/a/B;->a(Landroid/view/SurfaceView;)V

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/unity3d/player/T;->a:Lcom/unity3d/player/U;

    iget-object p1, p1, Lcom/unity3d/player/U;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->updateGLDisplay(ILandroid/view/Surface;)V

    return-void
.end method
