.class public final Lcom/unity3d/player/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-wide p1, p0, Lcom/unity3d/player/u;->a:J

    .line 567
    iput-wide p3, p0, Lcom/unity3d/player/u;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 573
    iget-wide v0, p0, Lcom/unity3d/player/u;->a:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->beginProxyCall(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 578
    :cond_0
    :try_start_0
    iget-wide v0, p0, Lcom/unity3d/player/u;->b:J

    invoke-static {v0, v1}, Lcom/unity3d/player/ReflectionHelper;->-$$Nest$smnativeProxyFinalize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/unity3d/player/ReflectionHelper;->endProxyCall()V

    .line 583
    throw v0
.end method
