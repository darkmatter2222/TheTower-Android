.class public Lcom/google/unity/ads/UnityAppOpenAd;
.super Ljava/lang/Object;
.source "UnityAppOpenAd.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private final callback:Lcom/google/unity/ads/UnityAppOpenAdCallback;

.field private final fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private final onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetappOpenAd(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->callback:Lcom/google/unity/ads/UnityAppOpenAdCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputappOpenAd(Lcom/google/unity/ads/UnityAppOpenAd;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/unity/ads/UnityAppOpenAd;->runOnNewThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/UnityAppOpenAdCallback;)V
    .locals 1
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

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/unity/ads/UnityAppOpenAd$1;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityAppOpenAd$1;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 73
    new-instance v0, Lcom/google/unity/ads/UnityAppOpenAd$2;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityAppOpenAd$2;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 127
    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    .line 128
    iput-object p2, p0, Lcom/google/unity/ads/UnityAppOpenAd;->callback:Lcom/google/unity/ads/UnityAppOpenAdCallback;

    return-void
.end method

.method private runOnNewThread(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 224
    :cond_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/google/unity/ads/UnityAppOpenAd$4;

    invoke-direct {v2, p0}, Lcom/google/unity/ads/UnityAppOpenAd$4;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;)V

    invoke-direct {v0, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 232
    iget-object v2, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 236
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/ResponseInfo;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 242
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 240
    const-string v2, "Unable to check unity app open ad response info: %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v2, "AdsUnity"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public isAdAvailable(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnitId"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$loadAd$0$com-google-unity-ads-UnityAppOpenAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityAppOpenAd$3;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;)V

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    return-void
.end method

.method synthetic lambda$pollAd$0$com-google-unity-ads-UnityAppOpenAd(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->callback:Lcom/google/unity/ads/UnityAppOpenAdCallback;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAppOpenAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$pollAd$1$com-google-unity-ads-UnityAppOpenAd()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v1, p0, Lcom/google/unity/ads/UnityAppOpenAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    return-void
.end method

.method synthetic lambda$show$0$com-google-unity-ads-UnityAppOpenAd()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v1, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "adUnitId",
            "request"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pollAd(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adUnitId"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->pollAd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-nez p1, :cond_0

    .line 172
    const-string p1, "AdsUnity"

    const-string v0, "Failed to obtain an App Open Ad from the preloader."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v1, Lcom/google/android/gms/ads/LoadAdError;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Failed to obtain an App Open Ad from the preloader."

    const-string v4, "com.google.android.gms.ads"

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/LoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 180
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda2;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda3;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    iget-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "AdsUnity"

    const-string v1, "Tried to show app open ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityAppOpenAd$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/UnityAppOpenAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
