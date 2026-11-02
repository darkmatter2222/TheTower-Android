.class public Lcom/google/unity/ads/UnityRewardedAd;
.super Ljava/lang/Object;
.source "UnityRewardedAd.java"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private callback:Lcom/google/unity/ads/UnityRewardedAdCallback;

.field private final fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

.field private final onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

.field private rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;


# direct methods
.method static bridge synthetic -$$Nest$fgetcallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/unity/ads/UnityRewardedAdCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityRewardedAd;->callback:Lcom/google/unity/ads/UnityRewardedAdCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/android/gms/ads/FullScreenContentCallback;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityRewardedAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/android/gms/ads/OnPaidEventListener;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityRewardedAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrewardedAd(Lcom/google/unity/ads/UnityRewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    iget-object p0, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputrewardedAd(Lcom/google/unity/ads/UnityRewardedAd;Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/unity/ads/UnityRewardedAdCallback;)V
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

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/unity/ads/UnityRewardedAd$1;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityRewardedAd$1;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 59
    new-instance v0, Lcom/google/unity/ads/UnityRewardedAd$2;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityRewardedAd$2;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    iput-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    .line 118
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    .line 119
    iput-object p2, p0, Lcom/google/unity/ads/UnityRewardedAd;->callback:Lcom/google/unity/ads/UnityRewardedAdCallback;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 4

    .line 250
    const-string v0, "Unable to check unity rewarded ad response info: %s"

    const-string v1, "AdsUnity"

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/google/unity/ads/UnityRewardedAd$5;

    invoke-direct {v3, p0}, Lcom/google/unity/ads/UnityRewardedAd$5;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 256
    iget-object v3, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 260
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

    .line 268
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 267
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 264
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 263
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRewardItem()Lcom/google/android/gms/ads/rewarded/RewardItem;
    .locals 5

    .line 275
    const-string v0, "Unable to get reward item: %s"

    iget-object v1, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    const/4 v2, 0x0

    const-string v3, "AdsUnity"

    if-nez v1, :cond_0

    .line 276
    const-string v0, "Tried to get reward item before it was ready. This should in theory never happen. If it does, please contact the plugin owners."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 280
    :cond_0
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v4, Lcom/google/unity/ads/UnityRewardedAd$6;

    invoke-direct {v4, p0}, Lcom/google/unity/ads/UnityRewardedAd$6;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    invoke-direct {v1, v4}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 288
    iget-object v4, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 292
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/rewarded/RewardItem;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 300
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 296
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2
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

    .line 193
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method synthetic lambda$loadAd$0$com-google-unity-ads-UnityRewardedAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedAd$3;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void
.end method

.method synthetic lambda$pollAd$0$com-google-unity-ads-UnityRewardedAd(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->callback:Lcom/google/unity/ads/UnityRewardedAdCallback;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityRewardedAdCallback;->onRewardedAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$pollAd$1$com-google-unity-ads-UnityRewardedAd()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/google/unity/ads/UnityRewardedAd;->onPaidEventListener:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    return-void
.end method

.method synthetic lambda$setServerSideVerificationOptions$0$com-google-unity-ads-UnityRewardedAd(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    return-void
.end method

.method synthetic lambda$show$0$com-google-unity-ads-UnityRewardedAd()V
    .locals 3

    .line 207
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v1, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    new-instance v2, Lcom/google/unity/ads/UnityRewardedAd$4;

    invoke-direct {v2, p0}, Lcom/google/unity/ads/UnityRewardedAd$4;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

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

    .line 128
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/UnityRewardedAd;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V

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

    .line 167
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->pollAd(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez p1, :cond_0

    .line 169
    const-string p1, "AdsUnity"

    const-string v0, "Failed to obtain a Rewarded Ad from the preloader."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v1, Lcom/google/android/gms/ads/LoadAdError;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v3, "Failed to obtain a Rewarded Ad from the preloader."

    const-string v4, "com.google.android.gms.ads"

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/LoadAdError;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;Lcom/google/android/gms/ads/ResponseInfo;)V

    .line 177
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda3;-><init>(Lcom/google/unity/ads/UnityRewardedAd;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    new-instance v0, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda4;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 188
    iget-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->fullScreenContentCallback:Lcom/google/android/gms/ads/FullScreenContentCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    return-void
.end method

.method public setServerSideVerificationOptions(Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "serverSideVerificationOptions"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_0

    .line 230
    const-string p1, "AdsUnity"

    const-string v0, "Tried set server side verification before it was ready. This should in theory never happen. If it does, please contact the plugin owners."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda2;-><init>(Lcom/google/unity/ads/UnityRewardedAd;Lcom/google/android/gms/ads/rewarded/ServerSideVerificationOptions;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->rewardedAd:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-nez v0, :cond_0

    .line 201
    const-string v0, "AdsUnity"

    const-string v1, "Tried to show rewarded ad before it was ready. This should in theory never happen. If it does, please contact the plugin owners."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/google/unity/ads/UnityRewardedAd;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedAd$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/UnityRewardedAd;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
