.class public Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;
.super Ljava/lang/Object;
.source "UnityAdManagerInterstitialAd.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

.field private final appEventListener:Lcom/google/android/gms/ads/admanager/AppEventListener;

.field private final callback:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

.field private final fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private final onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

.field private final service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static bridge synthetic -$$Nest$fgetadManagerInterstitialAd(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetappEventListener(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AppEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->appEventListener:Lcom/google/android/gms/ads/admanager/AppEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->callback:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->service:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputadManagerInterstitialAd(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;)V
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

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->service:Ljava/util/concurrent/ExecutorService;

    .line 53
    new-instance v0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 106
    new-instance v0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 122
    new-instance v0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->appEventListener:Lcom/google/android/gms/ads/admanager/AppEventListener;

    .line 137
    iput-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    .line 138
    iput-object p2, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->callback:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 2

    .line 222
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda2;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 224
    iget-object v1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 228
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

    .line 234
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 232
    const-string v1, "Unable to check Ad Manager interstitial response info: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string v1, "AdsUnity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
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

    .line 187
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$getResponseInfo$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadAd$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd(Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    return-void
.end method

.method synthetic lambda$pollAd$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    iget-object v1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 205
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    iget-object v1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->appEventListener:Lcom/google/android/gms/ads/admanager/AppEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    return-void
.end method

.method synthetic lambda$show$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    iget-object v1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    return-void
.end method

.method public loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
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

    .line 148
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public pollAd(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    .line 196
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->pollAd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    iput-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-nez p1, :cond_0

    .line 198
    const-string p1, "AdsUnity"

    const-string v0, "Failed to obtain an Ad Manager Interstitial Ad from the preloader."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda3;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    iget-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->adManagerInterstitialAd:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-nez v0, :cond_0

    .line 242
    const-string v0, "AdsUnity"

    const-string v1, "Tried to show Ad Manager interstitial ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
