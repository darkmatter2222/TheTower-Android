.class public final Lads_mobile_sdk/ox2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic a:Lkotlin/coroutines/CoroutineContext;

.field public final synthetic b:Lads_mobile_sdk/ei1;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lads_mobile_sdk/ei1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ox2;->a:Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lads_mobile_sdk/ox2;->b:Lads_mobile_sdk/ei1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 240
    check-cast p1, Lads_mobile_sdk/sx2;

    .line 241
    instance-of v0, p1, Lads_mobile_sdk/rx2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lads_mobile_sdk/ox2;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lads_mobile_sdk/lx2;

    iget-object v3, p0, Lads_mobile_sdk/ox2;->b:Lads_mobile_sdk/ei1;

    invoke-direct {v2, v3, p1, v1}, Lads_mobile_sdk/lx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 246
    :cond_1
    instance-of v0, p1, Lads_mobile_sdk/qx2;

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lads_mobile_sdk/ox2;->a:Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lads_mobile_sdk/nx2;

    iget-object v3, p0, Lads_mobile_sdk/ox2;->b:Lads_mobile_sdk/ei1;

    invoke-direct {v2, v3, p1, v1}, Lads_mobile_sdk/nx2;-><init>(Lads_mobile_sdk/ei1;Lads_mobile_sdk/sx2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v2, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 252
    :cond_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
