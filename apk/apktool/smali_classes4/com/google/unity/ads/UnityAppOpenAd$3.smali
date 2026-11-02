.class Lcom/google/unity/ads/UnityAppOpenAd$3;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "UnityAppOpenAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityAppOpenAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/UnityAppOpenAd;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityAppOpenAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdFailedToLoad$0$com-google-unity-ads-UnityAppOpenAd$3(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAppOpenAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdLoaded$0$com-google-unity-ads-UnityAppOpenAd$3()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAppOpenAdLoaded()V

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

    .line 155
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityAppOpenAd$3$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$3;Lcom/google/android/gms/ads/LoadAdError;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0, p1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fputappOpenAd(Lcom/google/unity/ads/UnityAppOpenAd;Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    .line 142
    iget-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {p1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetappOpenAd(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetonPaidEventListener(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/android/gms/ads/OnPaidEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    .line 143
    iget-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {p1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetappOpenAd(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    move-result-object p1

    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetfullScreenContentCallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/android/gms/ads/FullScreenContentCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    .line 145
    iget-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$3;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v0, Lcom/google/unity/ads/UnityAppOpenAd$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/UnityAppOpenAd$3$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$3;)V

    invoke-static {p1, v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

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

    .line 138
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lcom/google/unity/ads/UnityAppOpenAd$3;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method
