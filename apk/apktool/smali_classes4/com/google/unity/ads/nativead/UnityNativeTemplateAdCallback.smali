.class public interface abstract Lcom/google/unity/ads/nativead/UnityNativeTemplateAdCallback;
.super Ljava/lang/Object;
.source "UnityNativeTemplateAdCallback.java"

# interfaces
.implements Lcom/google/unity/ads/UnityPaidEventListener;
.implements Lcom/google/unity/ads/UnityFullScreenContentCallback;


# virtual methods
.method public abstract onNativeAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation
.end method

.method public abstract onNativeAdLoaded()V
.end method
