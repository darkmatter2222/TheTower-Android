.class public final Lcom/unity3d/player/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/unity3d/player/UnityAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityAccessibilityDelegate;)V
    .locals 1

    .line 476
    iput-object p1, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 478
    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 480
    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 482
    invoke-virtual {p0, p1}, Lcom/unity3d/player/P;->onAccessibilityStateChanged(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 490
    iget-object v0, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    return-void
.end method

.method public final onAccessibilityStateChanged(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 498
    iget-object p1, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 501
    iget-object p1, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 504
    iget-object p1, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/P;->onTouchExplorationStateChanged(Z)V

    return-void

    .line 508
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 509
    iget-object p1, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 512
    invoke-virtual {p0, v0}, Lcom/unity3d/player/P;->onTouchExplorationStateChanged(Z)V

    return-void
.end method

.method public final onTouchExplorationStateChanged(Z)V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;

    move-result-object v1

    new-instance v2, Lcom/unity3d/player/UnityAccessibilityDelegate$a;

    invoke-direct {v2, v0}, Lcom/unity3d/player/UnityAccessibilityDelegate$a;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_1

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetb(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 534
    :goto_1
    iget-object v0, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgeti(Lcom/unity3d/player/UnityAccessibilityDelegate;)Z

    move-result v1

    if-ne v1, p1, :cond_2

    return-void

    .line 539
    :cond_2
    invoke-static {v0, p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fputi(Lcom/unity3d/player/UnityAccessibilityDelegate;Z)V

    .line 543
    new-instance v1, Lcom/unity3d/player/O;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgeta(Lcom/unity3d/player/UnityAccessibilityDelegate;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v0, p1}, Lcom/unity3d/player/O;-><init>(Lcom/unity3d/player/UnityPlayer;Z)V

    .line 551
    iget-object p1, p0, Lcom/unity3d/player/P;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {p1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgeta(Lcom/unity3d/player/UnityAccessibilityDelegate;)Lcom/unity3d/player/UnityPlayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/unity3d/player/UnityPlayer;->invokeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
