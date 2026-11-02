package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.ironsource.C3510b4;
import com.ironsource.C3908x1;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001@R \u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\f\u0010\u0007\u001a\u0004\b\r\u0010\tR\u001a\u0010\u0012\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0019\u001a\u00020\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u001f\u001a\u00020\u001a8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010%\u001a\u0004\u0018\u00010 8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u001c\u0010+\u001a\u0004\u0018\u00010&8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*R\u001a\u0010.\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b,\u0010\u0011\u001a\u0004\b-\u0010\u0013R\u001c\u00104\u001a\u0004\u0018\u00010/8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b0\u00101\u001a\u0004\b2\u00103R \u00107\u001a\b\u0012\u0004\u0012\u00020/0\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b5\u0010\u0007\u001a\u0004\b6\u0010\tR\u001a\u0010:\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b8\u0010\u0011\u001a\u0004\b9\u0010\u0013R \u0010?\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b;\u0010\u0011\u0012\u0004\b=\u0010>\u001a\u0004\b<\u0010\u0013¨\u0006A"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;", "", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;", G5.q, "Ljava/util/List;", "getNativeAdTypes", "()Ljava/util/List;", "nativeAdTypes", "", "o", "getCustomFormatIds", "customFormatIds", "", "p", "Z", "isImageLoadingDisabled", "()Z", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "q", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "getMediaAspectRatio", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "mediaAspectRatio", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "getAdChoicesPlacement", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "s", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "getVideoOptions", "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "t", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "getCustomClickGestureDirection", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "customClickGestureDirection", "u", "getCustomClickGestureAllowTaps", "customClickGestureAllowTaps", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "w", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "x", "getAdSizes", "adSizes", "y", "getManualImpressionRequested", "manualImpressionRequested", "z", "getAdPersistenceEnabled", "getAdPersistenceEnabled$annotations", "()V", "adPersistenceEnabled", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class NativeAdRequest extends AdRequest implements BannerRequest, NativeRequest {

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private final List nativeAdTypes;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final List customFormatIds;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final boolean isImageLoadingDisabled;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final NativeAd.NativeMediaAspectRatio mediaAspectRatio;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private final AdChoicesPlacement adChoicesPlacement;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private final VideoOptions videoOptions;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    private final NativeAd.SwipeGestureDirection customClickGestureDirection;

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    private final boolean customClickGestureAllowTaps;
    private final boolean v;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    private final AdSize adSize;

    /* JADX INFO: renamed from: x, reason: from kotlin metadata */
    private final List adSizes;

    /* JADX INFO: renamed from: y, reason: from kotlin metadata */
    private final boolean manualImpressionRequested;

    /* JADX INFO: renamed from: z, reason: from kotlin metadata */
    private final boolean adPersistenceEnabled;

    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u00022\b\u0012\u0004\u0012\u00020\u00000\u0003B\u001d\u0012\u0006\u0010+\u001a\u00020\u0007\u0012\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0\u0006¢\u0006\u0004\b.\u0010/J\u000f\u0010\u0004\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\t\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\f\u0010\u0005J\u0017\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u001d\u0010$\u001a\u00020\u00002\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0006H\u0016¢\u0006\u0004\b$\u0010\nJ\u0017\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u001bH\u0016¢\u0006\u0004\b&\u0010'J\r\u0010)\u001a\u00020(¢\u0006\u0004\b)\u0010*¨\u00060"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest$Builder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "", "", "customFormatIds", "setCustomFormatIds", "(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "setAdPersistenceEnabled", "disableImageDownloading", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "mediaAspectRatio", "setMediaAspectRatio", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "setAdChoicesPlacement", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "setVideoOptions", "(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "customClickGestureDirection", "", "customClickGestureAllowTaps", "enableCustomClickGestureDirection", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "setAdSize", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "adSizes", "setAdSizes", "enabled", "setManualImpressionEnabled", "(Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAdRequest;", "adUnitId", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;", "nativeAdTypes", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseAdRequestBuilder<Builder> implements BannerRequest.Builder<Builder>, NativeRequest.Builder<Builder> {
        private final List m;
        private List n;
        private boolean o;
        private NativeAd.NativeMediaAspectRatio p;
        private AdChoicesPlacement q;
        private VideoOptions r;
        private NativeAd.SwipeGestureDirection s;
        private boolean t;
        private boolean u;
        private AdSize v;
        private List w;
        private boolean x;
        private boolean y;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId, List<? extends NativeAd.NativeAdType> nativeAdTypes) {
            super(adUnitId);
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            Intrinsics.checkNotNullParameter(nativeAdTypes, "nativeAdTypes");
            this.m = nativeAdTypes;
            this.n = CollectionsKt.emptyList();
            this.p = NativeAd.NativeMediaAspectRatio.UNKNOWN;
            this.q = AdChoicesPlacement.TOP_RIGHT;
            this.w = CollectionsKt.emptyList();
        }

        public final void a(boolean z) {
            this.u = z;
            self();
        }

        public final NativeAdRequest build() {
            String a = getA();
            if (a != null) {
                return new NativeAdRequest(a, getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), getK(), CollectionsKt.toList(this.m), this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, getL(), this.y, 0);
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.".toString());
        }

        public Builder disableImageDownloading() {
            this.o = true;
            return self();
        }

        public Builder enableCustomClickGestureDirection(NativeAd.SwipeGestureDirection customClickGestureDirection, boolean customClickGestureAllowTaps) {
            Intrinsics.checkNotNullParameter(customClickGestureDirection, "customClickGestureDirection");
            this.s = customClickGestureDirection;
            this.t = customClickGestureAllowTaps;
            return self();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setAdChoicesPlacement(AdChoicesPlacement adChoicesPlacement) {
            Intrinsics.checkNotNullParameter(adChoicesPlacement, "adChoicesPlacement");
            this.q = adChoicesPlacement;
            return self();
        }

        public final Builder setAdPersistenceEnabled() {
            this.y = true;
            return self();
        }

        public Builder setAdSize(AdSize adSize) {
            Intrinsics.checkNotNullParameter(adSize, "adSize");
            this.v = adSize;
            this.w = CollectionsKt.listOf(adSize);
            return self();
        }

        public Builder setAdSizes(List<AdSize> adSizes) {
            Intrinsics.checkNotNullParameter(adSizes, "adSizes");
            this.v = (AdSize) CollectionsKt.first((List) adSizes);
            this.w = CollectionsKt.toList(adSizes);
            return self();
        }

        public Builder setCustomFormatIds(List<String> customFormatIds) {
            Intrinsics.checkNotNullParameter(customFormatIds, "customFormatIds");
            this.n = CollectionsKt.toList(customFormatIds);
            return self();
        }

        public Builder setManualImpressionEnabled(boolean enabled) {
            this.x = enabled;
            return self();
        }

        public Builder setMediaAspectRatio(NativeAd.NativeMediaAspectRatio mediaAspectRatio) {
            Intrinsics.checkNotNullParameter(mediaAspectRatio, "mediaAspectRatio");
            this.p = mediaAspectRatio;
            return self();
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            Intrinsics.checkNotNullParameter(videoOptions, "videoOptions");
            this.r = videoOptions;
            return self();
        }
    }

    private NativeAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, boolean z3, AdSize adSize, List list3, boolean z4, boolean z5, boolean z6) {
        super(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, z5);
        this.nativeAdTypes = list;
        this.customFormatIds = list2;
        this.isImageLoadingDisabled = z;
        this.mediaAspectRatio = nativeMediaAspectRatio;
        this.adChoicesPlacement = adChoicesPlacement;
        this.videoOptions = videoOptions;
        this.customClickGestureDirection = swipeGestureDirection;
        this.customClickGestureAllowTaps = z2;
        this.v = z3;
        this.adSize = adSize;
        this.adSizes = list3;
        this.manualImpressionRequested = z4;
        this.adPersistenceEnabled = z6;
    }

    public /* synthetic */ NativeAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, boolean z3, AdSize adSize, List list3, boolean z4, boolean z5, boolean z6, int i) {
        this(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, list, list2, z, nativeMediaAspectRatio, adChoicesPlacement, videoOptions, swipeGestureDirection, z2, z3, adSize, list3, z4, z5, z6);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.adChoicesPlacement;
    }

    public final boolean getAdPersistenceEnabled() {
        return this.adPersistenceEnabled;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public AdSize getAdSize() {
        return this.adSize;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public List<AdSize> getAdSizes() {
        return this.adSizes;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public boolean getCustomClickGestureAllowTaps() {
        return this.customClickGestureAllowTaps;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public NativeAd.SwipeGestureDirection getCustomClickGestureDirection() {
        return this.customClickGestureDirection;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public List<String> getCustomFormatIds() {
        return this.customFormatIds;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    /* JADX INFO: renamed from: getCustomMuteThisAdRequested, reason: from getter */
    public final boolean getV() {
        return this.v;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public boolean getManualImpressionRequested() {
        return this.manualImpressionRequested;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public NativeAd.NativeMediaAspectRatio getMediaAspectRatio() {
        return this.mediaAspectRatio;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public List<NativeAd.NativeAdType> getNativeAdTypes() {
        return this.nativeAdTypes;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public VideoOptions getVideoOptions() {
        return this.videoOptions;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    /* JADX INFO: renamed from: isImageLoadingDisabled, reason: from getter */
    public boolean getIsImageLoadingDisabled() {
        return this.isImageLoadingDisabled;
    }
}
