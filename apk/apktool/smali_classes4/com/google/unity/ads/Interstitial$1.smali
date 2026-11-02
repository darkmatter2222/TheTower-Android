.class Lcom/google/unity/ads/Interstitial$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/unity/ads/Interstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/Interstitial;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/Interstitial;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdClicked$0$com-google-unity-ads-Interstitial$1()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onAdClicked()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdDismissedFullScreenContent$0$com-google-unity-ads-Interstitial$1()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onAdDismissedFullScreenContent()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdFailedToShowFullScreenContent$0$com-google-unity-ads-Interstitial$1(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdImpression$0$com-google-unity-ads-Interstitial$1()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onAdImpression()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdShowedFullScreenContent$0$com-google-unity-ads-Interstitial$1()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$1;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onAdShowedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/Interstitial$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/Interstitial$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

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

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda3;-><init>(Lcom/google/unity/ads/Interstitial$1;Lcom/google/android/gms/ads/AdError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda2;-><init>(Lcom/google/unity/ads/Interstitial$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/Interstitial$1$$ExternalSyntheticLambda4;-><init>(Lcom/google/unity/ads/Interstitial$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 78
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
