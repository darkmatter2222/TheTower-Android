.class Lcom/google/unity/ads/UnityAppOpenAd$1;
.super Ljava/lang/Object;
.source "UnityAppOpenAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


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

    .line 58
    iput-object p1, p0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPaidEvent$0$com-google-unity-ads-UnityAppOpenAd$1(Lcom/google/android/gms/ads/AdValue;)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    invoke-static {v0}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$fgetcallback(Lcom/google/unity/ads/UnityAppOpenAd;)Lcom/google/unity/ads/UnityAppOpenAdCallback;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getPrecisionType()I

    move-result v1

    .line 66
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getValueMicros()J

    move-result-wide v2

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdValue;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-interface {v0, v1, v2, v3, p1}, Lcom/google/unity/ads/UnityAppOpenAdCallback;->onPaidEvent(IJLjava/lang/String;)V

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

    .line 61
    iget-object v0, p0, Lcom/google/unity/ads/UnityAppOpenAd$1;->this$0:Lcom/google/unity/ads/UnityAppOpenAd;

    new-instance v1, Lcom/google/unity/ads/UnityAppOpenAd$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityAppOpenAd$1$$ExternalSyntheticLambda0;-><init>(Lcom/google/unity/ads/UnityAppOpenAd$1;Lcom/google/android/gms/ads/AdValue;)V

    invoke-static {v0, v1}, Lcom/google/unity/ads/UnityAppOpenAd;->-$$Nest$mrunOnNewThread(Lcom/google/unity/ads/UnityAppOpenAd;Ljava/lang/Runnable;)V

    return-void
.end method
