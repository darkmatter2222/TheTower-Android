.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


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

    .line 117
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ad"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object v0, v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v0, p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fputnativeAd(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 121
    iget-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object p1, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;->onNativeAdLoaded()V

    .line 123
    iget-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;->this$1:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;

    iget-object p1, p1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetnativeAd(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Lcom/google/android/gms/ads/nativead/NativeAd;

    move-result-object p1

    new-instance v0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2$1;

    invoke-direct {v0, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2$1;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/nativead/NativeAd;->setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    return-void
.end method
