package com.google.android.libraries.ads.mobile.sdk.banner;

import android.os.Bundle;
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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001bR\u001c\u0010\b\u001a\u0004\u0018\u00010\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "o", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "", "p", "Ljava/util/List;", "getAdSizes", "()Ljava/util/List;", "adSizes", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "q", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "getVideoOptions", "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "Z", "getManualImpressionRequested", "()Z", "manualImpressionRequested", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class BannerSignalRequest extends SignalRequest implements BannerRequest {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final AdSize adSize;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final List adSizes;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final VideoOptions videoOptions;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private final boolean manualImpressionRequested;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\u000b\u001a\u00020\u00002\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "setAdSize", "(Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;", "", "adSizes", "setAdSizes", "(Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "setVideoOptions", "(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;", "", "enabled", "setManualImpressionEnabled", "(Z)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerSignalRequest;", "", "signalType", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseSignalRequestBuilder<Builder> implements BannerRequest.Builder<Builder> {
        private AdSize n;
        private List o;
        private VideoOptions p;
        private boolean q;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String signalType) {
            this(signalType, 0);
            Intrinsics.checkNotNullParameter(signalType, "signalType");
        }

        private Builder(String str, int i) {
            super(str, null);
            this.o = CollectionsKt.emptyList();
        }

        public final BannerSignalRequest build() {
            return new BannerSignalRequest(getM(), getA(), getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), this.n, this.o, this.p, this.q, 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public final Builder setAdSize(AdSize adSize) {
            Intrinsics.checkNotNullParameter(adSize, "adSize");
            this.n = adSize;
            this.o = CollectionsKt.listOf(adSize);
            return self();
        }

        public final Builder setAdSizes(List<AdSize> adSizes) {
            Intrinsics.checkNotNullParameter(adSizes, "adSizes");
            this.n = (AdSize) CollectionsKt.first((List) adSizes);
            this.o = CollectionsKt.toList(adSizes);
            return self();
        }

        public Builder setManualImpressionEnabled(boolean enabled) {
            this.q = enabled;
            return self();
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            Intrinsics.checkNotNullParameter(videoOptions, "videoOptions");
            this.p = videoOptions;
            return self();
        }
    }

    private BannerSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, AdSize adSize, List list, VideoOptions videoOptions, boolean z) {
        super(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
        this.adSize = adSize;
        this.adSizes = list;
        this.videoOptions = videoOptions;
        this.manualImpressionRequested = z;
    }

    public /* synthetic */ BannerSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, AdSize adSize, List list, VideoOptions videoOptions, boolean z, int i) {
        this(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5, adSize, list, videoOptions, z);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public AdSize getAdSize() {
        return this.adSize;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public List<AdSize> getAdSizes() {
        return this.adSizes;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public boolean getManualImpressionRequested() {
        return this.manualImpressionRequested;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    public VideoOptions getVideoOptions() {
        return this.videoOptions;
    }
}
