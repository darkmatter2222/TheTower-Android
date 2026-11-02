.class public final Lcom/unity3d/player/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/c1;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/c1;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/unity3d/player/b1;->a:Lcom/unity3d/player/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/unity3d/player/b1;->a:Lcom/unity3d/player/c1;

    .line 126
    iget-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    if-eqz v1, :cond_0

    .line 128
    iget-object v2, v0, Lcom/unity3d/player/c1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2, v1}, Lcom/unity3d/player/UnityPlayer;->removeViewFromPlayer(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, v0, Lcom/unity3d/player/c1;->i:Z

    .line 130
    iget-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    invoke-virtual {v1}, Lcom/unity3d/player/VideoPlayer;->destroyPlayer()V

    const/4 v1, 0x0

    .line 131
    iput-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    .line 132
    iget-object v0, v0, Lcom/unity3d/player/c1;->c:Lcom/unity3d/player/i0;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/unity3d/player/i0;->a()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/b1;->a:Lcom/unity3d/player/c1;

    iget-object v0, v0, Lcom/unity3d/player/c1;->a:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->onResume()V

    return-void
.end method
