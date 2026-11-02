.class Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;
.super Ljava/lang/Object;
.source "UnityAdManagerInterstitialAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


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

    .line 107
    iput-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPaidEvent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$2(Lcom/google/android/gms/ads/AdValue;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result v1

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    move-result-wide v2

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onPaidEvent(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adValue"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$2;Lcom/google/android/gms/ads/AdValue;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
