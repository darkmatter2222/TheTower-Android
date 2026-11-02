.class public final Lads_mobile_sdk/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lads_mobile_sdk/jq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lads_mobile_sdk/jq;

    invoke-direct {v0}, Lads_mobile_sdk/jq;-><init>()V

    sput-object v0, Lads_mobile_sdk/jq;->a:Lads_mobile_sdk/jq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/px2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/gq;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/gq;

    iget v1, v0, Lads_mobile_sdk/gq;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/gq;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/gq;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/gq;-><init>(Lads_mobile_sdk/jq;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/gq;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 53
    iget v2, v0, Lads_mobile_sdk/gq;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/gq;->a:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p2, v0, Lads_mobile_sdk/gq;->b:Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Lads_mobile_sdk/gq;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/px2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 57
    sget-object p3, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/vf0;

    .line 58
    iget-object p3, p3, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 59
    invoke-interface {p3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/cm1;

    .line 60
    iput-object p1, v0, Lads_mobile_sdk/gq;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/gq;->b:Lkotlin/jvm/functions/Function2;

    iput v5, v0, Lads_mobile_sdk/gq;->e:I

    .line 61
    iget-object p3, p3, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    .line 62
    invoke-interface {p3, v0}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p3, v2, :cond_5

    goto :goto_1

    :cond_5
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne p3, v1, :cond_6

    goto :goto_4

    .line 63
    :cond_6
    :goto_2
    iput-object p2, v0, Lads_mobile_sdk/gq;->a:Ljava/lang/Object;

    iput-object v6, v0, Lads_mobile_sdk/gq;->b:Lkotlin/jvm/functions/Function2;

    iput v4, v0, Lads_mobile_sdk/gq;->e:I

    .line 64
    iget-object p3, p1, Lads_mobile_sdk/px2;->a:Lkotlinx/coroutines/CoroutineScope;

    .line 65
    invoke-interface {p3}, Lkotlinx/coroutines/CoroutineScope;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    new-instance v2, Lads_mobile_sdk/xw2;

    invoke-direct {v2, p1, v6}, Lads_mobile_sdk/xw2;-><init>(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)V

    invoke-static {p3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, p2

    .line 66
    :goto_3
    iput-object v6, v0, Lads_mobile_sdk/gq;->a:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/gq;->e:I

    invoke-interface {p1, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    return-object p1
.end method

.method public final b(Lads_mobile_sdk/px2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p3, Lads_mobile_sdk/hq;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/hq;

    iget v1, v0, Lads_mobile_sdk/hq;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/hq;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/hq;

    invoke-direct {v0, p0, p3}, Lads_mobile_sdk/hq;-><init>(Lads_mobile_sdk/jq;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lads_mobile_sdk/hq;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 43
    iget v2, v0, Lads_mobile_sdk/hq;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/hq;->a:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object p2, v0, Lads_mobile_sdk/hq;->b:Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Lads_mobile_sdk/hq;->a:Ljava/lang/Object;

    check-cast p1, Lads_mobile_sdk/px2;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 47
    sget-object p3, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/vf0;

    .line 48
    iget-object p3, p3, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 49
    invoke-interface {p3}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lads_mobile_sdk/cm1;

    .line 50
    iput-object p1, v0, Lads_mobile_sdk/hq;->a:Ljava/lang/Object;

    iput-object p2, v0, Lads_mobile_sdk/hq;->b:Lkotlin/jvm/functions/Function2;

    iput v6, v0, Lads_mobile_sdk/hq;->e:I

    .line 51
    iget-object p3, p3, Lads_mobile_sdk/cm1;->z:Lkotlinx/coroutines/CompletableJob;

    .line 52
    invoke-interface {p3, v0}, Lkotlinx/coroutines/CompletableJob;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p3, v2, :cond_5

    goto :goto_1

    :cond_5
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne p3, v1, :cond_6

    goto :goto_4

    .line 53
    :cond_6
    :goto_2
    iput-object p2, v0, Lads_mobile_sdk/hq;->a:Ljava/lang/Object;

    iput-object v3, v0, Lads_mobile_sdk/hq;->b:Lkotlin/jvm/functions/Function2;

    iput v5, v0, Lads_mobile_sdk/hq;->e:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {p1, v0}, Lads_mobile_sdk/px2;->a(Lads_mobile_sdk/px2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    goto :goto_4

    :cond_7
    move-object p1, p2

    .line 55
    :goto_3
    iput-object v3, v0, Lads_mobile_sdk/hq;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/hq;->e:I

    invoke-interface {p1, p3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    return-object p1
.end method
