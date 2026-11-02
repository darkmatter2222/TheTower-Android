.class public final Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u00a2\u0006\u0004\u0008 \u0010!B\u001b\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0004\u0008 \u0010$B#\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008 \u0010\'B+\u0008\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010&\u001a\u00020%\u0012\u0006\u0010(\u001a\u00020%\u00a2\u0006\u0004\u0008 \u0010)J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ#\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J!\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00122\u0006\u0010\u000f\u001a\u00020\u000eH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0013J\u001f\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\nH\u0007\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006*"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;",
        "newSize",
        "",
        "resize",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
        "adRequest",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;",
        "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
        "adLoadCallback",
        "loadAd",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V",
        "",
        "adResponse",
        "loadFromAdResponse",
        "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bannerAd",
        "Landroid/app/Activity;",
        "activity",
        "registerBannerAd",
        "(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V",
        "getBannerAd",
        "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
        "unregisterBannerAd",
        "destroy",
        "()V",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "defStyleRes",
        "(Landroid/content/Context;Landroid/util/AttributeSet;II)V",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

.field private b:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

.field private c:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private final a()V
    .locals 8

    .line 28
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->c:Lkotlinx/coroutines/channels/Channel;

    if-eqz v0, :cond_0

    .line 29
    sget-object v1, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v1

    check-cast v1, Lads_mobile_sdk/vf0;

    .line 30
    iget-object v1, v1, Lads_mobile_sdk/vf0;->u:Lads_mobile_sdk/ol0;

    .line 31
    invoke-virtual {v1}, Lads_mobile_sdk/ol0;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    .line 32
    new-instance v5, Lads_mobile_sdk/cd;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lads_mobile_sdk/cd;-><init>(Lkotlinx/coroutines/channels/Channel;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V

    return-void
.end method

.method private final a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    .line 4
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->getAdSize()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 5
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b()V

    if-nez p2, :cond_0

    .line 11
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->getView()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->getView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p2

    .line 16
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 18
    invoke-interface {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;->getResponseInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;->getAdapterClassName()Ljava/lang/String;

    move-result-object p1

    .line 19
    sget-object v1, Lads_mobile_sdk/f01;->a:Lcom/google/common/base/Splitter;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Banner view provided from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " already has a parent view. Removing its old parent."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lads_mobile_sdk/f01;->c(Ljava/lang/String;)V

    .line 24
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 27
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getHeight()I

    move-result v3

    .line 12
    const-string v4, "<this>"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v3, v3

    .line 13
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string v5, "getDisplayMetrics(...)"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 118
    invoke-static {v6, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v1, v7

    float-to-int v1, v1

    .line 119
    invoke-virtual {p0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;->getWidth()I

    move-result v0

    .line 121
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v0, v0

    .line 122
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {v6, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    .line 228
    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    .line 230
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->unregisterBannerAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;->destroy()V

    :cond_0
    return-void
.end method

.method public final getBannerAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    return-object v0
.end method

.method public final loadAd(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "adLoadCallback"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 2
    new-instance v4, Lads_mobile_sdk/bd;

    invoke-direct {v4, p2, p0}, Lads_mobile_sdk/bd;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object p2, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/vf0;

    .line 77
    iget-object v0, v0, Lads_mobile_sdk/vf0;->q3:Lads_mobile_sdk/dw2;

    .line 78
    invoke-interface {v0}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lads_mobile_sdk/cm1;

    .line 79
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object p2

    .line 80
    check-cast p2, Lads_mobile_sdk/vf0;

    .line 81
    new-instance v1, Lads_mobile_sdk/xh0;

    .line 82
    iget-object p2, p2, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 83
    invoke-direct {v1, p2}, Lads_mobile_sdk/xh0;-><init>(Lads_mobile_sdk/vf0;)V

    .line 84
    sget-object p2, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 85
    iput-object p2, v1, Lads_mobile_sdk/xh0;->d:Lads_mobile_sdk/j53;

    .line 86
    invoke-virtual {v1, p1}, Lads_mobile_sdk/xh0;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/bz2;

    .line 87
    invoke-interface {p2, p1}, Lads_mobile_sdk/f03;->a(Lcom/google/android/libraries/ads/mobile/sdk/common/BaseRequest;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lads_mobile_sdk/bz2;

    .line 88
    invoke-interface {p2, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;)Lads_mobile_sdk/bz2;

    move-result-object p2

    .line 89
    invoke-interface {p2, p1}, Lads_mobile_sdk/bz2;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;)Lads_mobile_sdk/bz2;

    move-result-object p1

    const/4 p2, 0x0

    .line 90
    invoke-interface {p1, p2}, Lads_mobile_sdk/f03;->b(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 91
    invoke-interface {p1, p2}, Lads_mobile_sdk/f03;->a(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/bz2;

    .line 92
    invoke-interface {p1}, Lads_mobile_sdk/bz2;->a()Lads_mobile_sdk/cz2;

    move-result-object v3

    .line 93
    new-instance v2, Lads_mobile_sdk/qo;

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Lads_mobile_sdk/qo;-><init>(Lads_mobile_sdk/cz2;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Landroid/view/ViewGroup;ZLkotlin/coroutines/Continuation;)V

    invoke-virtual {v0, v2}, Lads_mobile_sdk/cm1;->a(Lkotlin/jvm/functions/Function1;)V

    .line 109
    invoke-interface {v3}, Lads_mobile_sdk/g03;->c()Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    .line 110
    iput-object p1, v5, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->c:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public final loadFromAdResponse(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult<",
            "+",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lads_mobile_sdk/dd;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lads_mobile_sdk/dd;

    iget v1, v0, Lads_mobile_sdk/dd;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lads_mobile_sdk/dd;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lads_mobile_sdk/dd;

    invoke-direct {v0, p0, p2}, Lads_mobile_sdk/dd;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lads_mobile_sdk/dd;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget v2, v0, Lads_mobile_sdk/dd;->d:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lads_mobile_sdk/dd;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lads_mobile_sdk/dd;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 8
    iput-object p0, v0, Lads_mobile_sdk/dd;->a:Ljava/lang/Object;

    iput v4, v0, Lads_mobile_sdk/dd;->d:I

    .line 9
    sget-object p2, Lads_mobile_sdk/jq;->a:Lads_mobile_sdk/jq;

    .line 10
    sget-object v2, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v2

    .line 11
    check-cast v2, Lads_mobile_sdk/vf0;

    .line 12
    iget-object v2, v2, Lads_mobile_sdk/vf0;->c:Lads_mobile_sdk/vf0;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v4, Lads_mobile_sdk/j53;->f:Lads_mobile_sdk/j53;

    .line 15
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16
    new-instance v7, Lads_mobile_sdk/wh0;

    invoke-direct {v7, v2, v4, p1, v6}, Lads_mobile_sdk/wh0;-><init>(Lads_mobile_sdk/vf0;Lads_mobile_sdk/j53;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 17
    iget-object p1, v7, Lads_mobile_sdk/wh0;->i:Lads_mobile_sdk/dw2;

    invoke-interface {p1}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lads_mobile_sdk/zy2;

    .line 18
    new-instance v2, Lads_mobile_sdk/uo;

    invoke-direct {v2, v5}, Lads_mobile_sdk/uo;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 19
    new-instance v4, Lads_mobile_sdk/fq;

    invoke-direct {v4, v2, v5}, Lads_mobile_sdk/fq;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p2, p1, v4, v0}, Lads_mobile_sdk/jq;->b(Lads_mobile_sdk/px2;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, p0

    .line 20
    :goto_1
    check-cast p2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;

    .line 24
    instance-of v2, p2, Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult$Success;

    if-eqz v2, :cond_5

    .line 25
    sget-object v2, Lads_mobile_sdk/a01;->a:Lads_mobile_sdk/zz0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lads_mobile_sdk/zz0;->a()Lads_mobile_sdk/a01;

    move-result-object v2

    check-cast v2, Lads_mobile_sdk/vf0;

    .line 26
    iget-object v2, v2, Lads_mobile_sdk/vf0;->w:Lads_mobile_sdk/dw2;

    .line 27
    invoke-interface {v2}, Lads_mobile_sdk/cw2;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    .line 28
    new-instance v4, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;

    invoke-direct {v4, p1, p2, v5}, Lcom/google/android/libraries/ads/mobile/sdk/banner/b;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadResult;Lkotlin/coroutines/Continuation;)V

    iput-object p2, v0, Lads_mobile_sdk/dd;->a:Ljava/lang/Object;

    iput v3, v0, Lads_mobile_sdk/dd;->d:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p2
.end method

.method public final loadFromAdResponse(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback<",
            "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adLoadCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 2
    new-instance v0, Lads_mobile_sdk/bd;

    invoke-direct {v0, p2, p0}, Lads_mobile_sdk/bd;-><init>(Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;)V

    .line 3
    invoke-static {p1, v0}, Lads_mobile_sdk/vo;->a(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/common/AdLoadCallback;)Lkotlinx/coroutines/channels/Channel;

    move-result-object p1

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->c:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method

.method public final registerBannerAd(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V
    .locals 1

    const-string v0, "bannerAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;Landroid/app/Activity;)V

    return-void
.end method

.method public final resize(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V
    .locals 1

    const-string v0, "newSize"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b:Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b()V

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;->a(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V

    :cond_0
    return-void
.end method

.method public final unregisterBannerAd()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a:Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAd;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->a()V

    .line 5
    invoke-direct {p0}, Lcom/google/android/libraries/ads/mobile/sdk/banner/AdView;->b()V

    return-object v0
.end method
