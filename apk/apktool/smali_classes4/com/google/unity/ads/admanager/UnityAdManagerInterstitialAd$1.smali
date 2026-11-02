.class Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "UnityAdManagerInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;
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

    .line 54
    iput-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdClicked$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onAdClicked()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdDismissedFullScreenContent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onAdDismissedFullScreenContent()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdFailedToShowFullScreenContent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdImpression$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onAdImpression()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdShowedFullScreenContent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$1()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onAdShowedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda3;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda4;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;Lcom/google/android/gms/ads/AdError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda2;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
