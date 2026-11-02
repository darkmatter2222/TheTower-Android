package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.graphics.drawable.Drawable;
import com.google.android.libraries.ads.mobile.sdk.common.VideoController;
import com.google.android.libraries.ads.mobile.sdk.internal.nativead.InternalNativeAd;
import com.tapjoy.TJAdUnitConstants;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0005\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0004R\u0016\u0010\r\u001a\u0004\u0018\u00010\n8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0011\u001a\u00020\u000e8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00128&@&X¦\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0018À\u0006\u0001"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/MediaContent;", "", "", "getAspectRatio", "()F", "aspectRatio", "getDuration", "duration", "getCurrentTime", TJAdUnitConstants.String.VIDEO_CURRENT_TIME, "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;", "getVideoController", "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoController;", "videoController", "", "getHasVideoContent", "()Z", "hasVideoContent", "Landroid/graphics/drawable/Drawable;", "getMainImage", "()Landroid/graphics/drawable/Drawable;", "setMainImage", "(Landroid/graphics/drawable/Drawable;)V", "mainImage", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public interface MediaContent {
    InternalNativeAd a();

    float getAspectRatio();

    float getCurrentTime();

    float getDuration();

    boolean getHasVideoContent();

    Drawable getMainImage();

    VideoController getVideoController();

    void setMainImage(Drawable drawable);
}
