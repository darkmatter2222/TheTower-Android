.class public Lcom/google/unity/ads/Banner;
.super Ljava/lang/Object;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/unity/ads/Banner$Insets;
    }
.end annotation


# instance fields
.field protected adView:Lcom/google/android/gms/ads/BaseAdView;

.field protected hidden:Z

.field private mHorizontalOffset:I

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPositionCode:I

.field private mVerticalOffset:I

.field protected unityListener:Lcom/google/unity/ads/UnityAdListener;

.field protected unityPlayerActivity:Landroid/app/Activity;


# direct methods
.method static bridge synthetic -$$Nest$fputmHorizontalOffset(Lcom/google/unity/ads/Banner;I)V
    .locals 0

    iput p1, p0, Lcom/google/unity/ads/Banner;->mHorizontalOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPositionCode(Lcom/google/unity/ads/Banner;I)V
    .locals 0

    iput p1, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVerticalOffset(Lcom/google/unity/ads/Banner;I)V
    .locals 0

    iput p1, p0, Lcom/google/unity/ads/Banner;->mVerticalOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePosition(Lcom/google/unity/ads/Banner;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/unity/ads/Banner;->updatePosition()V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/UnityAdListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "listener"
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    .line 101
    iput-object p2, p0, Lcom/google/unity/ads/Banner;->unityListener:Lcom/google/unity/ads/UnityAdListener;

    return-void
.end method

.method private getSafeInsets()Lcom/google/unity/ads/Banner$Insets;
    .locals 3

    .line 556
    new-instance v0, Lcom/google/unity/ads/Banner$Insets;

    invoke-direct {v0}, Lcom/google/unity/ads/Banner$Insets;-><init>()V

    .line 558
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 565
    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_0
    return-object v0

    .line 573
    :cond_3
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    iput v2, v0, Lcom/google/unity/ads/Banner$Insets;->top:I

    .line 574
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    iput v2, v0, Lcom/google/unity/ads/Banner$Insets;->left:I

    .line 575
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    iput v2, v0, Lcom/google/unity/ads/Banner$Insets;->bottom:I

    .line 576
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, v0, Lcom/google/unity/ads/Banner$Insets;->right:I

    return-object v0
.end method

.method private updatePosition()V
    .locals 2

    .line 542
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/unity/ads/Banner;->hidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$14;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$14;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "publisherId",
            "adSize",
            "positionCode"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/unity/ads/Banner$1;-><init>(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public create(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "publisherId",
            "adSize",
            "positionX",
            "positionY"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/unity/ads/Banner$2;-><init>(Lcom/google/unity/ads/Banner;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected createAdView(Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "publisherId",
            "adSize"
        }
    .end annotation

    .line 149
    new-instance v0, Lcom/google/android/gms/ads/AdView;

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/AdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/BaseAdView;->setBackgroundColor(I)V

    .line 152
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/BaseAdView;->setAdUnitId(Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdSize(Lcom/google/android/gms/ads/AdSize;)V

    .line 154
    iget-object p1, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    const/high16 p2, 0x60000

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setDescendantFocusability(I)V

    .line 156
    iget-object p1, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    iget-object p2, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {p0}, Lcom/google/unity/ads/Banner;->getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object p1, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    new-instance p2, Lcom/google/unity/ads/Banner$3;

    invoke-direct {p2, p0}, Lcom/google/unity/ads/Banner$3;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 260
    iget-object p1, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    new-instance p2, Lcom/google/unity/ads/Banner$4;

    invoke-direct {p2, p0}, Lcom/google/unity/ads/Banner$4;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/BaseAdView;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/unity/ads/Banner;->setLayoutChangeListener()V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$9;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$9;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 380
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    .line 381
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 384
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 393
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeightInPixels()F
    .locals 4

    .line 402
    const-string v0, "Failed to get ad view height: %s"

    const-string v1, "AdsUnity"

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/unity/ads/Banner$10;

    invoke-direct {v3, p0}, Lcom/google/unity/ads/Banner$10;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 410
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 414
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    return v0

    :catch_0
    move-exception v2

    .line 422
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 418
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method protected getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    .line 507
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 510
    iget v1, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->getLayoutGravityForPositionCode(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 512
    invoke-direct {p0}, Lcom/google/unity/ads/Banner;->getSafeInsets()Lcom/google/unity/ads/Banner$Insets;

    move-result-object v1

    .line 513
    iget v2, v1, Lcom/google/unity/ads/Banner$Insets;->left:I

    .line 514
    iget v3, v1, Lcom/google/unity/ads/Banner$Insets;->top:I

    .line 515
    iget v4, v1, Lcom/google/unity/ads/Banner$Insets;->bottom:I

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 516
    iget v1, v1, Lcom/google/unity/ads/Banner$Insets;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 518
    iget v1, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 519
    iget v1, p0, Lcom/google/unity/ads/Banner;->mHorizontalOffset:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 523
    :goto_0
    iget v1, p0, Lcom/google/unity/ads/Banner;->mVerticalOffset:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 527
    :goto_1
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 528
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0

    .line 530
    :cond_2
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 531
    iget v1, p0, Lcom/google/unity/ads/Banner;->mPositionCode:I

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v0

    .line 534
    :cond_4
    :goto_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    .line 583
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/unity/ads/Banner$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 584
    iget-object v1, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 588
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/ResponseInfo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 592
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 591
    const-string v1, "Unable to check banner response info: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 590
    const-string v1, "AdsUnity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidthInPixels()F
    .locals 4

    .line 433
    const-string v0, "Failed to get ad view width: %s"

    const-string v1, "AdsUnity"

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/unity/ads/Banner$11;

    invoke-direct {v3, p0}, Lcom/google/unity/ads/Banner$11;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 441
    iget-object v3, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v0

    return v0

    :catch_0
    move-exception v2

    .line 453
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 449
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public hide()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$8;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$8;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isCollapsible()Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 498
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->isCollapsible()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getResponseInfo$0$com-google-unity-ads-Banner()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->adView:Lcom/google/android/gms/ads/BaseAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/BaseAdView;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public loadAd(Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "request"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$6;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Banner$6;-><init>(Lcom/google/unity/ads/Banner;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setLayoutChangeListener()V
    .locals 2

    .line 286
    new-instance v0, Lcom/google/unity/ads/Banner$5;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/Banner$5;-><init>(Lcom/google/unity/ads/Banner;)V

    iput-object v0, p0, Lcom/google/unity/ads/Banner;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 311
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    .line 312
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/Banner;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "positionCode"
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$12;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Banner$12;-><init>(Lcom/google/unity/ads/Banner;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "positionX",
            "positionY"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/Banner$13;-><init>(Lcom/google/unity/ads/Banner;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/google/unity/ads/Banner;->unityPlayerActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Banner$7;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Banner$7;-><init>(Lcom/google/unity/ads/Banner;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
