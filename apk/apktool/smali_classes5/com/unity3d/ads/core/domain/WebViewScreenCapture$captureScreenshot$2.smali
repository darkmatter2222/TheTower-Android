.class final Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WebViewScreenCapture.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->captureScreenshot(Lcom/unity3d/ads/core/data/model/AdObject;IDLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
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
    c = "com.unity3d.ads.core.domain.WebViewScreenCapture$captureScreenshot$2"
    f = "WebViewScreenCapture.kt"
    i = {}
    l = {
        0x5b
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $id:Ljava/lang/String;

.field final synthetic $isPng:Z

.field final synthetic $quality:I

.field final synthetic $samplingRate:D

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;


# direct methods
.method constructor <init>(DLandroid/graphics/Bitmap;ZILcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Landroid/graphics/Bitmap;",
            "ZI",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$samplingRate:D

    iput-object p3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$isPng:Z

    iput p5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$quality:I

    iput-object p6, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    iput-object p7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$id:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9
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

    new-instance v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;

    iget-wide v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$samplingRate:D

    iget-object v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v4, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$isPng:Z

    iget v5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$quality:I

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    iget-object v7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$id:Ljava/lang/String;

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;-><init>(DLandroid/graphics/Bitmap;ZILcom/unity3d/ads/core/domain/WebViewScreenCapture;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 72
    iget-wide v3, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$samplingRate:D

    iget-object p1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v1, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$isPng:Z

    iget v5, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$quality:I

    iget-object v6, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->this$0:Lcom/unity3d/ads/core/domain/WebViewScreenCapture;

    iget-object v7, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->$id:Ljava/lang/String;

    :try_start_1
    sget-object v8, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v3, v8

    if-ltz v8, :cond_2

    move-object v3, p1

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v3

    invoke-static {v8, v9}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v8

    invoke-static {v8, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v8

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-double v9, v9

    mul-double/2addr v9, v3

    invoke-static {v9, v10}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v3

    invoke-static {v3, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v3

    .line 76
    invoke-static {p1, v8, v3, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 83
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v1, :cond_3

    .line 85
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v8, v4

    check-cast v8, Ljava/io/OutputStream;

    const/16 v9, 0x64

    invoke-virtual {v3, v5, v9, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 87
    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object v9, v4

    check-cast v9, Ljava/io/OutputStream;

    invoke-virtual {v3, v8, v5, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    :goto_1
    if-eq v3, p1, :cond_4

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 91
    :cond_4
    invoke-static {v6}, Lcom/unity3d/ads/core/domain/WebViewScreenCapture;->access$getUploader$p(Lcom/unity3d/ads/core/domain/WebViewScreenCapture;)Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;

    move-result-object p1

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "toByteArray(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const-string v1, "image/png"

    goto :goto_2

    :cond_5
    const-string v1, "image/jpeg"

    :goto_2
    iput v2, p0, Lcom/unity3d/ads/core/domain/WebViewScreenCapture$captureScreenshot$2;->label:I

    invoke-virtual {p1, v7, v3, v1, p0}, Lcom/unity3d/ads/core/domain/AndroidScreenshotUploader;->invoke(Ljava/lang/String;[BLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 92
    :cond_6
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 72
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
