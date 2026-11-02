.class public final Lcom/unity3d/player/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/Semaphore;

.field public final synthetic b:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/unity3d/player/E0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-object p2, p0, Lcom/unity3d/player/E0;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/unity3d/player/E0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativePause(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/unity3d/player/E0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/unity3d/player/UnityPlayer;->mQuitting:Z

    .line 655
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->shutdown()V

    .line 656
    iget-object v0, p0, Lcom/unity3d/player/E0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mqueueDestroy(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/E0;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
