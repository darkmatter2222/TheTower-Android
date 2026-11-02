.class Lcom/unity3d/services/ads/UnityAdsImplementation$2;
.super Ljava/lang/Object;
.source "UnityAdsImplementation.java"

# interfaces
.implements Lcom/unity3d/ads/core/domain/InternalLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/ads/UnityAdsImplementation;->load(Ljava/lang/String;Lcom/unity3d/ads/UnityAdsLoadOptions;Lcom/unity3d/ads/IUnityAdsLoadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/services/ads/UnityAdsImplementation;

.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/services/ads/UnityAdsImplementation;Lcom/unity3d/ads/IUnityAdsLoadListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->this$0:Lcom/unity3d/services/ads/UnityAdsImplementation;

    iput-object p2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iput-object p3, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadFail(Lcom/unity3d/ads/UnityAdsError;)V
    .locals 3

    .line 223
    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getCode()I

    move-result v0

    invoke-static {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->forNumber(I)Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;

    move-result-object v0

    .line 224
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    if-eqz v0, :cond_3

    .line 226
    sget-object v2, Lcom/unity3d/services/ads/UnityAdsImplementation$3;->$SwitchMap$gatewayprotocol$v1$ErrorOuterClass$PublicErrorCode:[I

    invoke-virtual {v0}, Lgatewayprotocol/v1/ErrorOuterClass$PublicErrorCode;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    goto :goto_0

    .line 231
    :cond_1
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->TIMEOUT:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    goto :goto_0

    .line 228
    :cond_2
    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;->NO_FILL:Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;

    .line 241
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v2, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcom/unity3d/ads/UnityAdsError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-interface {v0, v2, v1, p1}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsFailedToLoad(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsLoadError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/unity3d/ads/core/data/model/AdObject;)V
    .locals 1

    .line 218
    iget-object p1, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$listener:Lcom/unity3d/ads/IUnityAdsLoadListener;

    iget-object v0, p0, Lcom/unity3d/services/ads/UnityAdsImplementation$2;->val$placementId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/unity3d/ads/IUnityAdsLoadListener;->onUnityAdsAdLoaded(Ljava/lang/String;)V

    return-void
.end method
