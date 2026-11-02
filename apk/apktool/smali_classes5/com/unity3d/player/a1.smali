.class public final Lcom/unity3d/player/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/c1;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/c1;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/unity3d/player/a1;->a:Lcom/unity3d/player/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/unity3d/player/a1;->a:Lcom/unity3d/player/c1;

    iget-object v1, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    if-eqz v1, :cond_0

    .line 107
    iget-object v0, v0, Lcom/unity3d/player/c1;->a:Lcom/unity3d/player/UnityPlayer;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->addViewToPlayer(Landroid/view/View;Z)Z

    .line 108
    iget-object v0, p0, Lcom/unity3d/player/a1;->a:Lcom/unity3d/player/c1;

    iput-boolean v2, v0, Lcom/unity3d/player/c1;->i:Z

    .line 109
    iget-object v0, v0, Lcom/unity3d/player/c1;->f:Lcom/unity3d/player/VideoPlayer;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
