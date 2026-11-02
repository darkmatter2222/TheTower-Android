.class public Lcom/google/unity/ads/Interstitial;
.super Ljava/lang/Object;
.source "Interstitial.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final callback:Lcom/google/unity/ads/UnityInterstitialAdCallback;

.field private final fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

.field private final onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/Interstitial;->callback:Lcom/google/unity/ads/UnityInterstitialAdCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/Interstitial;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinterstitialAd(Lcom/google/unity/ads/Interstitial;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/Interstitial;)Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/Interstitial;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputinterstitialAd(Lcom/google/unity/ads/Interstitial;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/UnityInterstitialAdCallback;)V
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

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/google/unity/ads/Interstitial$1;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/Interstitial$1;-><init>(Lcom/google/unity/ads/Interstitial;)V

    iput-object v0, p0, Lcom/google/unity/ads/Interstitial;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 115
    new-instance v0, Lcom/google/unity/ads/Interstitial$2;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/Interstitial$2;-><init>(Lcom/google/unity/ads/Interstitial;)V

    iput-object v0, p0, Lcom/google/unity/ads/Interstitial;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 53
    iput-object p1, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/google/unity/ads/Interstitial;->callback:Lcom/google/unity/ads/UnityInterstitialAdCallback;

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
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 4

    .line 222
    const-string v0, "Unable to check interstitial response info: %s"

    const-string v1, "AdsUnity"

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/unity/ads/Interstitial$4;

    invoke-direct {v3, p0}, Lcom/google/unity/ads/Interstitial$4;-><init>(Lcom/google/unity/ads/Interstitial;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 228
    iget-object v3, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
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

    .line 240
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 239
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 236
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 235
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 234
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
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

    .line 176
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$loadAd$0$com-google-unity-ads-Interstitial(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Interstitial$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Interstitial$3;-><init>(Lcom/google/unity/ads/Interstitial;)V

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;)V

    return-void
.end method

.method synthetic lambda$pollAd$0$com-google-unity-ads-Interstitial(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->callback:Lcom/google/unity/ads/UnityInterstitialAdCallback;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onInterstitialAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$pollAd$1$com-google-unity-ads-Interstitial()V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v1, p0, Lcom/google/unity/ads/Interstitial;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    return-void
.end method

.method synthetic lambda$show$0$com-google-unity-ads-Interstitial()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v1, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->show(Landroid/app/Activity;)V

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

    .line 139
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/Interstitial;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

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

    .line 184
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->pollAd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez p1, :cond_0

    .line 186
    const-string p1, "AdsUnity"

    const-string v0, "Failed to obtain an Interstitial Ad from the preloader."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v1, Lcom/google/android/gms/ads/LoadAdError;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Failed to obtain an Interstitial Ad from the preloader."

    const-string v4, "com.google.android.gms.ads"

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/LoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 194
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, v1}, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda2;-><init>(Lcom/google/unity/ads/Interstitial;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda3;-><init>(Lcom/google/unity/ads/Interstitial;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    iget-object p1, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 205
    iget-object p1, p0, Lcom/google/unity/ads/Interstitial;->callback:Lcom/google/unity/ads/UnityInterstitialAdCallback;

    if-eqz p1, :cond_1

    .line 206
    invoke-interface {p1}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onInterstitialAdLoaded()V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->interstitialAd:Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "AdsUnity"

    const-string v1, "Tried to show interstitial ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Interstitial$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/Interstitial;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
