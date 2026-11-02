.class public final synthetic Lcom/unity3d/ads/UnityAds$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/unity3d/ads/IUnityAdsShowListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Lcom/unity3d/ads/IUnityAdsShowListener;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/UnityAds$$ExternalSyntheticLambda4;->f$0:Lcom/unity3d/ads/IUnityAdsShowListener;

    iput-object p2, p0, Lcom/unity3d/ads/UnityAds$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/unity3d/ads/UnityAds$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$$ExternalSyntheticLambda4;->f$0:Lcom/unity3d/ads/IUnityAdsShowListener;

    iget-object v1, p0, Lcom/unity3d/ads/UnityAds$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/unity3d/ads/UnityAds$$ExternalSyntheticLambda4;->f$2:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Lcom/unity3d/ads/UnityAds;->$r8$lambda$43z3yblqBt3EL91_JJiespNG5BU(Lcom/unity3d/ads/IUnityAdsShowListener;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
