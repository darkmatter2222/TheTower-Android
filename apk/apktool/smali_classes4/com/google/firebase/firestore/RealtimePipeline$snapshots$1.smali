.class final Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RealtimePipeline.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/RealtimePipeline;->snapshots(Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;)Lkotlinx/coroutines/flow/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.firebase.firestore.RealtimePipeline$snapshots$1"
    f = "RealtimePipeline.kt"
    i = {}
    l = {
        0x1ac
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/google/firebase/firestore/RealtimePipeline;


# direct methods
.method public static synthetic $r8$lambda$MzL5Z7Hhuk5JQOkzoBh_57K2XEI(Lcom/google/firebase/firestore/ListenerRegistration;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->invokeSuspend$lambda$1(Lcom/google/firebase/firestore/ListenerRegistration;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$afFiHJyDUQzdLo_0j5icGAtjxrE(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->invokeSuspend$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/RealtimePipeline;",
            "Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->this$0:Lcom/google/firebase/firestore/RealtimePipeline;

    iput-object p2, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->$options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 423
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/ProducerScope;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->box-impl(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ChannelResult;

    return-void

    .line 425
    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    invoke-interface {p0, p2}, Lkotlinx/coroutines/channels/ProducerScope;->close(Ljava/lang/Throwable;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    return-void
.end method

.method private static final invokeSuspend$lambda$1(Lcom/google/firebase/firestore/ListenerRegistration;)Lkotlin/Unit;
    .locals 0

    .line 428
    invoke-interface {p0}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;

    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->this$0:Lcom/google/firebase/firestore/RealtimePipeline;

    iget-object v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->$options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;-><init>(Lcom/google/firebase/firestore/RealtimePipeline;Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/google/firebase/firestore/RealtimePipeline$Snapshot;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 419
    iget v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    .line 421
    iget-object v1, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->this$0:Lcom/google/firebase/firestore/RealtimePipeline;

    iget-object v3, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->$options:Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;

    new-instance v4, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1$$ExternalSyntheticLambda0;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/firebase/firestore/RealtimePipeline;->addSnapshotListener(Lcom/google/firebase/firestore/RealtimePipeline$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v1

    .line 428
    new-instance v3, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/ListenerRegistration;)V

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/google/firebase/firestore/RealtimePipeline$snapshots$1;->label:I

    invoke-static {p1, v3, v1}, Lkotlinx/coroutines/channels/ProduceKt;->awaitClose(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 429
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
