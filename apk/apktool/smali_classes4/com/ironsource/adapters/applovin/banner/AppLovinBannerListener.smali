.class public final Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;
.super Ljava/lang/Object;
.source "AppLovinBannerListener.kt"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/adview/AppLovinAdViewEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0018\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J\u0018\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0008H\u0016J \u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u001eH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;",
        "Lcom/applovin/sdk/AppLovinAdLoadListener;",
        "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
        "Lcom/applovin/sdk/AppLovinAdClickListener;",
        "Lcom/applovin/adview/AppLovinAdViewEventListener;",
        "listener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;",
        "adView",
        "Lcom/applovin/adview/AppLovinAdView;",
        "layoutParams",
        "Landroid/widget/FrameLayout$LayoutParams;",
        "<init>",
        "(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/applovin/adview/AppLovinAdView;Landroid/widget/FrameLayout$LayoutParams;)V",
        "mainHandler",
        "Landroid/os/Handler;",
        "adReceived",
        "",
        "appLovinAd",
        "Lcom/applovin/sdk/AppLovinAd;",
        "failedToReceiveAd",
        "errorCode",
        "",
        "adDisplayed",
        "adHidden",
        "adClicked",
        "adOpenedFullscreen",
        "appLovinAdView",
        "adClosedFullscreen",
        "adLeftApplication",
        "adFailedToDisplay",
        "Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;",
        "applovinadapter_release"
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
.field private final adView:Lcom/applovin/adview/AppLovinAdView;

.field private final layoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private final listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$2GXo1dn0028jcWb13tasx8MHUJU(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->adReceived$lambda$0(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;Lcom/applovin/adview/AppLovinAdView;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutParams"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    .line 20
    iput-object p2, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->adView:Lcom/applovin/adview/AppLovinAdView;

    .line 21
    iput-object p3, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method private static final adReceived$lambda$0(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->adView:Lcom/applovin/adview/AppLovinAdView;

    invoke-virtual {v0, p1}, Lcom/applovin/adview/AppLovinAdView;->renderAd(Lcom/applovin/sdk/AppLovinAd;)V

    .line 37
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    iget-object v0, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->adView:Lcom/applovin/adview/AppLovinAdView;

    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->layoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-interface {p1, v0, p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 74
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdClicked()V

    return-void
.end method

.method public adClosedFullscreen(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appLovinAdView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 94
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdScreenDismissed()V

    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 57
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdOpened()V

    return-void
.end method

.method public adFailedToDisplay(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appLovinAdView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorCode"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    return-void
.end method

.method public adLeftApplication(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appLovinAdView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 104
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLeftApplication()V

    return-void
.end method

.method public adOpenedFullscreen(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V
    .locals 1

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "appLovinAdView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget-object p1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 84
    iget-object p1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdScreenPresented()V

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    const-string v0, "appLovinAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose()V

    .line 35
    iget-object v0, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 4

    .line 46
    sget-object v0, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v0, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Failed to load, errorCode = %s, errorMessage = %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "format(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/ironsource/adapters/applovin/banner/AppLovinBannerListener;->listener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    sget-object v2, Lcom/ironsource/adapters/applovin/AppLovinAdapter;->Companion:Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;

    invoke-virtual {v2, p1}, Lcom/ironsource/adapters/applovin/AppLovinAdapter$Companion;->getLoadErrorType(I)Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-result-object v2

    invoke-interface {v1, v2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method
