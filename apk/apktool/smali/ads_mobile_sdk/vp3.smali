.class public final Lads_mobile_sdk/vp3;
.super Lads_mobile_sdk/j12;
.source "SourceFile"


# instance fields
.field public final g:Lkotlinx/coroutines/CoroutineScope;

.field public final h:Lkotlinx/coroutines/CoroutineScope;

.field public final i:Lads_mobile_sdk/p12;

.field public final j:Lads_mobile_sdk/v3;

.field public final k:Lads_mobile_sdk/i2;

.field public final l:Lads_mobile_sdk/k32;

.field public m:Z


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineScope;Lads_mobile_sdk/p12;Lads_mobile_sdk/v3;Lads_mobile_sdk/i2;Lads_mobile_sdk/k32;)V
    .locals 1

    .line 1
    const-string v0, "backgroundScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiScope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdMapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adEventEmitter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adConfiguration"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeAdUtil"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lads_mobile_sdk/j12;-><init>()V

    .line 37
    iput-object p1, p0, Lads_mobile_sdk/vp3;->g:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    iput-object p2, p0, Lads_mobile_sdk/vp3;->h:Lkotlinx/coroutines/CoroutineScope;

    .line 39
    iput-object p3, p0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    .line 40
    iput-object p4, p0, Lads_mobile_sdk/vp3;->j:Lads_mobile_sdk/v3;

    .line 41
    iput-object p5, p0, Lads_mobile_sdk/vp3;->k:Lads_mobile_sdk/i2;

    .line 42
    iput-object p6, p0, Lads_mobile_sdk/vp3;->l:Lads_mobile_sdk/k32;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/LinkedHashMap;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 279
    const-string p1, "assetViews"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaViewScaleType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p1
.end method

.method public final a()V
    .locals 1

    .line 92
    iget-object v0, p0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    invoke-interface {v0}, Lads_mobile_sdk/p12;->destroy()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    const-string v0, "clickData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p1, "Perform click is not supported for 3rd party ads"

    const/4 v0, 0x0

    .line 263
    invoke-static {p1, v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;Landroid/widget/ImageView$ScaleType;)V
    .locals 6

    .line 264
    const-string p2, "clickedView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "assetViews"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "mediaViewScaleType"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    invoke-interface {p2}, Lads_mobile_sdk/p12;->d()Z

    move-result p2

    if-nez p2, :cond_0

    .line 266
    iget-object p2, p0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    invoke-interface {p2, p1}, Lads_mobile_sdk/p12;->a(Landroid/view/View;)V

    .line 267
    iget-object v0, p0, Lads_mobile_sdk/vp3;->g:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/qp3;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lads_mobile_sdk/qp3;-><init>(Lads_mobile_sdk/vp3;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;)V
    .locals 0

    .line 282
    const-string p1, "motionEvent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)V
    .locals 6

    .line 268
    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetViews"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaviewScaleType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-boolean p1, p0, Lads_mobile_sdk/vp3;->m:Z

    if-eqz p1, :cond_1

    .line 271
    iget-object p1, p0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    invoke-interface {p1}, Lads_mobile_sdk/p12;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lads_mobile_sdk/vp3;->k:Lads_mobile_sdk/i2;

    iget-object p1, p1, Lads_mobile_sdk/i2;->q0:Lads_mobile_sdk/h2;

    .line 273
    sget-object p3, Lads_mobile_sdk/h2;->g:Lads_mobile_sdk/h2;

    if-ne p1, p3, :cond_0

    .line 275
    iget-object v0, p0, Lads_mobile_sdk/vp3;->g:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/rp3;

    invoke-direct {v3, p0, p2}, Lads_mobile_sdk/rp3;-><init>(Lads_mobile_sdk/vp3;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 277
    :cond_0
    iget-object p1, p0, Lads_mobile_sdk/vp3;->i:Lads_mobile_sdk/p12;

    invoke-interface {p1}, Lads_mobile_sdk/p12;->recordImpression()V

    .line 278
    iget-object v0, p0, Lads_mobile_sdk/vp3;->g:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/sp3;

    invoke-direct {v3, p0, p2}, Lads_mobile_sdk/sp3;-><init>(Lads_mobile_sdk/vp3;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_1
    return-void
.end method

.method public final a(Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;)V
    .locals 7

    .line 285
    const-string v0, "assetViews"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lads_mobile_sdk/vp3;->h:Lkotlinx/coroutines/CoroutineScope;

    new-instance v4, Lads_mobile_sdk/up3;

    const/4 p2, 0x0

    invoke-direct {v4, p1, p0, p2}, Lads_mobile_sdk/up3;-><init>(Landroid/view/View;Lads_mobile_sdk/vp3;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 93
    const-string v0, "assetName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/ref/WeakReference;Landroid/widget/FrameLayout;Ljava/util/LinkedHashMap;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 6

    .line 283
    const-string v0, "nativeAdViewContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetViews"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "touchListener"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "clickListener"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lads_mobile_sdk/vp3;->h:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lads_mobile_sdk/tp3;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p3, p2, p1}, Lads_mobile_sdk/tp3;-><init>(Lads_mobile_sdk/vp3;Ljava/util/Map;Landroid/view/View;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/LinkedHashMap;)Lcom/google/gson/JsonObject;
    .locals 0

    .line 168
    const-string p1, "assetViews"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaViewScaleType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance p1, Lcom/google/gson/JsonObject;

    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    return-object p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Landroid/widget/FrameLayout;Landroid/widget/ImageView$ScaleType;Ljava/util/Map;)V
    .locals 1

    .line 167
    const-string v0, "nativeAdView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "assetViews"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mediaviewScaleType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)Z
    .locals 1

    .line 2
    const-string v0, "impressionData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p1, "Record impression is not supported for 3rd party ads"

    const/4 v0, 0x0

    .line 166
    invoke-static {p1, v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1

    .line 2
    const-string v0, "touchEventData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object p1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    const-string p1, "Report touch event is not supported for 3rd party ads"

    const/4 v0, 0x0

    .line 175
    invoke-static {p1, v0}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 0

    return-void
.end method
