.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2$1;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;->onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2$1;->this$2:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2$1$1;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2$1;Lcom/google/android/gms/ads/AdValue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
