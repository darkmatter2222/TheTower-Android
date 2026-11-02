package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdUnitQualitySignals;", "", "", "priorClickCount", "Ljava/lang/Integer;", "", "loadDuration", "Ljava/lang/Long;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class AdUnitQualitySignals {

    @SerializedName("dload")
    public final Long loadDuration;

    @SerializedName("pcc")
    public final Integer priorClickCount;

    public AdUnitQualitySignals(Integer num, Long l) {
        this.priorClickCount = num;
        this.loadDuration = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdUnitQualitySignals)) {
            return false;
        }
        AdUnitQualitySignals adUnitQualitySignals = (AdUnitQualitySignals) obj;
        return Intrinsics.areEqual(this.priorClickCount, adUnitQualitySignals.priorClickCount) && Intrinsics.areEqual(this.loadDuration, adUnitQualitySignals.loadDuration);
    }

    public final int hashCode() {
        Integer num = this.priorClickCount;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Long l = this.loadDuration;
        return iHashCode + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "AdUnitQualitySignals(priorClickCount=" + this.priorClickCount + ", loadDuration=" + this.loadDuration + ")";
    }
}
