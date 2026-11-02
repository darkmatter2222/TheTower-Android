.class Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;Lcom/google/android/gms/ads/AdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

.field final synthetic val$adUnitId:Ljava/lang/String;

.field final synthetic val$options:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

.field final synthetic val$request:Lcom/google/android/gms/ads/AdRequest;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;Ljava/lang/String;Lcom/google/android/gms/ads/nativead/NativeAdOptions;Lcom/google/android/gms/ads/AdRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$adUnitId",
            "val$options",
            "val$request"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->val$adUnitId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->val$options:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    iput-object p4, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->val$request:Lcom/google/android/gms/ads/AdRequest;

    iput-object p1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 114
    new-instance v0, Lcom/google/android/gms/ads/AdLoader$Builder;

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->this$0:Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;

    invoke-static {v1}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;->-$$Nest$fgetactivity(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->val$adUnitId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$2;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;)V

    .line 116
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1$1;-><init>(Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;)V

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->val$options:Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    .line 171
    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/google/unity/ads/nativead/UnityNativeTemplateAd$1;->val$request:Lcom/google/android/gms/ads/AdRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method
