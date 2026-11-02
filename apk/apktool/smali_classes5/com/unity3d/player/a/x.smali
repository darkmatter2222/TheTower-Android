.class public Lcom/unity3d/player/a/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/unity3d/player/a/w;

.field public final b:Ljava/lang/Runnable;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/unity3d/player/a/x;->c:Z

    .line 16
    iput-object p1, p0, Lcom/unity3d/player/a/x;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public registerOnBackPressedCallback()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    if-eqz v0, :cond_0

    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/a/x;->b:Ljava/lang/Runnable;

    .line 70
    new-instance v1, Lcom/unity3d/player/a/w;

    invoke-direct {v1, v0}, Lcom/unity3d/player/a/w;-><init>(Ljava/lang/Runnable;)V

    .line 24
    iput-object v1, p0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    return-void
.end method

.method public unregisterOnBackPressedCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    return-void
.end method
