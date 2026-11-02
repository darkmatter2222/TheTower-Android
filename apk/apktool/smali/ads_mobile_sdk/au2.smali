.class public final Lads_mobile_sdk/au2;
.super Lcom/google/common/collect/ForwardingQueue;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:Lkotlinx/coroutines/sync/Mutex;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    invoke-direct {p0, v0}, Lads_mobile_sdk/au2;-><init>(Ljava/util/LinkedList;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedList;)V
    .locals 2

    .line 4
    const-string v0, "preloadedAdItemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingQueue;-><init>()V

    .line 28
    iput-object p1, p0, Lads_mobile_sdk/au2;->a:Ljava/util/LinkedList;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-static {v1, p1, v0}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p1

    iput-object p1, p0, Lads_mobile_sdk/au2;->b:Lkotlinx/coroutines/sync/Mutex;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 21
    check-cast p1, Lads_mobile_sdk/yt2;

    .line 22
    const-string v0, "itemToAdd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lads_mobile_sdk/zt2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lads_mobile_sdk/zt2;-><init>(Lads_mobile_sdk/au2;Lads_mobile_sdk/yt2;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x1

    invoke-static {v1, v0, p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Lads_mobile_sdk/yt2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lads_mobile_sdk/yt2;

    .line 22
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final delegate()Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lads_mobile_sdk/au2;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final delegate()Ljava/util/Collection;
    .locals 1

    .line 4
    iget-object v0, p0, Lads_mobile_sdk/au2;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final delegate()Ljava/util/Queue;
    .locals 1

    .line 81
    iget-object v0, p0, Lads_mobile_sdk/au2;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1

    .line 21
    instance-of v0, p1, Lads_mobile_sdk/yt2;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lads_mobile_sdk/yt2;

    .line 22
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingCollection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
