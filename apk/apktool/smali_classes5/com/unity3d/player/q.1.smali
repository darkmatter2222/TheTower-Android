.class public final Lcom/unity3d/player/q;
.super Lcom/unity3d/player/a/x;
.source "SourceFile"


# instance fields
.field public d:Lcom/unity3d/player/a/e;

.field public final e:Landroid/window/OnBackInvokedDispatcher;

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/window/OnBackInvokedDispatcher;ILjava/lang/Runnable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p3}, Lcom/unity3d/player/a/x;-><init>(Ljava/lang/Runnable;)V

    const/4 p3, 0x0

    .line 15
    iput-object p3, p0, Lcom/unity3d/player/q;->d:Lcom/unity3d/player/a/e;

    .line 22
    iput p2, p0, Lcom/unity3d/player/q;->f:I

    .line 23
    iput-object p1, p0, Lcom/unity3d/player/q;->e:Landroid/window/OnBackInvokedDispatcher;

    return-void
.end method

.method public static a(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/unity3d/player/a/x;
    .locals 1

    .line 29
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/unity3d/player/a/f;->a(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    .line 38
    new-instance v0, Lcom/unity3d/player/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/q;-><init>(Landroid/window/OnBackInvokedDispatcher;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Lcom/unity3d/player/a/x;

    invoke-direct {v0, p2}, Lcom/unity3d/player/a/x;-><init>(Ljava/lang/Runnable;)V

    .line 50
    :goto_0
    invoke-virtual {v0}, Lcom/unity3d/player/a/x;->registerOnBackPressedCallback()V

    return-object v0
.end method


# virtual methods
.method public registerOnBackPressedCallback()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0}, Lcom/unity3d/player/a/x;->registerOnBackPressedCallback()V

    .line 62
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    .line 110
    new-instance v1, Lcom/unity3d/player/a/e;

    invoke-direct {v1, v0}, Lcom/unity3d/player/a/e;-><init>(Lcom/unity3d/player/a/w;)V

    .line 64
    iput-object v1, p0, Lcom/unity3d/player/q;->d:Lcom/unity3d/player/a/e;

    .line 65
    iget-object v0, p0, Lcom/unity3d/player/q;->e:Landroid/window/OnBackInvokedDispatcher;

    iget v2, p0, Lcom/unity3d/player/q;->f:I

    invoke-static {v0, v2, v1}, Lcom/unity3d/player/a/f;->a(Landroid/window/OnBackInvokedDispatcher;ILcom/unity3d/player/a/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterOnBackPressedCallback()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/unity3d/player/a/x;->a:Lcom/unity3d/player/a/w;

    if-eqz v0, :cond_1

    .line 75
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/unity3d/player/q;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Lcom/unity3d/player/q;->d:Lcom/unity3d/player/a/e;

    invoke-static {v0, v1}, Lcom/unity3d/player/a/f;->a(Landroid/window/OnBackInvokedDispatcher;Lcom/unity3d/player/a/e;)V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/unity3d/player/q;->d:Lcom/unity3d/player/a/e;

    .line 80
    :cond_0
    invoke-super {p0}, Lcom/unity3d/player/a/x;->unregisterOnBackPressedCallback()V

    :cond_1
    return-void
.end method
