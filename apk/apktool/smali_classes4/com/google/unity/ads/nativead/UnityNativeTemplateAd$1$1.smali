.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "UnityNativeTemplateAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;->onAdClicked()V

    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;->onAdDismissedFullScreenContent()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adError"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;->onNativeAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;->onAdImpression()V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;->onAdShowedFullScreenContent()V

    return-void
.end method
