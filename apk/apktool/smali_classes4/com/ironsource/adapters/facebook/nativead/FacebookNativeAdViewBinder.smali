.class public final Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;
.super Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;
.source "FacebookNativeAdViewBinder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFacebookNativeAdViewBinder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FacebookNativeAdViewBinder.kt\ncom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,72:1\n1#2:73\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;",
        "nativeAd",
        "Lcom/facebook/ads/NativeAd;",
        "adOptionsPosition",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;",
        "<init>",
        "(Lcom/facebook/ads/NativeAd;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;)V",
        "mainHandler",
        "Landroid/os/Handler;",
        "nativeAdLayout",
        "Lcom/facebook/ads/NativeAdLayout;",
        "networkNativeAdView",
        "Landroid/view/ViewGroup;",
        "getNetworkNativeAdView",
        "()Landroid/view/ViewGroup;",
        "setNativeAdView",
        "",
        "nativeAdView",
        "Landroid/view/View;",
        "getAdOptionsLayoutParams",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "facebookadapter_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

.field private final mainHandler:Landroid/os/Handler;

.field private final nativeAd:Lcom/facebook/ads/NativeAd;

.field private nativeAdLayout:Lcom/facebook/ads/NativeAdLayout;


# direct methods
.method public static synthetic $r8$lambda$6isFXQdEfVfUHgA-aUKnqd8AUS8(Landroid/content/Context;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;Lcom/facebook/ads/NativeAdLayout;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->setNativeAdView$lambda$5(Landroid/content/Context;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;Lcom/facebook/ads/NativeAdLayout;Landroid/view/View;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/NativeAd;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;)V
    .locals 1

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adOptionsPosition"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->nativeAd:Lcom/facebook/ads/NativeAd;

    .line 22
    iput-object p2, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    .line 25
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private final getAdOptionsLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 59
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    iget-object v1, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->adOptionsPosition:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;

    sget-object v2, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdOptionsPosition;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/16 v1, 0x55

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const/16 v1, 0x53

    goto :goto_0

    :cond_2
    const/16 v1, 0x35

    goto :goto_0

    :cond_3
    const/16 v1, 0x33

    :goto_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private static final setNativeAdView$lambda$5(Landroid/content/Context;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;Lcom/facebook/ads/NativeAdLayout;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3

    .line 49
    new-instance v0, Lcom/facebook/ads/MediaView;

    invoke-direct {v0, p0}, Lcom/facebook/ads/MediaView;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getMediaView()Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayMediaView;->addView(Landroid/view/View;)V

    .line 51
    :cond_0
    new-instance v1, Lcom/facebook/ads/AdOptionsView;

    iget-object v2, p1, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->nativeAd:Lcom/facebook/ads/NativeAd;

    check-cast v2, Lcom/facebook/ads/NativeAdBase;

    invoke-direct {v1, p0, v2, p2}, Lcom/facebook/ads/AdOptionsView;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;)V

    .line 52
    check-cast v1, Landroid/view/View;

    invoke-direct {p1}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->getAdOptionsLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v1, p0}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p2, p3}, Lcom/facebook/ads/NativeAdLayout;->addView(Landroid/view/View;)V

    .line 54
    iget-object p0, p1, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->nativeAd:Lcom/facebook/ads/NativeAd;

    check-cast p4, Ljava/util/List;

    invoke-virtual {p0, p3, v0, p4}, Lcom/facebook/ads/NativeAd;->registerViewForInteraction(Landroid/view/View;Lcom/facebook/ads/MediaView;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getNetworkNativeAdView()Landroid/view/ViewGroup;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->nativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setNativeAdView(Landroid/view/View;)V
    .locals 7

    if-nez p1, :cond_0

    .line 33
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v0, "nativeAdView is null"

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    return-void

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 38
    new-instance v4, Lcom/facebook/ads/NativeAdLayout;

    invoke-direct {v4, v2}, Lcom/facebook/ads/NativeAdLayout;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v4, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->nativeAdLayout:Lcom/facebook/ads/NativeAdLayout;

    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getAdvertiserView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getIconView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getBodyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_4
    invoke-virtual {p0}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->getNativeAdViewHolder()Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/ads/nativead/internal/NativeAdViewHolder;->getCallToActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_5
    iget-object v0, p0, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/ironsource/adapters/facebook/nativead/FacebookNativeAdViewBinder;Lcom/facebook/ads/NativeAdLayout;Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
