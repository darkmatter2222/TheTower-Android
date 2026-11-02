.class public final Lcom/unity3d/player/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Semaphore;

.field public final synthetic b:Lcom/unity3d/player/UnityAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityAccessibilityDelegate;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/unity3d/player/E;->b:Lcom/unity3d/player/UnityAccessibilityDelegate;

    iput-object p2, p0, Lcom/unity3d/player/E;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/E;->b:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgetc(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v1, Lcom/unity3d/player/P;

    invoke-direct {v1, v0}, Lcom/unity3d/player/P;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fputd(Lcom/unity3d/player/UnityAccessibilityDelegate;Lcom/unity3d/player/P;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/E;->b:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fgete(Lcom/unity3d/player/UnityAccessibilityDelegate;)Landroid/view/accessibility/CaptioningManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Lcom/unity3d/player/S;

    iget-object v2, p0, Lcom/unity3d/player/E;->b:Lcom/unity3d/player/UnityAccessibilityDelegate;

    invoke-direct {v1, v2}, Lcom/unity3d/player/S;-><init>(Lcom/unity3d/player/UnityAccessibilityDelegate;)V

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$fputf(Lcom/unity3d/player/UnityAccessibilityDelegate;Lcom/unity3d/player/S;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/unity3d/player/E;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/player/E;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 123
    throw v0
.end method
