.class public final Lads_mobile_sdk/ft0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:I

.field public final synthetic b:Landroid/graphics/drawable/Drawable;

.field public final synthetic c:Lads_mobile_sdk/ht0;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lads_mobile_sdk/r31;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Lads_mobile_sdk/ht0;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lads_mobile_sdk/ft0;->b:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lads_mobile_sdk/ft0;->c:Lads_mobile_sdk/ht0;

    iput-object p3, p0, Lads_mobile_sdk/ft0;->d:Ljava/lang/String;

    iput-object p4, p0, Lads_mobile_sdk/ft0;->e:Ljava/lang/String;

    iput-object p5, p0, Lads_mobile_sdk/ft0;->f:Lads_mobile_sdk/r31;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    .line 1
    new-instance v0, Lads_mobile_sdk/ft0;

    iget-object v1, p0, Lads_mobile_sdk/ft0;->b:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lads_mobile_sdk/ft0;->c:Lads_mobile_sdk/ht0;

    iget-object v3, p0, Lads_mobile_sdk/ft0;->d:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/ft0;->e:Ljava/lang/String;

    iget-object v5, p0, Lads_mobile_sdk/ft0;->f:Lads_mobile_sdk/r31;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lads_mobile_sdk/ft0;-><init>(Landroid/graphics/drawable/Drawable;Lads_mobile_sdk/ht0;Ljava/lang/String;Ljava/lang/String;Lads_mobile_sdk/r31;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 2
    invoke-virtual {p0, p1, p2}, Lads_mobile_sdk/ft0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/ft0;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lads_mobile_sdk/ft0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 201
    iget v1, p0, Lads_mobile_sdk/ft0;->a:I

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

    .line 202
    sget-object p1, Lads_mobile_sdk/o21;->f:Lads_mobile_sdk/m21;

    iget-object p1, p0, Lads_mobile_sdk/ft0;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lads_mobile_sdk/m21;->a(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object p1

    .line 204
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    iget-object v3, p0, Lads_mobile_sdk/ft0;->d:Ljava/lang/String;

    iget-object v4, p0, Lads_mobile_sdk/ft0;->e:Ljava/lang/String;

    .line 205
    const-string v5, "app_id"

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "app_name"

    invoke-virtual {v1, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "app_icon_bytes"

    invoke-virtual {v1, v3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lads_mobile_sdk/ft0;->c:Lads_mobile_sdk/ht0;

    .line 210
    iget-object p1, p1, Lads_mobile_sdk/yy0;->c:Lkotlin/coroutines/CoroutineContext;

    .line 211
    new-instance v3, Lads_mobile_sdk/et0;

    iget-object v4, p0, Lads_mobile_sdk/ft0;->f:Lads_mobile_sdk/r31;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v1, v5}, Lads_mobile_sdk/et0;-><init>(Lads_mobile_sdk/r31;Lcom/google/gson/JsonObject;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lads_mobile_sdk/ft0;->a:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 214
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
