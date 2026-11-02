.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;,
        Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;,
        Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008f\u0018\u00002\u00020\u0001:\u0003@ABJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u000c\u0010\tJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u0017\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0002H\'\u00a2\u0006\u0004\u0008\u0013\u0010\u000fR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00148&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0016\u0010!\u001a\u0004\u0018\u00010\u001e8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0016\u0010#\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010\u001cR\u0016\u0010%\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u001cR\u0016\u0010\'\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\u001cR\u001c\u0010*\u001a\u0004\u0018\u00010\u001a8&X\u00a7\u0004\u00a2\u0006\u000c\u0012\u0004\u0008)\u0010\t\u001a\u0004\u0008(\u0010\u001cR\u0016\u0010.\u001a\u0004\u0018\u00010+8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0016\u00100\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u0010\u001cR\u0016\u00102\u001a\u0004\u0018\u00010\u001a8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u001cR\u0016\u00104\u001a\u0004\u0018\u00010\u001e8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010 R\u0016\u00108\u001a\u0004\u0018\u0001058&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00086\u00107R\u0014\u0010<\u001a\u0002098&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008:\u0010;R\u0014\u0010?\u001a\u00020\u00028&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008=\u0010>\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006C\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd;",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Ad;",
        "Landroid/os/Bundle;",
        "impressionData",
        "",
        "recordImpression",
        "(Landroid/os/Bundle;)Z",
        "",
        "enableCustomClickGesture",
        "()V",
        "isCustomClickGestureEnabled",
        "()Z",
        "recordCustomClickGesture",
        "clickData",
        "performClick",
        "(Landroid/os/Bundle;)V",
        "touchEventData",
        "reportTouchEvent",
        "signals",
        "recordEvent",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;",
        "getAdEventCallback",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;",
        "setAdEventCallback",
        "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V",
        "adEventCallback",
        "",
        "getHeadline",
        "()Ljava/lang/String;",
        "headline",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/Image;",
        "getImage",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;",
        "image",
        "getBody",
        "body",
        "getCallToAction",
        "callToAction",
        "getAdvertiser",
        "advertiser",
        "getCreativeSummary",
        "getCreativeSummary$annotations",
        "creativeSummary",
        "",
        "getStarRating",
        "()Ljava/lang/Double;",
        "starRating",
        "getStore",
        "store",
        "getPrice",
        "price",
        "getIcon",
        "icon",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;",
        "getAdChoicesInfo",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;",
        "adChoicesInfo",
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "getMediaContent",
        "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "mediaContent",
        "getExtras",
        "()Landroid/os/Bundle;",
        "extras",
        "NativeAdType",
        "NativeMediaAspectRatio",
        "SwipeGestureDirection",
        "ads-mobile-sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# virtual methods
.method public abstract enableCustomClickGesture()V
.end method

.method public abstract getAdChoicesInfo()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesInfo;
.end method

.method public abstract getAdEventCallback()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;
.end method

.method public abstract getAdvertiser()Ljava/lang/String;
.end method

.method public abstract getBody()Ljava/lang/String;
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method public abstract getCreativeSummary()Ljava/lang/String;
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract getHeadline()Ljava/lang/String;
.end method

.method public abstract getIcon()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
.end method

.method public abstract getImage()Lcom/google/android/libraries/ads/mobile/sdk/common/Image;
.end method

.method public abstract getMediaContent()Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;
.end method

.method public abstract getPrice()Ljava/lang/String;
.end method

.method public abstract getStarRating()Ljava/lang/Double;
.end method

.method public abstract getStore()Ljava/lang/String;
.end method

.method public abstract isCustomClickGestureEnabled()Z
.end method

.method public abstract performClick(Landroid/os/Bundle;)V
    .annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract recordCustomClickGesture()V
.end method

.method public abstract recordEvent(Landroid/os/Bundle;)V
    .annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract recordImpression(Landroid/os/Bundle;)Z
    .annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract reportTouchEvent(Landroid/os/Bundle;)V
    .annotation runtime Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end method

.method public abstract setAdEventCallback(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdEventCallback;)V
.end method
