.class public final Lcom/unity3d/player/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Ljava/util/concurrent/Semaphore;

.field public final synthetic d:Lcom/unity3d/player/UnityPlayerForActivityOrService;

.field public final synthetic e:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/util/concurrent/Semaphore;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lcom/unity3d/player/s0;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-object p2, p0, Lcom/unity3d/player/s0;->c:Ljava/util/concurrent/Semaphore;

    iput-object p3, p0, Lcom/unity3d/player/s0;->d:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 448
    iput-boolean p1, p0, Lcom/unity3d/player/s0;->a:Z

    .line 449
    iput-boolean p1, p0, Lcom/unity3d/player/s0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/unity3d/player/s0;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/a/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/unity3d/player/s0;->d:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    new-instance v1, Lcom/unity3d/player/q0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/q0;-><init>(Lcom/unity3d/player/s0;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->setOnHandleFocusListener(Lcom/unity3d/player/a/y;)V

    .line 470
    iget-object v0, p0, Lcom/unity3d/player/s0;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$fgetmSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)Lcom/unity3d/player/a/r;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/r0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/r0;-><init>(Lcom/unity3d/player/s0;)V

    invoke-interface {v0, v1}, Lcom/unity3d/player/a/r;->a(Lcom/unity3d/player/r0;)V

    .line 478
    iget-object v0, p0, Lcom/unity3d/player/s0;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mdismissSoftInput(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    :cond_0
    return-void
.end method
