package com.google.android.gms.ads.formats;

import com.google.android.gms.ads.VideoOptions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import p005kotlin.Deprecated;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated(message = "Use com.google.android.gms.ads.nativead.NativeAdOptions instead.")
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\r\b\u0007\u0018\u0000  2\u00020\u0001:\u0004!\" #R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0017\u0010\u0010\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\n\u001a\u0004\b\u000f\u0010\fR\u0017\u0010\u0013\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006R\u0017\u0010\u0016\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u0014\u0010\n\u001a\u0004\b\u0015\u0010\fR\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0017\u0010\u001f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u001d\u0010\u0004\u001a\u0004\b\u001e\u0010\u0006¨\u0006$"}, d2 = {"Lcom/google/android/gms/ads/formats/NativeAdOptions;", "", "", "a", "Z", "getShouldReturnUrls", "()Z", "shouldReturnUrls", "", "b", "I", "getImageOrientation", "()I", "imageOrientation", "c", "getMediaAspectRatio", "mediaAspectRatio", "d", "getShouldRequestMultipleImages", "shouldRequestMultipleImages", "e", "getAdChoicesPlacement", "adChoicesPlacement", "Lcom/google/android/gms/ads/VideoOptions;", "f", "Lcom/google/android/gms/ads/VideoOptions;", "getVideoOptions", "()Lcom/google/android/gms/ads/VideoOptions;", "videoOptions", "g", "getUseCustomMuteThisAd", "useCustomMuteThisAd", "Companion", "AdChoicesPlacement", "Builder", "NativeMediaAspectRatio", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
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

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final boolean shouldReturnUrls;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final int imageOrientation;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final int mediaAspectRatio;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final boolean shouldRequestMultipleImages;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    private final int adChoicesPlacement;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    private final VideoOptions videoOptions;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    private final boolean useCustomMuteThisAd;

    @Retention(RetentionPolicy.RUNTIME)
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0086\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public @interface AdChoicesPlacement {
    }

    @Deprecated(message = "Use com.google.android.gms.ads.nativead.NativeAdOptions.Builder instead.")
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\b\u001a\u00020\u00002\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u000b\u0010\tJ\u0015\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0017\u0010\u000f\u001a\u00020\u00002\b\b\u0001\u0010\u000e\u001a\u00020\u0006¢\u0006\u0004\b\u000f\u0010\tJ\u0017\u0010\u0012\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013J\u0015\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u0015\u0010\u0005J\r\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;", "", "", "shouldReturnUrls", "setReturnUrlsForImageAssets", "(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;", "", "aspectRatio", "setMediaAspectRatio", "(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;", "orientation", "setImageOrientation", "shouldRequestMultipleImages", "setRequestMultipleImages", "adChoicesPlacement", "setAdChoicesPlacement", "Lcom/google/android/gms/ads/VideoOptions;", "videoOptions", "setVideoOptions", "(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;", "requestCustomMuteThisAd", "setRequestCustomMuteThisAd", "Lcom/google/android/gms/ads/formats/NativeAdOptions;", "build", "()Lcom/google/android/gms/ads/formats/NativeAdOptions;", "<init>", "()V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder {
        private boolean a;
        private int b;
        private boolean d;
        private VideoOptions e;
        private boolean g;
        private int c = -1;
        private int f = 1;

        public final NativeAdOptions build() {
            return new NativeAdOptions(this.a, this.b, this.c, this.d, this.f, this.e, this.g, 0);
        }

        public final Builder setAdChoicesPlacement(@AdChoicesPlacement int adChoicesPlacement) {
            this.f = adChoicesPlacement;
            return this;
        }

        public final Builder setImageOrientation(int orientation) {
            this.c = orientation;
            return this;
        }

        public final Builder setMediaAspectRatio(@NativeMediaAspectRatio int aspectRatio) {
            this.b = aspectRatio;
            return this;
        }

        public final Builder setRequestCustomMuteThisAd(boolean requestCustomMuteThisAd) {
            this.g = requestCustomMuteThisAd;
            return this;
        }

        public final Builder setRequestMultipleImages(boolean shouldRequestMultipleImages) {
            this.d = shouldRequestMultipleImages;
            return this;
        }

        public final Builder setReturnUrlsForImageAssets(boolean shouldReturnUrls) {
            this.a = shouldReturnUrls;
            return this;
        }

        public final Builder setVideoOptions(VideoOptions videoOptions) {
            this.e = videoOptions;
            return this;
        }
    }

    @Retention(RetentionPolicy.RUNTIME)
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\b\u0086\u0002\u0018\u00002\u00020\u0001B\u0000¨\u0006\u0002"}, d2 = {"Lcom/google/android/gms/ads/formats/NativeAdOptions$NativeMediaAspectRatio;", "", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public @interface NativeMediaAspectRatio {
    }

    private NativeAdOptions(boolean z, int i, int i2, boolean z2, int i3, VideoOptions videoOptions, boolean z3) {
        this.shouldReturnUrls = z;
        this.imageOrientation = i;
        this.mediaAspectRatio = i2;
        this.shouldRequestMultipleImages = z2;
        this.adChoicesPlacement = i3;
        this.videoOptions = videoOptions;
        this.useCustomMuteThisAd = z3;
    }

    public /* synthetic */ NativeAdOptions(boolean z, int i, int i2, boolean z2, int i3, VideoOptions videoOptions, boolean z3, int i4) {
        this(z, i, i2, z2, i3, videoOptions, z3);
    }

    public final int getAdChoicesPlacement() {
        return this.adChoicesPlacement;
    }

    public final int getImageOrientation() {
        return this.imageOrientation;
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
}
