.class Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;
.super Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;
.source "UnityAdManagerInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdFailedToLoad$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$4(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onInterstitialAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdLoaded$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$4()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onInterstitialAdLoaded()V

    :cond_0
    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fputadManagerInterstitialAd(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    .line 159
    iget-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetadManagerInterstitialAd(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/OnPaidEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 160
    iget-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetadManagerInterstitialAd(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetappEventListener(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AppEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setAppEventListener(Lcom/google/android/gms/ads/admanager/AppEventListener;)V

    .line 161
    iget-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetadManagerInterstitialAd(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 163
    iget-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ad"
        }
    .end annotation

    .line 154
    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    invoke-virtual {p0, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$4;->onAdLoaded(Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)V

    return-void
.end method
