.class Lcom/google/unity/ads/Interstitial$3;
.super Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;
.source "Interstitial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/Interstitial;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
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

    .line 145
    iput-object p1, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-direct {p0}, Lcom/google/android/gms/ads/interstitial/InterstitialAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdFailedToLoad$0$com-google-unity-ads-Interstitial$3(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onInterstitialAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdLoaded$0$com-google-unity-ads-Interstitial$3()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetcallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/unity/ads/UnityInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityInterstitialAdCallback;->onInterstitialAdLoaded()V

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

    .line 163
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/Interstitial$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/Interstitial$3$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/Interstitial$3;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0, p1}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fputinterstitialAd(Lcom/google/unity/ads/Interstitial;Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    .line 149
    iget-object p1, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {p1}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetinterstitialAd(Lcom/google/unity/ads/Interstitial;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/Interstitial;)Lcom/google/android/gms/ads/OnPaidEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 150
    iget-object p1, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {p1}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetinterstitialAd(Lcom/google/unity/ads/Interstitial;)Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/Interstitial$3;->this$0:Lcom/google/unity/ads/Interstitial;

    invoke-static {v0}, Lcom/google/unity/ads/Interstitial;->-$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/Interstitial;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 152
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/google/unity/ads/Interstitial$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/Interstitial$3$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/Interstitial$3;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 158
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

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

    .line 145
    check-cast p1, Lcom/google/android/gms/ads/interstitial/InterstitialAd;

    invoke-virtual {p0, p1}, Lcom/google/unity/ads/Interstitial$3;->onAdLoaded(Lcom/google/android/gms/ads/interstitial/InterstitialAd;)V

    return-void
.end method
