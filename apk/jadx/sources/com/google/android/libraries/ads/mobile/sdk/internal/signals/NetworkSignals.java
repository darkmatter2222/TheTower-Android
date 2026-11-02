package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/NetworkSignals;", "", "", "activeNetworkState", "Ljava/lang/Integer;", "", "isActiveNetworkMetered", "Ljava/lang/Boolean;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class NetworkSignals {

    @SerializedName("active_network_state")
    public Integer activeNetworkState;

    @SerializedName("active_network_metered")
    public Boolean isActiveNetworkMetered;

    public NetworkSignals() {
        this(0);
    }

    public /* synthetic */ NetworkSignals(int i) {
        this(null, null);
    }

    public NetworkSignals(Integer num, Boolean bool) {
        this.activeNetworkState = num;
        this.isActiveNetworkMetered = bool;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NetworkSignals)) {
            return false;
        }
        NetworkSignals networkSignals = (NetworkSignals) obj;
        return Intrinsics.areEqual(this.activeNetworkState, networkSignals.activeNetworkState) && Intrinsics.areEqual(this.isActiveNetworkMetered, networkSignals.isActiveNetworkMetered);
    }

    public final int hashCode() {
        Integer num = this.activeNetworkState;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        Boolean bool = this.isActiveNetworkMetered;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "NetworkSignals(activeNetworkState=" + this.activeNetworkState + ", isActiveNetworkMetered=" + this.isActiveNetworkMetered + ")";
    }
}
