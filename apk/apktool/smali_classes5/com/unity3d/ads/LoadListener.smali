.class public interface abstract Lcom/unity3d/ads/LoadListener;
.super Ljava/lang/Object;
.source "LoadListener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnityAd:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J!\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H&\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/unity3d/ads/LoadListener;",
        "UnityAd",
        "",
        "onAdLoaded",
        "",
        "unityAd",
        "error",
        "Lcom/unity3d/ads/UnityAdsError;",
        "(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V",
        "unity-ads_defaultRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onAdLoaded(Ljava/lang/Object;Lcom/unity3d/ads/UnityAdsError;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUnityAd;",
            "Lcom/unity3d/ads/UnityAdsError;",
            ")V"
        }
    .end annotation
.end method
