.class public final Lads_mobile_sdk/p32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lads_mobile_sdk/o32;


# instance fields
.field public b:Landroid/widget/FrameLayout;

.field public c:Landroid/widget/FrameLayout;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/ImageView$ScaleType;

.field public g:Landroid/view/GestureDetector;

.field public final h:Ljava/util/LinkedHashMap;

.field public i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    .line 31
    iput-object p2, p0, Lads_mobile_sdk/p32;->c:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 38
    :cond_1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final a(Lads_mobile_sdk/p32;)V
    .locals 4

    .line 238
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 419
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 420
    iget-object v1, p0, Lads_mobile_sdk/p32;->e:Landroid/view/View;

    if-nez v1, :cond_1

    .line 421
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lads_mobile_sdk/p32;->e:Landroid/view/View;

    .line 424
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lads_mobile_sdk/p32;->e:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 425
    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 426
    iget-object v0, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lads_mobile_sdk/p32;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 429
    :cond_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 430
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 431
    monitor-exit p0

    throw v0
.end method

.method public static final a(Lads_mobile_sdk/p32;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$watermark"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 225
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 228
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-static {v1, v2, p1}, Lads_mobile_sdk/sy3;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 237
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 491
    sget-object v0, Lads_mobile_sdk/o32;->a:Lads_mobile_sdk/n32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 492
    sget-object v0, Lads_mobile_sdk/n32;->b:Landroid/os/Handler;

    .line 493
    new-instance v1, Lads_mobile_sdk/p32$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lads_mobile_sdk/p32$$ExternalSyntheticLambda1;-><init>(Lads_mobile_sdk/p32;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    .line 477
    const-string v0, "assetName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 481
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :goto_0
    const-string v0, "3011"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 486
    :try_start_2
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_3
    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x1

    .line 488
    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    if-eqz p1, :cond_5

    .line 489
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 490
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .locals 6

    .line 432
    const-string v0, "newNativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    monitor-enter p0

    .line 434
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 436
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0, v0}, Lads_mobile_sdk/p32;->c(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    .line 439
    :cond_1
    invoke-virtual {p0}, Lads_mobile_sdk/p32;->a()V

    .line 442
    invoke-virtual {p0, p1}, Lads_mobile_sdk/p32;->b(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    .line 444
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->q()Lads_mobile_sdk/s02;

    move-result-object v0

    iget-object v0, v0, Lads_mobile_sdk/s02;->v:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 445
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 446
    invoke-virtual {p0, v0}, Lads_mobile_sdk/p32;->a(Ljava/lang/String;)V

    .line 448
    :cond_3
    iget-object v0, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v2

    invoke-virtual {v2}, Lads_mobile_sdk/j12;->e()I

    move-result v2

    if-eqz v2, :cond_4

    .line 451
    new-instance v1, Landroid/view/GestureDetector;

    .line 453
    new-instance v2, Lads_mobile_sdk/i52;

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v4}, Lads_mobile_sdk/i52;-><init>(Lads_mobile_sdk/j12;Ljava/lang/ref/WeakReference;)V

    .line 454
    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 455
    :cond_4
    iput-object v1, p0, Lads_mobile_sdk/p32;->g:Landroid/view/GestureDetector;

    .line 456
    :cond_5
    iput-object p1, p0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 475
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 494
    sget-object v0, Lads_mobile_sdk/o32;->a:Lads_mobile_sdk/n32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 495
    sget-object v0, Lads_mobile_sdk/n32;->b:Landroid/os/Handler;

    .line 496
    new-instance v1, Lads_mobile_sdk/p32$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lads_mobile_sdk/p32$$ExternalSyntheticLambda0;-><init>(Lads_mobile_sdk/p32;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 1
    const-string v0, "assetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 78
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 149
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .locals 14

    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 347
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->t()Lads_mobile_sdk/b42;

    move-result-object v0

    invoke-virtual {v0, p0}, Lads_mobile_sdk/b42;->a(Lads_mobile_sdk/o32;)V

    .line 348
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->s()Lads_mobile_sdk/t32;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    const-string v1, "nativeAdViewContainer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    iget-object v2, v0, Lads_mobile_sdk/t32;->a:Lkotlinx/coroutines/CoroutineScope;

    new-instance v5, Lads_mobile_sdk/s32;

    const/4 v1, 0x0

    invoke-direct {v5, v0, p0, v1}, Lads_mobile_sdk/s32;-><init>(Lads_mobile_sdk/t32;Lads_mobile_sdk/o32;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 397
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v8

    .line 398
    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 399
    iget-object v10, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    .line 400
    iget-object v11, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v13, p0

    move-object v12, p0

    .line 401
    :try_start_2
    invoke-virtual/range {v8 .. v13}, Lads_mobile_sdk/j12;->a(Ljava/lang/ref/WeakReference;Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    .line 408
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v12, p0

    :goto_0
    move-object p1, v0

    .line 410
    monitor-exit p0

    throw p1
.end method

.method public final c()Landroid/widget/FrameLayout;
    .locals 1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V
    .locals 2

    .line 215
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->c:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 218
    :goto_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 219
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->t()Lads_mobile_sdk/b42;

    move-result-object v0

    .line 220
    iget-object v0, v0, Lads_mobile_sdk/b42;->a:Lads_mobile_sdk/z32;

    .line 221
    invoke-virtual {v0}, Lads_mobile_sdk/ms;->a()V

    .line 222
    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object p1

    iget-object v0, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0, v1}, Lads_mobile_sdk/j12;->a(Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;)V

    .line 223
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 225
    monitor-exit p0

    throw p1
.end method

.method public final d()Landroid/widget/FrameLayout;
    .locals 1

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 242
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->c:Landroid/widget/FrameLayout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->f:Landroid/widget/ImageView$ScaleType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    monitor-enter p0

    .line 256
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 260
    iget-object v0, p0, Lads_mobile_sdk/p32;->g:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v0, :cond_2

    .line 265
    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v1, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    .line 269
    iget-object v2, p0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    .line 270
    iget-object v3, p0, Lads_mobile_sdk/p32;->f:Landroid/widget/ImageView$ScaleType;

    if-nez v3, :cond_1

    .line 271
    sget-object v3, Lads_mobile_sdk/t32;->i:Landroid/widget/ImageView$ScaleType;

    .line 272
    :cond_1
    invoke-virtual {v0, p1, v1, v2, v3}, Lads_mobile_sdk/j12;->a(Landroid/view/View;Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;Landroid/widget/ImageView$ScaleType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_2
    monitor-exit p0

    return-void

    .line 281
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 282
    monitor-exit p0

    throw p1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    const-string v0, "motionEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    .line 278
    :cond_0
    :try_start_1
    iget-object v0, p0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 279
    :cond_1
    iget-object v2, p0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->y()Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    iget-object v2, p0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, p2}, Lads_mobile_sdk/j12;->a(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;)V

    .line 282
    :cond_2
    iget-object v2, p0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->w()Z

    move-result v2

    if-nez v2, :cond_4

    .line 283
    iget-object v2, p0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o()Lads_mobile_sdk/nr3;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Lads_mobile_sdk/tk0;

    invoke-virtual {v2, p2}, Lads_mobile_sdk/tk0;->a(Landroid/view/MotionEvent;)V

    .line 284
    :cond_3
    invoke-virtual {v0}, Lads_mobile_sdk/j12;->e()I

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 286
    const-string p1, "<set-?>"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iput-object v2, v0, Lads_mobile_sdk/j12;->f:Ljava/lang/ref/WeakReference;

    .line 327
    iget-object p1, p0, Lads_mobile_sdk/p32;->g:Landroid/view/GestureDetector;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :cond_4
    monitor-exit p0

    return v1

    .line 329
    :cond_5
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 337
    monitor-exit p0

    throw p1
.end method
