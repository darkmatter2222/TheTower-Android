.class Lcom/google/unity/ads/UnityAppOpenAd$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "UnityAppOpenAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/unity/ads/UnityAppOpenAd;
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

    .line 74
    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onAdClicked$0$com-google-unity-ads-UnityAppOpenAd$2()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdClicked()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdDismissedFullScreenContent$0$com-google-unity-ads-UnityAppOpenAd$2()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdDismissedFullScreenContent()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdFailedToShowFullScreenContent$0$com-google-unity-ads-UnityAppOpenAd$2(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdImpression$0$com-google-unity-ads-UnityAppOpenAd$2()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdImpression()V

    :cond_0
    return-void
.end method

.method synthetic lambda$onAdShowedFullScreenContent$0$com-google-unity-ads-UnityAppOpenAd$2()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onAdShowedFullScreenContent()V

    :cond_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda4;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda3;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

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

    .line 77
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$2;Lcom/google/android/gms/ads/AdError;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda1;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$2;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityAppOpenAd$2$$ExternalSyntheticLambda2;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$2;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method
