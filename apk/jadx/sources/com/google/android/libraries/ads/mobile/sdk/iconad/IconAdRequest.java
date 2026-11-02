package com.google.android.libraries.ads.mobile.sdk.iconad;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdChoicesPlacement;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import com.ironsource.C3908x1;
import com.ironsource.G5;
import com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import p005kotlin.Metadata;
import p005kotlin.collections.CollectionsKt;
import p005kotlin.collections.SetsKt;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\"\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u0002:\u0001&R\u001a\u0010\b\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\u000e\u001a\u00020\t8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0018\u001a\u00020\u00158\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R \u0010\u001e\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u001a\u0010\u0017\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001b\u0010\u0019R&\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000f0\u001f8\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b \u0010!\u0012\u0004\b$\u0010\u001d\u001a\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", G5.q, "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "getIconAdPlacement", "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "iconAdPlacement", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "o", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "getAdChoicesPlacement", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "", "p", "Ljava/lang/String;", "getCorrelator", "()Ljava/lang/String;", "correlator", "", "q", "Z", "isImageLoadingDisabled", "()Z", AndroidDynamicDeviceInfoDataSource.DIRECTORY_MODE_READ, "getAdPersistenceEnabled", "getAdPersistenceEnabled$annotations", "()V", "adPersistenceEnabled", "", "s", "Ljava/util/Set;", "getExcludedAppIds", "()Ljava/util/Set;", "getExcludedAppIds$annotations", "excludedAppIds", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class IconAdRequest extends AdRequest implements IconRequest {

    /* JADX INFO: renamed from: n, reason: from kotlin metadata */
    private final IconAdPlacement iconAdPlacement;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final AdChoicesPlacement adChoicesPlacement;

    /* JADX INFO: renamed from: p, reason: from kotlin metadata */
    private final String correlator;

    /* JADX INFO: renamed from: q, reason: from kotlin metadata */
    private final boolean isImageLoadingDisabled;

    /* JADX INFO: renamed from: r, reason: from kotlin metadata */
    private final boolean adPersistenceEnabled;

    /* JADX INFO: renamed from: s, reason: from kotlin metadata */
    private final Set excludedAppIds;

    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 \u001d2\b\u0012\u0004\u0012\u00020\u00000\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001\u001dB\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u000e¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u0003\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0012\u0010\u0004J\u001d\u0010\u0015\u001a\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0013H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0019¨\u0006\u001e"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconRequest$Builder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;", "adChoicesPlacement", "setAdChoicesPlacement", "(Lcom/google/android/libraries/ads/mobile/sdk/common/AdChoicesPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;", "disableImageDownloading", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;", "placement", "setIconAdPlacement", "(Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdPlacement;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;", "", "correlator", "setCorrelator", "(Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;", "setAdPersistenceEnabled", "", "excludedAppIds", "setExcludedAppIds", "(Ljava/util/Set;)Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/iconad/IconAdRequest;", "adUnitId", "<init>", "(Ljava/lang/String;)V", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseAdRequestBuilder<Builder> implements IconRequest.Builder<Builder> {
        public static final int MAX_APP_IDS_COUNT = 100;
        public static final int MAX_APP_ID_LENGTH = 1000;
        private IconAdPlacement m;
        private String n;
        private AdChoicesPlacement o;
        private boolean p;
        private boolean q;
        private Set r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId) {
            super(adUnitId);
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
            this.m = IconAdPlacement.UNSPECIFIED;
            this.n = "";
            this.o = AdChoicesPlacement.TOP_RIGHT;
            this.r = SetsKt.emptySet();
        }

        public final IconAdRequest build() {
            String a = getA();
            if (a != null) {
                return new IconAdRequest(a, getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), getK(), this.m, this.o, this.n, this.p, getL(), this.q, this.r, 0);
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.".toString());
        }

        public Builder disableImageDownloading() {
            this.p = true;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public Builder setAdChoicesPlacement(AdChoicesPlacement adChoicesPlacement) {
            Intrinsics.checkNotNullParameter(adChoicesPlacement, "adChoicesPlacement");
            this.o = adChoicesPlacement;
            return this;
        }

        public final Builder setAdPersistenceEnabled() {
            this.q = true;
            return this;
        }

        public Builder setCorrelator(String correlator) {
            Intrinsics.checkNotNullParameter(correlator, "correlator");
            this.n = correlator;
            return this;
        }

        public final Builder setExcludedAppIds(Set<String> excludedAppIds) {
            Intrinsics.checkNotNullParameter(excludedAppIds, "excludedAppIds");
            ArrayList arrayList = new ArrayList();
            for (Object obj : excludedAppIds) {
                if (((String) obj).length() <= 1000) {
                    arrayList.add(obj);
                }
            }
            this.r = CollectionsKt.toSet(CollectionsKt.take(arrayList, 100));
            return this;
        }

        public Builder setIconAdPlacement(IconAdPlacement placement) {
            Intrinsics.checkNotNullParameter(placement, "placement");
            this.m = placement;
            return this;
        }
    }

    private IconAdRequest(String str, LinkedHashSet linkedHashSet, String str2, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str3, String str4, long j, IconAdPlacement iconAdPlacement, AdChoicesPlacement adChoicesPlacement, String str5, boolean z, boolean z2, boolean z3, Set set) {
        super(str, linkedHashSet, str2, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str3, str4, j, z2);
        this.iconAdPlacement = iconAdPlacement;
        this.adChoicesPlacement = adChoicesPlacement;
        this.correlator = str5;
        this.isImageLoadingDisabled = z;
        this.adPersistenceEnabled = z3;
        this.excludedAppIds = set;
    }

    public /* synthetic */ IconAdRequest(String str, LinkedHashSet linkedHashSet, String str2, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str3, String str4, long j, IconAdPlacement iconAdPlacement, AdChoicesPlacement adChoicesPlacement, String str5, boolean z, boolean z2, boolean z3, Set set, int i) {
        this(str, linkedHashSet, str2, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str3, str4, j, iconAdPlacement, adChoicesPlacement, str5, z, z2, z3, set);
    }

    public AdChoicesPlacement getAdChoicesPlacement() {
        return this.adChoicesPlacement;
    }

    public final boolean getAdPersistenceEnabled() {
        return this.adPersistenceEnabled;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.iconad.IconRequest
    public String getCorrelator() {
        return this.correlator;
    }

    public final Set<String> getExcludedAppIds() {
        return this.excludedAppIds;
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
