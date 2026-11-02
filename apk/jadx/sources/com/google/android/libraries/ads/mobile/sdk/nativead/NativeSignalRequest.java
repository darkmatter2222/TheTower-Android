package com.google.android.libraries.ads.mobile.sdk.nativead;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.banner.AdSize;
import com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.ironsource.C3510b4;
import com.ironsource.C3908x1;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u00012\u00020\u0002:\u0001=R \u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR \u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0006\u001a\u0004\b\f\u0010\bR\u001a\u0010\u0011\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\u00138\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u001a\u0010\u001e\u001a\u00020\u00198\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010$\u001a\u0004\u0018\u00010\u001f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\u001c\u0010*\u001a\u0004\u0018\u00010%8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R\u001a\u0010-\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b+\u0010\u0010\u001a\u0004\b,\u0010\u0012R\u001a\u00100\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b.\u0010\u0010\u001a\u0004\b/\u0010\u0012R\u001c\u00106\u001a\u0004\u0018\u0001018\u0016X\u0096\u0004¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R \u00109\u001a\b\u0012\u0004\u0012\u0002010\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b7\u0010\u0006\u001a\u0004\b8\u0010\bR\u001a\u0010<\u001a\u00020\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b:\u0010\u0010\u001a\u0004\b;\u0010\u0012¨\u0006>"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest;", "", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;", "o", "Ljava/util/List;", "getNativeAdTypes", "()Ljava/util/List;", "nativeAdTypes", "", "p", "getCustomFormatIds", "customFormatIds", "", "q", "Z", "isImageLoadingDisabled", "()Z", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "getMediaAspectRatio", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "mediaAspectRatio", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "s", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "getAdChoicesPlacement", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "t", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "getVideoOptions", "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "u", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "getCustomClickGestureDirection", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "customClickGestureDirection", "v", "getCustomClickGestureAllowTaps", "customClickGestureAllowTaps", "w", "getCustomMuteThisAdRequested", "customMuteThisAdRequested", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "x", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "y", "getAdSizes", "adSizes", "z", "getManualImpressionRequested", "manualImpressionRequested", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class NativeSignalRequest extends SignalRequest implements NativeRequest {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final List nativeAdTypes;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final List customFormatIds;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final boolean isImageLoadingDisabled;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private final NativeAd.NativeMediaAspectRatio mediaAspectRatio;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private final AdChoicesPlacement adChoicesPlacement;

    /* JADX INFO: renamed from: t, reason: from kotlin metadata */
    private final VideoOptions videoOptions;

    /* JADX INFO: renamed from: u, reason: from kotlin metadata */
    private final NativeAd.SwipeGestureDirection customClickGestureDirection;

    /* JADX INFO: renamed from: v, reason: from kotlin metadata */
    private final boolean customClickGestureAllowTaps;

    /* JADX INFO: renamed from: w, reason: from kotlin metadata */
    private final boolean customMuteThisAdRequested;

    /* JADX INFO: renamed from: x, reason: from kotlin metadata */
    private final AdSize adSize;

    /* JADX INFO: renamed from: y, reason: from kotlin metadata */
    private final List adSizes;

    /* JADX INFO: renamed from: z, reason: from kotlin metadata */
    private final boolean manualImpressionRequested;

    @Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u00022\b\u0012\u0004\u0012\u00020\u00000\u0003B\u0011\b\u0016\u0012\u0006\u0010-\u001a\u00020\u000b¢\u0006\u0004\b.\u0010/J\u000f\u0010\u0004\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u00002\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\u00002\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006H\u0016¢\u0006\u0004\b\r\u0010\nJ\u000f\u0010\u000e\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\u000e\u0010\u0005J\u0017\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001f\u0010\"\u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010&\u001a\u00020\u00002\u0006\u0010%\u001a\u00020$H\u0016¢\u0006\u0004\b&\u0010'J\u001d\u0010)\u001a\u00020\u00002\f\u0010(\u001a\b\u0012\u0004\u0012\u00020$0\u0006H\u0016¢\u0006\u0004\b)\u0010\nJ\r\u0010+\u001a\u00020*¢\u0006\u0004\b+\u0010,¨\u00060"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeRequest$Builder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeAdType;", "nativeAdTypes", "setNativeAdTypes", "(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "", "customFormatIds", "setCustomFormatIds", "disableImageDownloading", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;", "mediaAspectRatio", "setMediaAspectRatio", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$NativeMediaAspectRatio;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "setAdChoicesPlacement", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "setVideoOptions", "(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "", "enabled", "setManualImpressionEnabled", "(Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;", "customClickGestureDirection", "customClickGestureAllowTaps", "enableCustomClickGestureDirection", "(Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeAd$SwipeGestureDirection;Z)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "setAdSize", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest$Builder;", "adSizes", "setAdSizes", "Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/nativead/NativeSignalRequest;", "signalType", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseSignalRequestBuilder<Builder> implements BannerRequest.Builder<Builder>, NativeRequest.Builder<Builder> {
        private List n;
        private List o;
        private boolean p;
        private NativeAd.NativeMediaAspectRatio q;
        private AdChoicesPlacement r;
        private VideoOptions s;
        private NativeAd.SwipeGestureDirection t;
        private boolean u;
        private AdSize v;
        private List w;
        private boolean x;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String signalType) {
            this(signalType, 0);
            Intrinsics.checkNotNullParameter(signalType, "signalType");
        }

        private Builder(String str, int i) {
            super(str, null);
            this.n = CollectionsKt.emptyList();
            this.o = CollectionsKt.emptyList();
            this.q = NativeAd.NativeMediaAspectRatio.UNKNOWN;
            this.r = AdChoicesPlacement.TOP_RIGHT;
            this.w = CollectionsKt.emptyList();
        }

        public final NativeSignalRequest build() {
            return new NativeSignalRequest(getM(), getA(), getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, this.v, this.w, this.x, 0);
        }

        public Builder disableImageDownloading() {
            this.p = true;
            return self();
        }

        public Builder enableCustomClickGestureDirection(NativeAd.SwipeGestureDirection customClickGestureDirection, boolean customClickGestureAllowTaps) {
            Intrinsics.checkNotNullParameter(customClickGestureDirection, "customClickGestureDirection");
            this.t = customClickGestureDirection;
            this.u = customClickGestureAllowTaps;
            return self();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setAdChoicesPlacement(AdChoicesPlacement adChoicesPlacement) {
            Intrinsics.checkNotNullParameter(adChoicesPlacement, "adChoicesPlacement");
            this.r = adChoicesPlacement;
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
            this.o = CollectionsKt.toList(customFormatIds);
            return self();
        }

        public Builder setManualImpressionEnabled(boolean enabled) {
            this.x = enabled;
            return self();
        }

        public Builder setMediaAspectRatio(NativeAd.NativeMediaAspectRatio mediaAspectRatio) {
            Intrinsics.checkNotNullParameter(mediaAspectRatio, "mediaAspectRatio");
            this.q = mediaAspectRatio;
            return self();
        }

        public final Builder setNativeAdTypes(List<? extends NativeAd.NativeAdType> nativeAdTypes) {
            Intrinsics.checkNotNullParameter(nativeAdTypes, "nativeAdTypes");
            this.n = CollectionsKt.toList(nativeAdTypes);
            return self();
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            Intrinsics.checkNotNullParameter(videoOptions, "videoOptions");
            this.s = videoOptions;
            return self();
        }
    }

    private NativeSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, AdSize adSize, List list3, boolean z3) {
        super(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
        this.nativeAdTypes = list;
        this.customFormatIds = list2;
        this.isImageLoadingDisabled = z;
        this.mediaAspectRatio = nativeMediaAspectRatio;
        this.adChoicesPlacement = adChoicesPlacement;
        this.videoOptions = videoOptions;
        this.customClickGestureDirection = swipeGestureDirection;
        this.customClickGestureAllowTaps = z2;
        this.customMuteThisAdRequested = false;
        this.adSize = adSize;
        this.adSizes = list3;
        this.manualImpressionRequested = z3;
    }

    public /* synthetic */ NativeSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, List list, List list2, boolean z, NativeAd.NativeMediaAspectRatio nativeMediaAspectRatio, AdChoicesPlacement adChoicesPlacement, VideoOptions videoOptions, NativeAd.SwipeGestureDirection swipeGestureDirection, boolean z2, AdSize adSize, List list3, boolean z3, int i) {
        this(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5, list, list2, z, nativeMediaAspectRatio, adChoicesPlacement, videoOptions, swipeGestureDirection, z2, adSize, list3, z3);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.nativead.NativeRequest
    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.adChoicesPlacement;
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
    public boolean getCustomMuteThisAdRequested() {
        return this.customMuteThisAdRequested;
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
