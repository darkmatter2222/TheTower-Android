.class public Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private callback:Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

.field protected hidden:Z

.field private mAdSize:Lcom/google/android/gms/ads/AdSize;

.field private mHorizontalOffset:I

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mPositionCode:I

.field private mVerticalOffset:I

.field private nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private templateView:Lcom/google/android/ads/nativetemplates/TemplateView;


# direct methods
.method static bridge synthetic -$$Nest$fgetactivity(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->callback:Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdSize(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/gms/ads/AdSize;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnativeAd(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/gms/ads/nativead/NativeAd;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/ads/nativetemplates/TemplateView;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHorizontalOffset(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V
    .locals 0

    iput p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mHorizontalOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPositionCode(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V
    .locals 0

    iput p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVerticalOffset(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V
    .locals 0

    iput p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mVerticalOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnativeAd(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->nativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtemplateView(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/android/ads/nativetemplates/TemplateView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePosition(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->updatePosition()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    .line 95
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->callback:Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->hidden:Z

    .line 97
    iput p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mHorizontalOffset:I

    .line 98
    iput p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mVerticalOffset:I

    return-void
.end method

.method private getInsets()Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;
    .locals 3

    .line 549
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;

    invoke-direct {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;-><init>()V

    .line 550
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    .line 551
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    .line 552
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    .line 553
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    .line 558
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 559
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    iput v2, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->top:I

    .line 560
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    iput v2, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->left:I

    .line 561
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    iput v2, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->bottom:I

    .line 562
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    iput v1, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->right:I

    :cond_1
    :goto_0
    return-object v0
.end method

.method private removeTemplateView()V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$14;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$14;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updatePosition()V
    .locals 2

    .line 479
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->templateView:Lcom/google/android/ads/nativetemplates/TemplateView;

    if-nez v0, :cond_0

    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$13;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$11;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    .line 431
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 436
    iput-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method protected getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .line 516
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 519
    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->getLayoutGravityForPositionCode(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 521
    invoke-direct {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->getInsets()Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;

    move-result-object v1

    .line 522
    iget v3, v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->left:I

    .line 523
    iget v4, v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->top:I

    .line 524
    iget v5, v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->bottom:I

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 525
    iget v1, v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$Insets;->right:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 526
    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    if-ne v1, v2, :cond_2

    .line 527
    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mHorizontalOffset:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 531
    :goto_0
    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mVerticalOffset:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/google/unity/ads/PluginUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    if-ge v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 535
    :goto_1
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 536
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0

    .line 538
    :cond_2
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 539
    iget v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    if-eqz v1, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    return-object v0

    .line 542
    :cond_4
    :goto_2
    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 4

    .line 356
    const-string v0, "Unable to check native response info: %s"

    const-string v1, "AdsUnity"

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$8;

    invoke-direct {v3, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$8;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 364
    iget-object v3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/ads/ResponseInfo;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 378
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 377
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 373
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 372
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$10;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$10;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "adUnitId",
            "options",
            "request"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderCustomSizeAtPosition(Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;Lcom/google/android/gms/ads/AdSize;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "templateStyle",
            "adSize",
            "positionX",
            "positionY"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->removeTemplateView()V

    const/4 v0, -0x1

    .line 293
    iput v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    .line 294
    iput p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mHorizontalOffset:I

    .line 295
    iput p4, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mVerticalOffset:I

    .line 296
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 298
    iget-object p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance p4, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$6;

    invoke-direct {p4, p0, p1, p2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$6;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {p3, p4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderCustomSizeAtPositionCode(Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;Lcom/google/android/gms/ads/AdSize;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "templateStyle",
            "adSize",
            "positionCode"
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->removeTemplateView()V

    .line 330
    iput p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    .line 331
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 333
    iget-object p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$7;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;Lcom/google/android/gms/ads/AdSize;)V

    invoke-virtual {p3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderDefaultSizeAtPosition(Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "templateStyle",
            "positionX",
            "positionY"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->removeTemplateView()V

    const/4 v0, -0x1

    .line 224
    iput v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    .line 225
    iput p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mHorizontalOffset:I

    .line 226
    iput p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mVerticalOffset:I

    const/4 p2, 0x0

    .line 227
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 229
    iget-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance p3, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$4;

    invoke-direct {p3, p0, p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$4;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public renderDefaultSizeAtPositionCode(Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "templateStyle",
            "positionCode"
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->removeTemplateView()V

    .line 257
    iput p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mPositionCode:I

    const/4 p2, 0x0

    .line 258
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mAdSize:Lcom/google/android/gms/ads/AdSize;

    .line 260
    iget-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$5;

    invoke-direct {v0, p0, p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$5;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/unity/ads/nativead/UnityNativeTemplateStyle;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setLayoutChangeListener()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_0

    return-void

    .line 445
    :cond_0
    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$12;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$12;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 470
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    .line 471
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 473
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 474
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

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

    .line 201
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$3;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPositionCode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "positionCode"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$2;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$9;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$9;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
