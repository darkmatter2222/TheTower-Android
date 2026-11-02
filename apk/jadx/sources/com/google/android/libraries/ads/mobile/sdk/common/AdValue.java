package com.google.android.libraries.ads.mobile.sdk.common;

import com.appsflyer.AppsFlyerProperties;
import com.ironsource.C3635i2;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ.\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0010\u0010\nJ\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004R\u0017\u0010\f\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007R\u0017\u0010\r\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010\n¨\u0006#"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;", "", "Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;", "component1", "()Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;", "", "component2", "()J", "", "component3", "()Ljava/lang/String;", "precisionType", "valueMicros", AppsFlyerProperties.CURRENCY_CODE, "copy", "(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdValue;", "toString", "", "hashCode", "()I", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;", "getPrecisionType", "b", "J", "getValueMicros", "c", "Ljava/lang/String;", "getCurrencyCode", "<init>", "(Lcom/google/android/libraries/ads/mobile/sdk/common/PrecisionType;JLjava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class AdValue {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final PrecisionType precisionType;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final long valueMicros;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final String currencyCode;

    public AdValue(PrecisionType precisionType, long j, String currencyCode) {
        Intrinsics.checkNotNullParameter(precisionType, "precisionType");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        this.precisionType = precisionType;
        this.valueMicros = j;
        this.currencyCode = currencyCode;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final PrecisionType getPrecisionType() {
        return this.precisionType;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getValueMicros() {
        return this.valueMicros;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getCurrencyCode() {
        return this.currencyCode;
    }

    public final AdValue copy(PrecisionType precisionType, long valueMicros, String currencyCode) {
        Intrinsics.checkNotNullParameter(precisionType, "precisionType");
        Intrinsics.checkNotNullParameter(currencyCode, "currencyCode");
        return new AdValue(precisionType, valueMicros, currencyCode);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdValue)) {
            return false;
        }
        AdValue adValue = (AdValue) other;
        return this.precisionType == adValue.precisionType && this.valueMicros == adValue.valueMicros && Intrinsics.areEqual(this.currencyCode, adValue.currencyCode);
    }

    public final String getCurrencyCode() {
        return this.currencyCode;
    }

    public final PrecisionType getPrecisionType() {
        return this.precisionType;
    }

    public final long getValueMicros() {
        return this.valueMicros;
    }

    public int hashCode() {
        return this.currencyCode.hashCode() + ((Long.hashCode(this.valueMicros) + (this.precisionType.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "AdValue(precisionType=" + this.precisionType + ", valueMicros=" + this.valueMicros + ", currencyCode=" + this.currencyCode + ")";
    }
}
