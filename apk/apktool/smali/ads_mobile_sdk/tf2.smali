.class public final Lads_mobile_sdk/tf2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public a:I

.field public synthetic b:Lads_mobile_sdk/r31;

.field public synthetic c:Lads_mobile_sdk/k9;

.field public final synthetic d:Lads_mobile_sdk/vf2;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/tf2;->d:Lads_mobile_sdk/vf2;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lads_mobile_sdk/r31;

    check-cast p2, Lads_mobile_sdk/k9;

    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 2
    new-instance v0, Lads_mobile_sdk/tf2;

    iget-object v1, p0, Lads_mobile_sdk/tf2;->d:Lads_mobile_sdk/vf2;

    invoke-direct {v0, v1, p3}, Lads_mobile_sdk/tf2;-><init>(Lads_mobile_sdk/vf2;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lads_mobile_sdk/tf2;->b:Lads_mobile_sdk/r31;

    iput-object p2, v0, Lads_mobile_sdk/tf2;->c:Lads_mobile_sdk/k9;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lads_mobile_sdk/tf2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 208
    iget v1, p0, Lads_mobile_sdk/tf2;->a:I

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

    iget-object p1, p0, Lads_mobile_sdk/tf2;->b:Lads_mobile_sdk/r31;

    iget-object v1, p0, Lads_mobile_sdk/tf2;->c:Lads_mobile_sdk/k9;

    .line 209
    iget-object v3, p0, Lads_mobile_sdk/tf2;->d:Lads_mobile_sdk/vf2;

    .line 210
    iget-object v3, v3, Lads_mobile_sdk/vf2;->f:Lads_mobile_sdk/kd2;

    .line 211
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "adSession"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iget-object v3, v3, Lads_mobile_sdk/kd2;->f:Lads_mobile_sdk/ur3;

    new-instance v4, Lads_mobile_sdk/id2;

    invoke-direct {v4, v1}, Lads_mobile_sdk/id2;-><init>(Lads_mobile_sdk/k9;)V

    const-string v1, "StartOmidSession"

    invoke-interface {v3, v1, v4}, Lads_mobile_sdk/ur3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    .line 213
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lads_mobile_sdk/tf2;->b:Lads_mobile_sdk/r31;

    iput v2, p0, Lads_mobile_sdk/tf2;->a:I

    const-string v2, "onSdkLoaded"

    invoke-virtual {p1, v1, v2, p0}, Lads_mobile_sdk/r31;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 214
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
