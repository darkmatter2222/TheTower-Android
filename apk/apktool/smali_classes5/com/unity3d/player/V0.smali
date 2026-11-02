.class public final Lcom/unity3d/player/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lcom/unity3d/player/VideoPlayer;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/unity3d/player/VideoPlayer;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    iput-object p1, p0, Lcom/unity3d/player/V0;->a:Lcom/unity3d/player/VideoPlayer;

    const/4 p1, 0x0

    .line 299
    iput-boolean p1, p0, Lcom/unity3d/player/V0;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x1388

    .line 304
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 306
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 309
    :goto_0
    iget-boolean v0, p0, Lcom/unity3d/player/V0;->b:Z

    if-nez v0, :cond_1

    .line 311
    invoke-static {}, Lcom/unity3d/player/VideoPlayer;->-$$Nest$sfgetLOG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Stopping the video player due to timeout."

    invoke-static {v0}, Lcom/unity3d/player/VideoPlayer;->-$$Nest$smLog(Ljava/lang/String;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/V0;->a:Lcom/unity3d/player/VideoPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/VideoPlayer;->cancelOnPrepare()V

    :cond_1
    return-void
.end method
