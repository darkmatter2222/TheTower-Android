package com.google.android.libraries.ads.mobile.sdk.banner;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.common.VideoOptions;
import com.ironsource.C3510b4;
import com.ironsource.C3908x1;
import com.ironsource.G5;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001bR\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0014\u001a\u0004\u0018\u00010\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", G5.q, "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "", "o", "Ljava/util/List;", "getAdSizes", "()Ljava/util/List;", "adSizes", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "p", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "getVideoOptions", "()Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "", "q", "Z", "getManualImpressionRequested", "()Z", "manualImpressionRequested", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class BannerAdRequest extends AdRequest implements BannerRequest {

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private final AdSize adSize;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final List adSizes;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final VideoOptions videoOptions;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final boolean manualImpressionRequested;

    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\u0019\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0006\u0010\u0015\u001a\u00020\u0010¢\u0006\u0004\b\u001e\u0010\u001fB\u001f\b\u0016\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00100\u0016¢\u0006\u0004\b\u001e\u0010 J\u000f\u0010\u0003\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0015\u001a\u00020\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00100\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006!"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerRequest$Builder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;", "videoOptions", "setVideoOptions", "(Lcom/google/android/libraries/ads/mobile/sdk/common/VideoOptions;)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;", "", "enabled", "setManualImpressionEnabled", "(Z)Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/BannerAdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "m", "Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", "getAdSize", "()Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;", C3510b4.i.O, "", G5.q, "Ljava/util/List;", "getAdSizes", "()Ljava/util/List;", "adSizes", "", "adUnitId", "<init>", "(Ljava/lang/String;Lcom/google/android/libraries/ads/mobile/sdk/banner/AdSize;)V", "(Ljava/lang/String;Ljava/util/List;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseAdRequestBuilder<Builder> implements BannerRequest.Builder<Builder> {

        /* JADX INFO: renamed from: m, reason: from kotlin metadata */
        private final AdSize adSize;

        /* JADX INFO: renamed from: n, reason: from kotlin metadata */
        private final List adSizes;
        private VideoOptions o;
        private boolean p;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId, AdSize adSize) {
            this(adUnitId, adSize, CollectionsKt.listOf(adSize));
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            Intrinsics.checkNotNullParameter(adSize, "adSize");
        }

        private Builder(String str, AdSize adSize, List list) {
            super(str);
            this.adSize = adSize;
            this.adSizes = list;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId, List<AdSize> adSizes) {
            this(adUnitId, (AdSize) CollectionsKt.first((List) adSizes), CollectionsKt.toList(adSizes));
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            Intrinsics.checkNotNullParameter(adSizes, "adSizes");
        }

        public final BannerAdRequest build() {
            String strB = getA();
            if (strB != null) {
                return new BannerAdRequest(strB, getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), getK(), this.adSize, this.adSizes, this.o, this.p, getL(), 0);
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.".toString());
        }

        public final AdSize getAdSize() {
            return this.adSize;
        }

        public final List<AdSize> getAdSizes() {
            return this.adSizes;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setManualImpressionEnabled(boolean enabled) {
            this.p = enabled;
            return self();
        }

        public Builder setVideoOptions(VideoOptions videoOptions) {
            Intrinsics.checkNotNullParameter(videoOptions, "videoOptions");
            this.o = videoOptions;
            return self();
        }
    }

    private BannerAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, AdSize adSize, List list, VideoOptions videoOptions, boolean z, boolean z2) {
        super(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, z2);
        this.adSize = adSize;
        this.adSizes = list;
        this.videoOptions = videoOptions;
        this.manualImpressionRequested = z;
    }

    public /* synthetic */ BannerAdRequest(String str, Set set, String str2, Map map, Bundle bundle, Set set2, Set set3, Map map2, String str3, String str4, long j, AdSize adSize, List list, VideoOptions videoOptions, boolean z, boolean z2, int i) {
        this(str, set, str2, map, bundle, set2, set3, map2, str3, str4, j, adSize, list, videoOptions, z, z2);
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.banner.BannerRequest
    /* JADX INFO: renamed from: getAdSize, reason: from getter */
    public AdSize getCom.ironsource.b4.i.O java.lang.String() {
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
