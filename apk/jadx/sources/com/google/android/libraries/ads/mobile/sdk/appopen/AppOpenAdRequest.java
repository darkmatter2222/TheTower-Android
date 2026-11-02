package com.google.android.libraries.ads.mobile.sdk.appopen;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.AdRequest;
import com.google.android.libraries.ads.mobile.sdk.common.BaseAdRequestBuilder;
import com.ironsource.C3908x1;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\nR \u0010\t\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u0012\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "", "o", "Z", "getAdPersistenceEnabled", "()Z", "getAdPersistenceEnabled$annotations", "()V", "adPersistenceEnabled", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AppOpenAdRequest extends AdRequest {
    private final boolean n;

    /* JADX INFO: renamed from: o, reason: from kotlin metadata */
    private final boolean adPersistenceEnabled;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u0002\u001a\u00020\u0000H\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0004\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0004\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0000H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\r\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;", "setCrossProcessEnabled", "()Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest$Builder;", C3908x1.o, "setAdPersistenceEnabled", "Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/appopen/AppOpenAdRequest;", "", "adUnitId", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseAdRequestBuilder<Builder> {
        private boolean m;
        private boolean n;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId) {
            super(adUnitId);
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        }

        private final Builder setCrossProcessEnabled() {
            this.m = true;
            return this;
        }

        public final AppOpenAdRequest build() {
            String a = getA();
            if (a != null) {
                return new AppOpenAdRequest(a, getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), getK(), getL(), this.m, this.n, 0);
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.".toString());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }

        public final Builder setAdPersistenceEnabled() {
            this.n = true;
            return self();
        }
    }

    private AppOpenAdRequest(String str, LinkedHashSet linkedHashSet, String str2, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str3, String str4, long j, boolean z, boolean z2, boolean z3) {
        super(str, linkedHashSet, str2, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str3, str4, j, z);
        this.n = z2;
        this.adPersistenceEnabled = z3;
    }

    public /* synthetic */ AppOpenAdRequest(String str, LinkedHashSet linkedHashSet, String str2, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str3, String str4, long j, boolean z, boolean z2, boolean z3, int i) {
        this(str, linkedHashSet, str2, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str3, str4, j, z, z2, z3);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final /* synthetic */ boolean getN() {
        return this.n;
    }

    public final boolean getAdPersistenceEnabled() {
        return this.adPersistenceEnabled;
    }
}
