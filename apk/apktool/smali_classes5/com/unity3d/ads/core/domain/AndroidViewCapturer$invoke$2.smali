.class final Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidViewCapturer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->invoke(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidViewCapturer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidViewCapturer.kt\ncom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,88:1\n1#2:89\n426#3,11:90\n*S KotlinDebug\n*F\n+ 1 AndroidViewCapturer.kt\ncom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2\n*L\n66#1:90,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Bitmap;",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.unity3d.ads.core.domain.AndroidViewCapturer$invoke$2"
    f = "AndroidViewCapturer.kt"
    i = {
        0x0,
        0x0,
        0x0
    }
    l = {
        0x5a
    }
    m = "invokeSuspend"
    n = {
        "window",
        "srcRect",
        "bitmap"
    }
    s = {
        "L$0",
        "L$1",
        "L$2"
    }
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/AndroidViewCapturer;",
            "Landroid/view/View;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-direct {p1, v0, v1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;-><init>(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 41
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$2:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/view/Window;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    invoke-static {p1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$getSdkInt$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)I

    move-result p1

    const/16 v1, 0x1a

    const/16 v3, 0x29

    if-lt p1, v1, :cond_b

    .line 45
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    .line 46
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez p1, :cond_a

    if-lez v1, :cond_a

    .line 57
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    invoke-static {v3}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$getCurrentActivityDataSource$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/unity3d/ads/core/data/datasource/CurrentActivityDataSource;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_7

    .line 58
    :cond_2
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-static {v3, v4}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$activity(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_7

    .line 59
    iget-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    const-string v6, "getRootView(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$activity(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;Landroid/view/View;)Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_7

    .line 60
    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_6

    goto :goto_3

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    const-string v0, "No window available to capture the ad view"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_3
    const/4 v4, 0x2

    .line 62
    new-array v4, v4, [I

    .line 63
    iget-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->$view:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 64
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v4, v6

    aget v4, v4, v2

    add-int v7, v6, p1

    add-int v8, v4, v1

    invoke-direct {v5, v6, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 65
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 90
    iput-object v3, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$1:Ljava/lang/Object;

    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->label:I

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    .line 91
    new-instance v4, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v6

    invoke-direct {v4, v6, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 97
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 98
    move-object v2, v4

    check-cast v2, Lkotlinx/coroutines/CancellableContinuation;

    .line 67
    new-instance v6, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;

    invoke-direct {v6, v2, p1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;Landroid/graphics/Bitmap;)V

    check-cast v6, Landroid/view/PixelCopy$OnPixelCopyFinishedListener;

    .line 75
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 67
    invoke-static {v3, v5, p1, v6, v2}, Landroid/view/PixelCopy;->request(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 99
    invoke-virtual {v4}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 90
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_8

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_8
    if-ne p1, v0, :cond_9

    return-object v0

    :cond_9
    return-object p1

    .line 50
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Target view not laid out yet ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x78

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Screen capture requires API 26+ (got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidViewCapturer$invoke$2;->this$0:Lcom/unity3d/ads/core/domain/AndroidViewCapturer;

    invoke-static {v1}, Lcom/unity3d/ads/core/domain/AndroidViewCapturer;->access$getSdkInt$p(Lcom/unity3d/ads/core/domain/AndroidViewCapturer;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
