package com.google.android.libraries.ads.mobile.sdk.iconad;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.ironsource.C3908x1;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001aR\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "o", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "getIconAdPlacement", "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "iconAdPlacement", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "p", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "getAdChoicesPlacement", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "", "q", "Ljava/lang/String;", "getCorrelator", "()Ljava/lang/String;", "correlator", "", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "Z", "isImageLoadingDisabled", "()Z", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class IconSignalRequest extends SignalRequest implements IconRequest {

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final IconAdPlacement iconAdPlacement;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final AdChoicesPlacement adChoicesPlacement;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final String correlator;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private final boolean isImageLoadingDisabled;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0015\u001a\u00020\u000e¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0003\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "setAdChoicesPlacement", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;", "disableImageDownloading", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "placement", "setIconAdPlacement", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;", "", "correlator", "setCorrelator", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconSignalRequest;", "signalType", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseSignalRequestBuilder<Builder> implements IconRequest.Builder<Builder> {
        private IconAdPlacement n;
        private String o;
        private AdChoicesPlacement p;
        private boolean q;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String signalType) {
            this(signalType, 0);
            Intrinsics.checkNotNullParameter(signalType, "signalType");
        }

        private Builder(String str, int i) {
            super(str, null);
            this.n = IconAdPlacement.UNSPECIFIED;
            this.o = "";
            this.p = AdChoicesPlacement.TOP_RIGHT;
        }

        public final IconSignalRequest build() {
            return new IconSignalRequest(getM(), getA(), getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), this.n, this.p, this.o, this.q, 0);
        }

        public Builder disableImageDownloading() {
            this.q = true;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setAdChoicesPlacement(AdChoicesPlacement adChoicesPlacement) {
            Intrinsics.checkNotNullParameter(adChoicesPlacement, "adChoicesPlacement");
            this.p = adChoicesPlacement;
            return this;
        }

        public Builder setCorrelator(String correlator) {
            Intrinsics.checkNotNullParameter(correlator, "correlator");
            this.o = correlator;
            return this;
        }

        public Builder setIconAdPlacement(IconAdPlacement placement) {
            Intrinsics.checkNotNullParameter(placement, "placement");
            this.n = placement;
            return this;
        }
    }

    private IconSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, IconAdPlacement iconAdPlacement, AdChoicesPlacement adChoicesPlacement, String str6, boolean z) {
        super(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
        this.iconAdPlacement = iconAdPlacement;
        this.adChoicesPlacement = adChoicesPlacement;
        this.correlator = str6;
        this.isImageLoadingDisabled = z;
    }

    public /* synthetic */ IconSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, IconAdPlacement iconAdPlacement, AdChoicesPlacement adChoicesPlacement, String str6, boolean z, int i) {
        this(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5, iconAdPlacement, adChoicesPlacement, str6, z);
    }

    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.adChoicesPlacement;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest
    public String getCorrelator() {
        return this.correlator;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest
    public IconAdPlacement getIconAdPlacement() {
        return this.iconAdPlacement;
    }

    /* JADX INFO: renamed from: isImageLoadingDisabled, reason: from getter */
    public boolean getIsImageLoadingDisabled() {
        return this.isImageLoadingDisabled;
    }
}
