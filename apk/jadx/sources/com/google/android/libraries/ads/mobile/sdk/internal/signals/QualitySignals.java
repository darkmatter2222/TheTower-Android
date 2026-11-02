package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import com.tapjoy.TapjoyConstants;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/QualitySignals;", "", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;", "appStats", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class QualitySignals {

    @SerializedName(TapjoyConstants.TJC_APP_PLACEMENT)
    public final AppStats appStats;

    public QualitySignals(AppStats appStats) {
        Intrinsics.checkNotNullParameter(appStats, "appStats");
        this.appStats = appStats;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof QualitySignals) && Intrinsics.areEqual(this.appStats, ((QualitySignals) obj).appStats);
    }

    public final int hashCode() {
        return this.appStats.hashCode();
    }

    public final String toString() {
        return "QualitySignals(appStats=" + this.appStats + ")";
    }
}
