.class public Lcom/ironsource/unity/androidbridge/BannerAd;
.super Ljava/lang/Object;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/unity/androidbridge/BannerAd$Config;
    }
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

.field mBannerAdViewVisibilityState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ironsource/unity/androidbridge/BannerAd$Config;Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;)V
    .locals 10

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdViewVisibilityState:I

    .line 26
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mActivity:Landroid/app/Activity;

    .line 27
    new-instance v0, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    iget-object v1, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mActivity:Landroid/app/Activity;

    iget-object v2, p2, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->config:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;

    invoke-direct {v0, v1, p1, v2}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/mediation/banner/LevelPlayBannerAdView$Config;)V

    iput-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    .line 29
    iget-object v4, p2, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->description:Ljava/lang/String;

    iget v5, p2, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->x:F

    iget v6, p2, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->y:F

    iget-boolean v7, p2, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->displayOnLoad:Z

    iget-boolean v8, p2, Lcom/ironsource/unity/androidbridge/BannerAd$Config;->respectSafeArea:Z

    move-object v3, p0

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/unity/androidbridge/BannerAd;->setup(Ljava/lang/String;FFZZLcom/ironsource/unity/androidbridge/IUnityBannerAdListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/unity/androidbridge/BannerAd;Ljava/lang/String;FFZ)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/unity/androidbridge/BannerAd;->setPositionInternal(Ljava/lang/String;FFZ)V

    return-void
.end method

.method static synthetic lambda$setImpressionDataListener$1(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 0

    .line 182
    invoke-static {p1}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->getImpressionDataString(Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;->onImpressionSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$setImpressionDataListener$2(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V
    .locals 1

    .line 181
    new-instance v0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;Lcom/unity3d/mediation/impression/LevelPlayImpressionData;)V

    invoke-static {v0}, Lcom/ironsource/unity/androidbridge/AndroidBridgeUtilities;->postBackgroundTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private pixelsToDp(F)F
    .locals 1

    .line 313
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    return p1
.end method

.method private setPosition(Ljava/lang/String;FFZ)V
    .locals 7

    .line 187
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$4;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/unity/androidbridge/BannerAd$4;-><init>(Lcom/ironsource/unity/androidbridge/BannerAd;Ljava/lang/String;FFZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setPositionInternal(Ljava/lang/String;FFZ)V
    .locals 8

    .line 219
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 222
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 223
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 224
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 225
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz p4, :cond_1

    .line 232
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 233
    iget-object v2, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mActivity:Landroid/app/Activity;

    .line 234
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 235
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    .line 240
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    .line 241
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    .line 242
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 246
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v1, v7

    goto/16 :goto_2

    :sswitch_0
    const-string v1, "Custom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    goto :goto_2

    :sswitch_1
    const-string v1, "Center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    goto :goto_2

    :sswitch_2
    const-string v1, "TopCenter"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x6

    goto :goto_2

    :sswitch_3
    const-string v1, "BottomRight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    goto :goto_2

    :sswitch_4
    const-string v1, "TopLeft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string v1, "BottomLeft"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x3

    goto :goto_2

    :sswitch_6
    const-string v1, "TopRight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x2

    goto :goto_2

    :sswitch_7
    const-string v1, "CenterRight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x1

    goto :goto_2

    :sswitch_8
    const-string v6, "CenterLeft"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    :goto_2
    const p1, 0x800033

    packed-switch v1, :pswitch_data_0

    const/16 p1, 0x51

    .line 304
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 305
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 291
    :pswitch_0
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 292
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 293
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    if-eqz p4, :cond_b

    add-int/2addr p1, v3

    add-int/2addr p2, v4

    .line 300
    :cond_b
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 301
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :pswitch_1
    const/16 p1, 0x11

    .line 270
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_3

    :pswitch_2
    const/16 p1, 0x31

    .line 255
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 256
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :pswitch_3
    const p1, 0x800055

    .line 284
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 286
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 287
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    .line 248
    :pswitch_4
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 250
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 251
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :pswitch_5
    const p1, 0x800053

    .line 277
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 279
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 280
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :pswitch_6
    const p1, 0x800035

    .line 259
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 261
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 262
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_3

    :pswitch_7
    const p1, 0x800015

    .line 273
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 274
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :pswitch_8
    const p1, 0x800013

    .line 266
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eqz p4, :cond_c

    .line 267
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 309
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {p1, v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43ef75e4 -> :sswitch_8
        -0x39a8e559 -> :sswitch_7
        -0x3675fe19 -> :sswitch_6
        0x12847cf2 -> :sswitch_5
        0x1f43badc -> :sswitch_4
        0x3e618291 -> :sswitch_3
        0x4de885ea -> :sswitch_2
        0x7817b875 -> :sswitch_1
        0x78fb7791 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setup(Ljava/lang/String;FFZZLcom/ironsource/unity/androidbridge/IUnityBannerAdListener;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setBackgroundColor(I)V

    if-eqz p4, :cond_0

    .line 43
    iget-object p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {p4, v1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setVisibility(I)V

    .line 44
    iput v1, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdViewVisibilityState:I

    goto :goto_0

    .line 46
    :cond_0
    iget-object p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setVisibility(I)V

    .line 47
    iput v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdViewVisibilityState:I

    :goto_0
    if-eqz p5, :cond_1

    .line 50
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p4, v0, :cond_1

    .line 51
    iget-object p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setFitsSystemWindows(Z)V

    .line 52
    iget-object p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    const/16 v0, 0x500

    invoke-virtual {p4, v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setSystemUiVisibility(I)V

    .line 53
    iget-object p4, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    new-instance v0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/unity/androidbridge/BannerAd;Ljava/lang/String;FF)V

    invoke-virtual {p4, v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 60
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/ironsource/unity/androidbridge/BannerAd;->setPosition(Ljava/lang/String;FFZ)V

    .line 66
    iget-object p1, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    new-instance p2, Lcom/ironsource/unity/androidbridge/BannerAd$1;

    invoke-direct {p2, p0, p6}, Lcom/ironsource/unity/androidbridge/BannerAd$1;-><init>(Lcom/ironsource/unity/androidbridge/BannerAd;Lcom/ironsource/unity/androidbridge/IUnityBannerAdListener;)V

    invoke-virtual {p1, p2}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setBannerListener(Lcom/unity3d/mediation/banner/LevelPlayBannerAdViewListener;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->destroy()V

    return-void
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->getAdId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideAd()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$3;

    invoke-direct {v1, p0}, Lcom/ironsource/unity/androidbridge/BannerAd$3;-><init>(Lcom/ironsource/unity/androidbridge/BannerAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$setup$0$com-ironsource-unity-androidbridge-BannerAd(Ljava/lang/String;FFLandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 0
    const/4 p4, 0x1

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/unity/androidbridge/BannerAd;->setPosition(Ljava/lang/String;FFZ)V

    return-object p5
.end method

.method public load()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->loadAd()V

    return-void
.end method

.method public pauseAutoRefresh()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->pauseAutoRefresh()V

    return-void
.end method

.method public resumeAutoRefresh()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->resumeAutoRefresh()V

    return-void
.end method

.method public setImpressionDataListener(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 181
    :cond_0
    new-instance v0, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/ironsource/unity/androidbridge/BannerAd$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/unity/androidbridge/UnityImpressionDataListener;)V

    move-object p1, v0

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mBannerAdView:Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;

    invoke-virtual {v0, p1}, Lcom/unity3d/mediation/banner/LevelPlayBannerAdView;->setImpressionDataListener(Lcom/unity3d/mediation/impression/LevelPlayImpressionDataListener;)V

    return-void
.end method

.method public showAd()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/ironsource/unity/androidbridge/BannerAd;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/ironsource/unity/androidbridge/BannerAd$2;

    invoke-direct {v1, p0}, Lcom/ironsource/unity/androidbridge/BannerAd$2;-><init>(Lcom/ironsource/unity/androidbridge/BannerAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
