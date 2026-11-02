.class Lcom/unity3d/coherence/CoherenceLibrary$1;
.super Ljava/lang/Object;
.source "CoherenceLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/coherence/CoherenceLibrary;->startPluginWarm(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$apiPtr:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-wide p1, p0, Lcom/unity3d/coherence/CoherenceLibrary$1;->val$apiPtr:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 68
    :try_start_0
    iget-wide v0, p0, Lcom/unity3d/coherence/CoherenceLibrary$1;->val$apiPtr:J

    invoke-static {v0, v1}, Lcom/unity3d/coherence/CoherenceBridge;->warmPlugins(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
