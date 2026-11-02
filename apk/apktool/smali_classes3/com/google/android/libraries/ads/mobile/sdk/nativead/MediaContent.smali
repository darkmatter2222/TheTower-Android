.class public interface abstract Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001R\u0014\u0010\u0005\u001a\u00020\u00028&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0004R\u0016\u0010\r\u001a\u0004\u0018\u00010\n8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0011\u001a\u00020\u000e8&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00128&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0018\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;",
        "",
        "",
        "getAspectRatio",
        "()F",
        "aspectRatio",
        "getDuration",
        "duration",
        "getCurrentTime",
        "currentTime",
        "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;",
        "getVideoController",
        "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;",
        "videoController",
        "",
        "getHasVideoContent",
        "()Z",
        "hasVideoContent",
        "Landroid/graphics/drawable/Drawable;",
        "getMainImage",
        "()Landroid/graphics/drawable/Drawable;",
        "setMainImage",
        "(Landroid/graphics/drawable/Drawable;)V",
        "mainImage",
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
.method public abstract a()Lcom/google/android/libraries/ads/mobile/sdk/internal/nativead/InternalNativeAd;
.end method

.method public abstract getAspectRatio()F
.end method

.method public abstract getCurrentTime()F
.end method

.method public abstract getDuration()F
.end method

.method public abstract getHasVideoContent()Z
.end method

.method public abstract getMainImage()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getVideoController()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;
.end method

.method public abstract setMainImage(Landroid/graphics/drawable/Drawable;)V
.end method
