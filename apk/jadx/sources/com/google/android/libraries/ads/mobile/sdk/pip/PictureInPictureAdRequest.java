package com.google.android.libraries.ads.mobile.sdk.pip;

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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdRequest;", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class PictureInPictureAdRequest extends AdRequest {

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\b\u0010\u0007\u001a\u00020\u0000H\u0014¨\u0006\b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseAdRequestBuilder;", "adUnitId", "", "(Ljava/lang/String;)V", "build", "Lcom/google/android/libraries/ads/mobile/sdk/pip/PictureInPictureAdRequest;", C3908x1.o, "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends BaseAdRequestBuilder<Builder> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Builder(String adUnitId) {
            super(adUnitId);
            Intrinsics.checkNotNullParameter(adUnitId, "adUnitId");
        }

        public final PictureInPictureAdRequest build() {
            String a = getA();
            if (a != null) {
                return new PictureInPictureAdRequest(a, getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), getK(), getL(), 0);
            }
            throw new IllegalArgumentException("Ad unit ID cannot be null.".toString());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }
    }

    private PictureInPictureAdRequest(String str, LinkedHashSet linkedHashSet, String str2, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str3, String str4, long j, boolean z) {
        super(str, linkedHashSet, str2, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str3, str4, j, z);
    }

    public /* synthetic */ PictureInPictureAdRequest(String str, LinkedHashSet linkedHashSet, String str2, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str3, String str4, long j, boolean z, int i) {
        this(str, linkedHashSet, str2, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str3, str4, j, z);
    }
}
