.class public final Lcom/ironsource/environment/workerthread/WorkerResult$Failed;
.super Lcom/ironsource/environment/workerthread/WorkerResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/environment/workerthread/WorkerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ironsource/environment/workerthread/WorkerResult<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ironsource/environment/workerthread/WorkerResult;-><init>(Lcom/ironsource/environment/workerthread/WorkerResult-IA;)V

    .line 2
    iput-object p1, p0, Lcom/ironsource/environment/workerthread/WorkerResult$Failed;->callable:Ljava/util/concurrent/Callable;

    .line 3
    iput-object p2, p0, Lcom/ironsource/environment/workerthread/WorkerResult$Failed;->exception:Ljava/lang/Exception;

    return-void
.end method
