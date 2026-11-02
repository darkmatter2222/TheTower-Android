package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3510b4;
import p005kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/BatterySignals;", "", "", C3510b4.j.k0, "Z", "", C3510b4.j.Y, "D", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class BatterySignals {

    @SerializedName("battery_level")
    public double batteryLevel;

    @SerializedName("is_charging")
    public boolean isCharging;

    public BatterySignals() {
        this(0);
    }

    public BatterySignals(double d, boolean z) {
        this.isCharging = z;
        this.batteryLevel = d;
    }

    public /* synthetic */ BatterySignals(int i) {
        this(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, false);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BatterySignals)) {
            return false;
        }
        BatterySignals batterySignals = (BatterySignals) obj;
        return this.isCharging == batterySignals.isCharging && Double.compare(this.batteryLevel, batterySignals.batteryLevel) == 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    public final int hashCode() {
        boolean z = this.isCharging;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return Double.hashCode(this.batteryLevel) + (r0 * 31);
    }

    public final String toString() {
        return "BatterySignals(isCharging=" + this.isCharging + ", batteryLevel=" + this.batteryLevel + ")";
    }
}
