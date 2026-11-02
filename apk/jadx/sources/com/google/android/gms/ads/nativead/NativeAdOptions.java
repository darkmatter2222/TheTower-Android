package com.google.android.gms.ads.nativead;

import com.google.android.gms.ads.VideoOptions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 $2\u00020\u0001:\u0005%&$'(J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004R\u0017\u0010\t\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\u0004R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0007\u001a\u0004\b\u0011\u0010\u0004R\u0017\u0010\u0014\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\f\u001a\u0004\b\u0013\u0010\u000eR\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00158\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001d\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u0007\u001a\u0004\b\u001c\u0010\u0004R\u0017\u0010 \u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u0007\u001a\u0004\b\u001f\u0010\u0004R\u0017\u0010#\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b!\u0010\f\u001a\u0004\b\"\u0010\u000e¨\u0006)"}, d2 = {"Lcom/google/android/gms/ads/nativead/NativeAdOptions;", "", "", "shouldReturnUrlsForImageAssets", "()Z", "shouldRequestMultipleImages", "a", "Z", "getShouldReturnUrls", "shouldReturnUrls", "", "b", "I", "getMediaAspectRatio", "()I", "mediaAspectRatio", "c", "getShouldRequestMultipleImages", "d", "getAdChoicesPlacement", "adChoicesPlacement", "Lcom/google/android/gms/ads/VideoOptions;", "e", "Lcom/google/android/gms/ads/VideoOptions;", "getVideoOptions", "()Lcom/google/android/gms/ads/VideoOptions;", "videoOptions", "f", "getUseCustomMuteThisAd", "useCustomMuteThisAd", "g", "getCustomClickGestureAllowTaps", "customClickGestureAllowTaps", "h", "getCustomClickGestureDirection", "customClickGestureDirection", "Companion", "AdChoicesPlacement", "Builder", "NativeMediaAspectRatio", "SwipeGestureDirection", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class NativeAdOptions {
    public static final int ADCHOICES_BOTTOM_LEFT = 3;
    public static final int ADCHOICES_BOTTOM_RIGHT = 2;
    public static final int ADCHOICES_TOP_LEFT = 0;
    public static final int ADCHOICES_TOP_RIGHT = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_ANY = 1;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_LANDSCAPE = 2;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_PORTRAIT = 3;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_SQUARE = 4;
    public static final int NATIVE_MEDIA_ASPECT_RATIO_UNKNOWN = 0;
    public static final int ORIENTATION_ANY = 0;
    public static final int ORIENTATION_LANDSCAPE = 2;
    public static final int ORIENTATION_NOT_SET = -1;
    public static final int ORIENTATION_PORTRAIT = 1;
    public static final int SWIPE_GESTURE_DIRECTION_DOWN = 8;
    public static final int SWIPE_GESTURE_DIRECTION_LEFT = 2;
    public static final int SWIPE_GESTURE_DIRECTION_RIGHT = 1;
    public static final int SWIPE_GESTURE_DIRECTION_UP = 4;

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final boolean shouldReturnUrls;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final int mediaAspectRatio;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final boolean shouldRequestMultipleImages;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final int adChoicesPlacement;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final VideoOptions videoOptions;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final boolean useCustomMuteThisAd;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final boolean customClickGestureAllowTaps;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    private final int customClickGestureDirection;

    @Retention(RetentionPolicy.RUNTIME)
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0086\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/nativead/NativeAdOptions$AdChoicesPlacement;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public @interface AdChoicesPlacement {
    }

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u0017\u0010\r\u001a\u00020\u00002\b\b\u0001\u0010\f\u001a\u00020\u0006¢\u0006\u0004\b\r\u0010\tJ\u0017\u0010\u0010\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u00002\b\b\u0001\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\r\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;", "", "", "shouldReturnUrls", "setReturnUrlsForImageAssets", "(Z)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;", "", "aspectRatio", "setMediaAspectRatio", "(I)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;", "shouldRequestMultipleImages", "setRequestMultipleImages", "adChoicesPlacement", "setAdChoicesPlacement", "Lcom/google/android/gms/ads/VideoOptions;", "videoOptions", "setVideoOptions", "(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;", "swipeGestureDirection", "tapsAllowed", "enableCustomClickGestureDirection", "(IZ)Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;", "requestCustomMuteThisAd", "setRequestCustomMuteThisAd", "Lcom/google/android/gms/ads/nativead/NativeAdOptions;", "build", "()Lcom/google/android/gms/ads/nativead/NativeAdOptions;", "<init>", "()V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private boolean a;
        private int b;
        private boolean c;
        private VideoOptions d;
        private int e = 1;
        private boolean f;
        private boolean g;
        private int h;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this.a, this.b, this.c, this.e, this.d, this.f, this.g, this.h, 0);
        }

        public final Builder enableCustomClickGestureDirection(@SwipeGestureDirection int swipeGestureDirection, boolean tapsAllowed) {
            this.g = tapsAllowed;
            this.h = swipeGestureDirection;
            return this;
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int adChoicesPlacement) {
            this.e = adChoicesPlacement;
            return this;
        }

        public final Builder setMediaAspectRatio(@NativeMediaAspectRatio int aspectRatio) {
            this.b = aspectRatio;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean requestCustomMuteThisAd) {
            this.f = requestCustomMuteThisAd;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean shouldRequestMultipleImages) {
            this.c = shouldRequestMultipleImages;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean shouldReturnUrls) {
            this.a = shouldReturnUrls;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.d = videoOptions;
            return this;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0086\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/nativead/NativeAdOptions$NativeMediaAspectRatio;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public @interface NativeMediaAspectRatio {
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0086\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/nativead/NativeAdOptions$SwipeGestureDirection;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public @interface SwipeGestureDirection {
    }

    private NativeAdOptions(boolean z, int i, boolean z2, int i2, VideoOptions videoOptions, boolean z3, boolean z4, int i3) {
        this.shouldReturnUrls = z;
        this.mediaAspectRatio = i;
        this.shouldRequestMultipleImages = z2;
        this.adChoicesPlacement = i2;
        this.videoOptions = videoOptions;
        this.useCustomMuteThisAd = z3;
        this.customClickGestureAllowTaps = z4;
        this.customClickGestureDirection = i3;
    }

    public /* synthetic */ NativeAdOptions(boolean z, int i, boolean z2, int i2, VideoOptions videoOptions, boolean z3, boolean z4, int i3, int i4) {
        this(z, i, z2, i2, videoOptions, z3, z4, i3);
    }

    public final int getAdChoicesPlacement() {
        return this.adChoicesPlacement;
    }

    public final boolean getCustomClickGestureAllowTaps() {
        return this.customClickGestureAllowTaps;
    }

    public final int getCustomClickGestureDirection() {
        return this.customClickGestureDirection;
    }

    public final int getMediaAspectRatio() {
        return this.mediaAspectRatio;
    }

    public final boolean getShouldRequestMultipleImages() {
        return this.shouldRequestMultipleImages;
    }

    public final boolean getShouldReturnUrls() {
        return this.shouldReturnUrls;
    }

    public final boolean getUseCustomMuteThisAd() {
        return this.useCustomMuteThisAd;
    }

    public final VideoOptions getVideoOptions() {
        return this.videoOptions;
    }

    public final boolean shouldRequestMultipleImages() {
        return this.shouldRequestMultipleImages;
    }

    public final boolean shouldReturnUrlsForImageAssets() {
        return this.shouldReturnUrls;
    }
}
