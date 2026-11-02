.class public final Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;
.super Ljava/lang/Object;
.source "Database.kt"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/database/DatabaseKt$childEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001a\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/google/firebase/database/DatabaseKt$childEvents$1$listener$1",
        "Lcom/google/firebase/database/ChildEventListener;",
        "onChildAdded",
        "",
        "snapshot",
        "Lcom/google/firebase/database/DataSnapshot;",
        "previousChildName",
        "",
        "onChildChanged",
        "onChildRemoved",
        "onChildMoved",
        "onCancelled",
        "error",
        "Lcom/google/firebase/database/DatabaseError;",
        "com.google.firebase-firebase-database"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "Lcom/google/firebase/database/ChildEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_childEvents:Lcom/google/firebase/database/Query;


# direct methods
.method public static synthetic $r8$lambda$6uniD7UGtQhFYjsdqHjGlvGAHKI(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildMoved$lambda$3(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$96YxkzSmj8Hb9J_G2MxFIxBIXSU(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildRemoved$lambda$2(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B7ThXybcP1fqLWelFLhiePC8Y3Y(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildChanged$lambda$1(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y2QgBVJ9CqORN_pM42-cBdrNKpE(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->onChildAdded$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/database/Query;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/google/firebase/database/ChildEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onChildAdded$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1

    .line 102
    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v0, Lcom/google/firebase/database/ChildEvent$Added;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/ChildEvent$Added;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onChildChanged$lambda$1(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1

    .line 106
    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v0, Lcom/google/firebase/database/ChildEvent$Changed;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/ChildEvent$Changed;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onChildMoved$lambda$3(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 1

    .line 114
    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v0, Lcom/google/firebase/database/ChildEvent$Moved;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/ChildEvent$Moved;-><init>(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final onChildRemoved$lambda$2(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 1

    .line 110
    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    new-instance v0, Lcom/google/firebase/database/ChildEvent$Removed;

    invoke-direct {v0, p1}, Lcom/google/firebase/database/ChildEvent$Removed;-><init>(Lcom/google/firebase/database/DataSnapshot;)V

    invoke-static {p0, v0}, Lkotlinx/coroutines/channels/ChannelsKt;->trySendBlocking(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 2

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    const-string v1, "Error getting Query childEvent"

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel(Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda3;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, p2}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda2;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3

    const-string v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$this_childEvents:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->repo:Lcom/google/firebase/database/core/Repo;

    iget-object v1, p0, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v2, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Lcom/google/firebase/database/DatabaseKt$childEvents$1$listener$1$$ExternalSyntheticLambda1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/database/DataSnapshot;)V

    invoke-virtual {v0, v2}, Lcom/google/firebase/database/core/Repo;->scheduleNow(Ljava/lang/Runnable;)V

    return-void
.end method
