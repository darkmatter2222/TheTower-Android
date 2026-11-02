.class public final Lcom/unity3d/player/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/UnityPlayerForGameActivity;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForGameActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/unity3d/player/O0;->a:Lcom/unity3d/player/UnityPlayerForGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/unity3d/player/O0;->a:Lcom/unity3d/player/UnityPlayerForGameActivity;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayerForGameActivity;->-$$Nest$fgetm_PersistentUnitySurface(Lcom/unity3d/player/UnityPlayerForGameActivity;)Lcom/unity3d/player/a/C;

    move-result-object v0

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

    .line 79
    iget-object p1, p0, Lcom/unity3d/player/O0;->a:Lcom/unity3d/player/UnityPlayerForGameActivity;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayerForGameActivity;->-$$Nest$fgetm_PersistentUnitySurface(Lcom/unity3d/player/UnityPlayerForGameActivity;)Lcom/unity3d/player/a/C;

    move-result-object v0

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayerForGameActivity;->m_SurfaceView:Landroid/view/SurfaceView;

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

    :cond_1
    return-void
.end method
