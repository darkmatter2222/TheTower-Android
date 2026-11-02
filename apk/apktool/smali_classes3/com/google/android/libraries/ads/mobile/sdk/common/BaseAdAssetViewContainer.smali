.class public abstract Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u00102\u001a\u000201\u00a2\u0006\u0004\u00083\u00104B\u0019\u0008\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00106\u001a\u000205\u00a2\u0006\u0004\u00083\u00107B!\u0008\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u00020\u0007\u00a2\u0006\u0004\u00083\u00109B)\u0008\u0016\u0012\u0006\u00102\u001a\u000201\u0012\u0006\u00106\u001a\u000205\u0012\u0006\u00108\u001a\u00020\u0007\u0012\u0006\u0010:\u001a\u00020\u0007\u00a2\u0006\u0004\u00083\u0010;J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J+\u0010\u000b\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0017\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000e\u001a\u00020\u00022\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005H\u0017\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0002H\u0017\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0019\u0010\u0011\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0017\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u00178\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR(\u0010!\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010\u000fR(\u0010$\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010\u001f\"\u0004\u0008#\u0010\u000fR(\u0010\'\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008%\u0010\u001f\"\u0004\u0008&\u0010\u000fR(\u0010*\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010\u001f\"\u0004\u0008)\u0010\u000fR(\u00100\u001a\u0004\u0018\u00010+2\u0008\u0010\u001d\u001a\u0004\u0018\u00010+8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u0006<"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;",
        "Landroid/widget/FrameLayout;",
        "",
        "destroy",
        "()V",
        "Landroid/view/View;",
        "child",
        "",
        "index",
        "Landroid/view/ViewGroup$LayoutParams;",
        "params",
        "addView",
        "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V",
        "view",
        "removeView",
        "(Landroid/view/View;)V",
        "removeAllViews",
        "bringChildToFront",
        "Landroid/view/MotionEvent;",
        "ev",
        "",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Lads_mobile_sdk/p32;",
        "a",
        "Lads_mobile_sdk/p32;",
        "getNativeAdViewContainer",
        "()Lads_mobile_sdk/p32;",
        "nativeAdViewContainer",
        "value",
        "getHeadlineView",
        "()Landroid/view/View;",
        "setHeadlineView",
        "headlineView",
        "getCallToActionView",
        "setCallToActionView",
        "callToActionView",
        "getIconView",
        "setIconView",
        "iconView",
        "getStarRatingView",
        "setStarRatingView",
        "starRatingView",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;",
        "getAdChoicesView",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;",
        "setAdChoicesView",
        "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;)V",
        "adChoicesView",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field private final a:Lads_mobile_sdk/p32;

.field private final b:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Lads_mobile_sdk/p32;

    invoke-direct {v0, p0, p1}, Lads_mobile_sdk/p32;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    .line 6
    new-instance p2, Lads_mobile_sdk/p32;

    invoke-direct {p2, p0, p1}, Lads_mobile_sdk/p32;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    .line 9
    new-instance p2, Lads_mobile_sdk/p32;

    invoke-direct {p2, p0, p1}, Lads_mobile_sdk/p32;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    .line 12
    new-instance p2, Lads_mobile_sdk/p32;

    invoke-direct {p2, p0, p1}, Lads_mobile_sdk/p32;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    iput-object p2, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-void
.end method

.method private final a(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->c(Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;)V

    :cond_1
    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    .line 7
    iget-object v2, v0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    :cond_3
    iget-object v2, v0, Lads_mobile_sdk/p32;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 11
    iget-object v2, v0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 12
    :cond_4
    iget-object v2, v0, Lads_mobile_sdk/p32;->c:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    :cond_5
    iput-object v1, v0, Lads_mobile_sdk/p32;->e:Landroid/view/View;

    .line 15
    iput-object v1, v0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    .line 16
    iput-object v1, v0, Lads_mobile_sdk/p32;->c:Landroid/widget/FrameLayout;

    .line 17
    iget-object v2, v0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    iput-object v1, v0, Lads_mobile_sdk/p32;->g:Landroid/view/GestureDetector;

    .line 19
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final getAdChoicesView()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3011"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3002"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3001"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getIconView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3003"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected final getNativeAdViewContainer()Lads_mobile_sdk/p32;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    return-object v0
.end method

.method public final getStarRatingView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3009"

    invoke-virtual {v0, v1}, Lads_mobile_sdk/p32;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v1, "view"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "motionEvent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    monitor-enter v0

    .line 296
    :try_start_0
    iget-object v1, v0, Lads_mobile_sdk/p32;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_1

    .line 297
    :cond_0
    :try_start_1
    iget-object v1, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->r()Lads_mobile_sdk/j12;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 298
    :cond_1
    iget-object v2, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->y()Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 299
    iget-object v2, v0, Lads_mobile_sdk/p32;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, p1}, Lads_mobile_sdk/j12;->a(Landroid/widget/FrameLayout;Landroid/view/MotionEvent;)V

    .line 301
    :cond_2
    iget-object v2, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->w()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 302
    iget-object v2, v0, Lads_mobile_sdk/p32;->i:Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;->o()Lads_mobile_sdk/nr3;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Lads_mobile_sdk/tk0;

    invoke-virtual {v2, p1}, Lads_mobile_sdk/tk0;->a(Landroid/view/MotionEvent;)V

    .line 303
    :cond_3
    invoke-virtual {v1}, Lads_mobile_sdk/j12;->e()I

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 305
    const-string v3, "<set-?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iput-object v2, v1, Lads_mobile_sdk/j12;->f:Ljava/lang/ref/WeakReference;

    .line 346
    iget-object v1, v0, Lads_mobile_sdk/p32;->g:Landroid/view/GestureDetector;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    :cond_4
    monitor-exit v0

    goto :goto_1

    .line 348
    :cond_5
    :goto_0
    monitor-exit v0

    :goto_1
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    .line 356
    monitor-exit v0

    throw p1
.end method

.method public removeAllViews()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->b:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setAdChoicesView(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3011"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3002"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3001"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setIconView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3003"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public final setStarRatingView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdAssetViewContainer;->a:Lads_mobile_sdk/p32;

    const-string v1, "3009"

    invoke-virtual {v0, p1, v1}, Lads_mobile_sdk/p32;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
