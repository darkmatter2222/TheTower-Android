.class public final Lads_mobile_sdk/at1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/r41;


# instance fields
.field public final a:Lads_mobile_sdk/ex0;

.field public final b:Lads_mobile_sdk/j12;

.field public final c:Lads_mobile_sdk/q52;

.field public final d:Lads_mobile_sdk/k32;

.field public final e:Lkotlinx/coroutines/CoroutineScope;

.field public final f:Lads_mobile_sdk/f82;


# direct methods
.method public constructor <init>(Lads_mobile_sdk/ex0;Lads_mobile_sdk/j12;Lads_mobile_sdk/q52;Lads_mobile_sdk/k32;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/f82;)V
    .locals 1

    .line 1
    const-string v0, "flags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdCore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeJavascriptEngine"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdUtil"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativePolicyValidatorState"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lads_mobile_sdk/at1;->a:Lads_mobile_sdk/ex0;

    .line 39
    iput-object p2, p0, Lads_mobile_sdk/at1;->b:Lads_mobile_sdk/j12;

    .line 40
    iput-object p3, p0, Lads_mobile_sdk/at1;->c:Lads_mobile_sdk/q52;

    .line 41
    iput-object p4, p0, Lads_mobile_sdk/at1;->d:Lads_mobile_sdk/k32;

    .line 42
    iput-object p5, p0, Lads_mobile_sdk/at1;->e:Lkotlinx/coroutines/CoroutineScope;

    .line 43
    iput-object p6, p0, Lads_mobile_sdk/at1;->f:Lads_mobile_sdk/f82;

    return-void
.end method

.method public static final a(Landroid/view/View;Lads_mobile_sdk/r31;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILads_mobile_sdk/at1;Landroid/view/WindowManager;)V
    .locals 1

    .line 550
    const-string v0, "$overlayFrame"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$validatorOverlay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$layoutParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$windowManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 693
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 695
    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_2

    .line 700
    :cond_0
    const-string p0, "1"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "2"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 703
    :cond_1
    iget p0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p4

    iput p0, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 704
    :cond_2
    :goto_0
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    iput p0, p3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 709
    :goto_1
    iget-object p0, p5, Lads_mobile_sdk/at1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance p4, Lads_mobile_sdk/zs1;

    const/4 p2, 0x0

    invoke-direct {p4, p6, p1, p3, p2}, Lads_mobile_sdk/zs1;-><init>(Landroid/view/WindowManager;Lads_mobile_sdk/r31;Landroid/view/WindowManager$LayoutParams;Lkotlin/coroutines/Continuation;)V

    const/4 p5, 0x3

    const/4 p6, 0x0

    const/4 p3, 0x0

    move-object p1, p0

    invoke-static/range {p1 .. p6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(Lads_mobile_sdk/r31;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    .line 1
    const-string p1, "id"

    .line 0
    const-string v0, "Error loading validator overlay url: "

    .line 1
    instance-of v1, p3, Lads_mobile_sdk/ws1;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Lads_mobile_sdk/ws1;

    iget v2, v1, Lads_mobile_sdk/ws1;->g:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lads_mobile_sdk/ws1;->g:I

    goto :goto_0

    :cond_0
    new-instance v1, Lads_mobile_sdk/ws1;

    invoke-direct {v1, p0, p3}, Lads_mobile_sdk/ws1;-><init>(Lads_mobile_sdk/at1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v1, Lads_mobile_sdk/ws1;->e:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 47
    iget v3, v1, Lads_mobile_sdk/ws1;->g:I

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p1, v1, Lads_mobile_sdk/ws1;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/Closeable;

    iget-object p2, v1, Lads_mobile_sdk/ws1;->a:Ljava/lang/Object;

    check-cast p2, Lads_mobile_sdk/rr3;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception p3

    goto/16 :goto_9

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p2, v1, Lads_mobile_sdk/ws1;->d:Lads_mobile_sdk/rr3;

    iget-object v3, v1, Lads_mobile_sdk/ws1;->c:Lads_mobile_sdk/rr3;

    iget-object v6, v1, Lads_mobile_sdk/ws1;->b:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v8, v1, Lads_mobile_sdk/ws1;->a:Ljava/lang/Object;

    check-cast v8, Lads_mobile_sdk/at1;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    :catchall_1
    move-exception p3

    move-object p1, p2

    move-object p2, v3

    goto/16 :goto_9

    .line 49
    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    const-string p3, "overlay_url"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 52
    :cond_4
    iget-object v3, p0, Lads_mobile_sdk/at1;->b:Lads_mobile_sdk/j12;

    invoke-virtual {v3}, Lads_mobile_sdk/j12;->h()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lads_mobile_sdk/r31;

    .line 53
    iget-object v8, p0, Lads_mobile_sdk/at1;->b:Lads_mobile_sdk/j12;

    invoke-virtual {v8}, Lads_mobile_sdk/j12;->g()Ljava/lang/ref/WeakReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lads_mobile_sdk/o32;

    if-eqz v8, :cond_5

    check-cast v8, Lads_mobile_sdk/p32;

    invoke-virtual {v8}, Lads_mobile_sdk/p32;->d()Landroid/widget/FrameLayout;

    move-result-object v8

    goto :goto_1

    :cond_5
    move-object v8, v7

    .line 56
    :goto_1
    iget-object v9, p0, Lads_mobile_sdk/at1;->b:Lads_mobile_sdk/j12;

    invoke-virtual {v9}, Lads_mobile_sdk/j12;->g()Ljava/lang/ref/WeakReference;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lads_mobile_sdk/o32;

    if-eqz v9, :cond_6

    check-cast v9, Lads_mobile_sdk/p32;

    invoke-virtual {v9}, Lads_mobile_sdk/p32;->c()Landroid/widget/FrameLayout;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    goto :goto_2

    :cond_6
    move-object v9, v7

    :goto_2
    instance-of v10, v9, Landroid/app/Activity;

    if-eqz v10, :cond_7

    check-cast v9, Landroid/app/Activity;

    goto :goto_3

    :cond_7
    move-object v9, v7

    :goto_3
    if-eqz v9, :cond_8

    .line 57
    const-class v10, Landroid/view/WindowManager;

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    goto :goto_4

    :cond_8
    move-object v9, v7

    :goto_4
    if-eqz v3, :cond_13

    if-eqz v8, :cond_13

    if-nez v9, :cond_9

    goto/16 :goto_c

    .line 62
    :cond_9
    iget-object v10, p0, Lads_mobile_sdk/at1;->f:Lads_mobile_sdk/f82;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Lads_mobile_sdk/f82;->b(Ljava/lang/ref/WeakReference;)V

    .line 63
    iget-object v10, p0, Lads_mobile_sdk/at1;->f:Lads_mobile_sdk/f82;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Lads_mobile_sdk/f82;->a(Ljava/lang/ref/WeakReference;)V

    .line 65
    invoke-virtual {p0, v8, v3, p2, v9}, Lads_mobile_sdk/at1;->a(Landroid/widget/FrameLayout;Lads_mobile_sdk/r31;Ljava/util/Map;Landroid/view/WindowManager;)V

    .line 72
    sget-object v8, Lads_mobile_sdk/s11;->g1:Lads_mobile_sdk/s11;

    .line 198
    sget-object v9, Lads_mobile_sdk/hs3;->a:Ljava/util/WeakHashMap;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lads_mobile_sdk/hs3;->a(Lads_mobile_sdk/s11;Ljava/util/List;Z)Lads_mobile_sdk/rr3;

    move-result-object v8

    .line 199
    :try_start_2
    iput-object p0, v1, Lads_mobile_sdk/ws1;->a:Ljava/lang/Object;

    iput-object p2, v1, Lads_mobile_sdk/ws1;->b:Ljava/lang/Object;

    iput-object v8, v1, Lads_mobile_sdk/ws1;->c:Lads_mobile_sdk/rr3;

    iput-object v8, v1, Lads_mobile_sdk/ws1;->d:Lads_mobile_sdk/rr3;

    iput v6, v1, Lads_mobile_sdk/ws1;->g:I

    invoke-virtual {v3, p3, v1}, Lads_mobile_sdk/r31;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-ne p3, v2, :cond_a

    goto :goto_6

    :cond_a
    move-object v6, p2

    move-object p2, v8

    move-object v3, p2

    move-object v8, p0

    .line 200
    :goto_5
    :try_start_3
    check-cast p3, Lads_mobile_sdk/v01;

    .line 225
    instance-of v9, p3, Lads_mobile_sdk/i01;

    if-eqz v9, :cond_b

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v7, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    goto :goto_7

    .line 229
    :cond_b
    new-instance p3, Lcom/google/gson/JsonObject;

    invoke-direct {p3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 230
    const-string v0, "messageType"

    const-string v4, "htmlLoaded"

    invoke-virtual {p3, v0, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3, p1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object p1, v8, Lads_mobile_sdk/at1;->c:Lads_mobile_sdk/q52;

    const-string v0, "sendMessageToNativeJs"

    iput-object v3, v1, Lads_mobile_sdk/ws1;->a:Ljava/lang/Object;

    iput-object p2, v1, Lads_mobile_sdk/ws1;->b:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    iput-object v7, v1, Lads_mobile_sdk/ws1;->c:Lads_mobile_sdk/rr3;

    iput-object v7, v1, Lads_mobile_sdk/ws1;->d:Lads_mobile_sdk/rr3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iput v5, v1, Lads_mobile_sdk/ws1;->g:I

    invoke-interface {p1, p3, v0, v1}, Lads_mobile_sdk/eq1;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne p1, v2, :cond_c

    :goto_6
    return-object v2

    :cond_c
    :goto_7
    move-object p1, p2

    move-object p2, v3

    .line 235
    :goto_8
    :try_start_6
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 355
    instance-of v0, p3, Lads_mobile_sdk/i01;

    if-eqz v0, :cond_d

    .line 356
    move-object v0, p3

    check-cast v0, Lads_mobile_sdk/i01;

    invoke-static {v0}, Lads_mobile_sdk/xs3;->a(Lads_mobile_sdk/i01;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 357
    :cond_d
    invoke-static {p1, v7}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object p3

    :goto_9
    move-object v8, p2

    move-object p2, p1

    goto :goto_b

    :catchall_2
    move-exception p1

    goto :goto_a

    :catchall_3
    move-exception p1

    :goto_a
    move-object p3, p1

    move-object v8, v3

    goto :goto_b

    :catchall_4
    move-exception p1

    move-object p3, p1

    move-object p2, v8

    .line 365
    :goto_b
    :try_start_7
    invoke-virtual {v8, p3}, Lads_mobile_sdk/rr3;->b(Ljava/lang/Throwable;)V

    .line 369
    instance-of p1, p3, Lads_mobile_sdk/v24;

    if-nez p1, :cond_12

    .line 371
    instance-of p1, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_e

    instance-of p1, p3, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_e

    .line 377
    invoke-virtual {v8, p3}, Lads_mobile_sdk/rr3;->a(Ljava/lang/Throwable;)V

    .line 383
    :cond_e
    instance-of p1, p3, Lkotlinx/coroutines/TimeoutCancellationException;

    if-nez p1, :cond_11

    .line 384
    instance-of p1, p3, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_10

    .line 385
    instance-of p1, p3, Lads_mobile_sdk/w01;

    if-eqz p1, :cond_f

    throw p3

    .line 386
    :cond_f
    new-instance p1, Lads_mobile_sdk/b01;

    invoke-direct {p1, p3}, Lads_mobile_sdk/b01;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 387
    :cond_10
    new-instance p1, Lads_mobile_sdk/wz0;

    check-cast p3, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1, p3}, Lads_mobile_sdk/wz0;-><init>(Ljava/util/concurrent/CancellationException;)V

    throw p1

    .line 388
    :cond_11
    new-instance p1, Lads_mobile_sdk/i21;

    check-cast p3, Lkotlinx/coroutines/TimeoutCancellationException;

    invoke-direct {p1, p3}, Lads_mobile_sdk/i21;-><init>(Lkotlinx/coroutines/TimeoutCancellationException;)V

    throw p1

    .line 389
    :cond_12
    throw p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    move-exception p1

    .line 390
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :catchall_6
    move-exception p3

    invoke-static {p2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    .line 391
    :cond_13
    :goto_c
    const-string p1, "Handling load violation gmsg while overlay not available"

    invoke-static {p1, v7, v4}, Lads_mobile_sdk/xs3;->a(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 392
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final a(Landroid/widget/FrameLayout;Lads_mobile_sdk/r31;Ljava/util/Map;Landroid/view/WindowManager;)V
    .locals 17

    move-object/from16 v4, p0

    move-object/from16 v6, p3

    .line 394
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 396
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 398
    const-string v1, "validator_width"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 399
    iget-object v2, v4, Lads_mobile_sdk/at1;->a:Lads_mobile_sdk/ex0;

    .line 401
    const-string v3, "gads:policy_validator_overlay_width:dp"

    const-string v7, "key"

    const/16 v5, 0x15e

    invoke-static {v2, v3, v7, v5}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 402
    sget-object v8, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v2, v3, v5, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :catch_0
    :goto_0
    invoke-static {v0, v2}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v2

    .line 413
    const-string v1, "validator_height"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 414
    iget-object v3, v4, Lads_mobile_sdk/at1;->a:Lads_mobile_sdk/ex0;

    const/16 v5, 0x8c

    .line 416
    const-string v9, "gads:policy_validator_overlay_height:dp"

    invoke-static {v3, v9, v7, v5}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    .line 417
    invoke-virtual {v3, v9, v5, v8}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-nez v1, :cond_1

    goto :goto_1

    .line 418
    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    :catch_1
    :goto_1
    invoke-static {v0, v3}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v3

    .line 426
    const-string v1, "validator_x"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v1, :cond_2

    goto :goto_2

    .line 427
    :cond_2
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    :goto_2
    move v1, v5

    .line 428
    :goto_3
    invoke-static {v0, v1}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v8

    .line 429
    const-string v1, "validator_y"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_4

    .line 430
    :cond_3
    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 431
    :catch_3
    :goto_4
    invoke-static {v0, v5}, Lads_mobile_sdk/zn0;->a(Landroid/content/Context;I)I

    move-result v9

    .line 434
    iget-object v10, v4, Lads_mobile_sdk/at1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v13, Lads_mobile_sdk/xs1;

    const/4 v5, 0x0

    move-object/from16 v1, p2

    move-object v0, v13

    invoke-direct/range {v0 .. v5}, Lads_mobile_sdk/xs1;-><init>(Lads_mobile_sdk/r31;IILads_mobile_sdk/at1;Lkotlin/coroutines/Continuation;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v10 .. v15}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 441
    iget-object v0, v4, Lads_mobile_sdk/at1;->d:Lads_mobile_sdk/k32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    const/4 v14, 0x0

    const/4 v15, -0x2

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v15}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 449
    iget-object v0, v0, Lads_mobile_sdk/k32;->b:Lads_mobile_sdk/ex0;

    const/16 v1, 0x328

    .line 451
    const-string v5, "gads:policy_validator_layoutparam:flags"

    invoke-static {v0, v5, v7, v1}, Lads_mobile_sdk/by0;->a(Lads_mobile_sdk/ex0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    .line 452
    sget-object v7, Lads_mobile_sdk/yr;->f:Lads_mobile_sdk/nr;

    invoke-virtual {v0, v5, v1, v7}, Lads_mobile_sdk/yr;->a(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 453
    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x2

    .line 454
    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0x800033

    .line 455
    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 456
    iput v8, v10, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 457
    iput v9, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 458
    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 459
    iput v3, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 461
    iget-object v11, v4, Lads_mobile_sdk/at1;->e:Lkotlinx/coroutines/CoroutineScope;

    new-instance v14, Lads_mobile_sdk/ys1;

    const/4 v0, 0x0

    move-object/from16 v1, p2

    move-object/from16 v7, p4

    invoke-direct {v14, v7, v1, v10, v0}, Lads_mobile_sdk/ys1;-><init>(Landroid/view/WindowManager;Lads_mobile_sdk/r31;Landroid/view/WindowManager$LayoutParams;Lkotlin/coroutines/Continuation;)V

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v11 .. v16}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 464
    const-string v0, "orientation"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 465
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v2, p1

    .line 466
    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_7

    .line 472
    :cond_4
    const-string v5, "1"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "2"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    .line 475
    :cond_5
    iget v0, v0, Landroid/graphics/Rect;->top:I

    goto :goto_6

    .line 476
    :cond_6
    :goto_5
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_6
    sub-int/2addr v0, v9

    move v5, v0

    .line 481
    new-instance v0, Lads_mobile_sdk/at1$$ExternalSyntheticLambda0;

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v4

    move-object v4, v10

    invoke-direct/range {v0 .. v7}, Lads_mobile_sdk/at1$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Lads_mobile_sdk/r31;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILads_mobile_sdk/at1;Landroid/view/WindowManager;)V

    move-object v4, v6

    .line 498
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 499
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 500
    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 501
    iget-object v2, v4, Lads_mobile_sdk/at1;->f:Lads_mobile_sdk/f82;

    .line 502
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    const-string v0, "<set-?>"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iput-object v3, v2, Lads_mobile_sdk/f82;->c:Ljava/lang/ref/WeakReference;

    .line 526
    iget-object v2, v4, Lads_mobile_sdk/at1;->f:Lads_mobile_sdk/f82;

    .line 527
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 528
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iput-object v3, v2, Lads_mobile_sdk/f82;->b:Ljava/lang/ref/WeakReference;

    :cond_7
    :goto_7
    return-void
.end method

.method public final g()Lads_mobile_sdk/u11;
    .locals 1

    .line 1
    sget-object v0, Lads_mobile_sdk/u11;->X:Lads_mobile_sdk/u11;

    return-object v0
.end method
