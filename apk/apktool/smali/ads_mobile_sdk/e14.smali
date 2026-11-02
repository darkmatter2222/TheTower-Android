.class public final Lads_mobile_sdk/e14;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Lads_mobile_sdk/r14;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/e14;->b:Lads_mobile_sdk/r14;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lads_mobile_sdk/e14;

    iget-object v0, p0, Lads_mobile_sdk/e14;->b:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/e14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance p1, Lads_mobile_sdk/e14;

    iget-object v0, p0, Lads_mobile_sdk/e14;->b:Lads_mobile_sdk/r14;

    invoke-direct {p1, v0, p2}, Lads_mobile_sdk/e14;-><init>(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)V

    .line 3
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/e14;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 123
    iget v1, p0, Lads_mobile_sdk/e14;->a:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 124
    iget-object p1, p0, Lads_mobile_sdk/e14;->b:Lads_mobile_sdk/r14;

    iput v3, p0, Lads_mobile_sdk/e14;->a:I

    invoke-static {p1, p0}, Lads_mobile_sdk/r14;->c(Lads_mobile_sdk/r14;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    .line 125
    :cond_3
    :goto_0
    iget-object p1, p0, Lads_mobile_sdk/e14;->b:Lads_mobile_sdk/r14;

    iput v2, p0, Lads_mobile_sdk/e14;->a:I

    .line 126
    iget-object v1, p1, Lads_mobile_sdk/r14;->c:Lads_mobile_sdk/ex0;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    .line 132
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "https://pagead2.googlesyndication.com/omsdk/releases/live/omsdk-v1.js"

    aput-object v6, v4, v5

    const-string v5, "https://pagead2.googlesyndication.com/omsdk/releases/live/omid_session_bin.js"

    aput-object v5, v4, v3

    const-string v3, "https://www.googletagservices.com/activeview/js/current/lidar.js?cache=r20110914"

    aput-object v3, v4, v2

    .line 133
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 134
    const-string v3, "key"

    const-string v4, "gads:webview_prefetch_resources_url_list"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "defaultValue"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v3, Lads_mobile_sdk/yr;->g:Lads_mobile_sdk/qr;

    invoke-virtual {v1, v4, v2, v3}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 180
    invoke-static {p1, v1, p0}, Lads_mobile_sdk/r14;->a(Lads_mobile_sdk/r14;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 181
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne p1, v0, :cond_5

    :goto_2
    return-object v0

    .line 182
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
