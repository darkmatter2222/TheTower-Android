.class Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;
.super Ljava/lang/Object;
.source "UnityAdManagerInterstitialAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/admanager/AppEventListener;


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

    .line 123
    iput-object p1, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAppEvent$0$com-google-unity-ads-admanager-UnityAdManagerInterstitialAd$3(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAdCallback;->onAppEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "data"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;->this$0:Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;

    invoke-static {v0}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;->-$$Nest$fgetservice(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/admanager/UnityAdManagerInterstitialAd$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
