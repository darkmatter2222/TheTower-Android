package com.google.android.libraries.ads.mobile.sdk.rewardedinterstitial;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.common.BaseSignalRequestBuilder;
import com.google.android.libraries.ads.mobile.sdk.signal.SignalRequest;
import com.ironsource.C3908x1;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialSignalRequest;", "Lcom/google/android/libraries/ads/mobile/sdk/signal/SignalRequest;", "Builder", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class RewardedInterstitialSignalRequest extends SignalRequest {

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u0002\u001a\u00020\u0000H\u0014¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseSignalRequestBuilder;", C3908x1.o, "()Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialSignalRequest$Builder;", "Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialSignalRequest;", "build", "()Lcom/google/android/libraries/ads/mobile/sdk/rewardedinterstitial/RewardedInterstitialSignalRequest;", "", "signalType", "<init>", "(Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
    public static final class Builder extends BaseSignalRequestBuilder<Builder> {
        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public Builder(String signalType) {
            this(signalType, 0);
            Intrinsics.checkNotNullParameter(signalType, "signalType");
        }

        private Builder(String str, int i) {
            super(str, null);
        }

        public final RewardedInterstitialSignalRequest build() {
            return new RewardedInterstitialSignalRequest(getM(), getA(), getB(), getC(), getD(), getE(), getF(), getG(), getH(), getI(), getJ(), 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseRequestBuilder
        public Builder self() {
            return this;
        }
    }

    private RewardedInterstitialSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5) {
        super(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
    }

    public /* synthetic */ RewardedInterstitialSignalRequest(String str, String str2, LinkedHashSet linkedHashSet, String str3, LinkedHashMap linkedHashMap, Bundle bundle, HashSet hashSet, HashSet hashSet2, LinkedHashMap linkedHashMap2, String str4, String str5, int i) {
        this(str, str2, linkedHashSet, str3, linkedHashMap, bundle, hashSet, hashSet2, linkedHashMap2, str4, str5);
    }
}
