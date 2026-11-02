package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import com.ironsource.Pf;
import com.tapjoy.TapjoyConstants;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AdapterVersionData;", "", "", Pf.b, "Ljava/lang/String;", "sdkVersion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class AdapterVersionData {

    @SerializedName(TapjoyConstants.TJC_ADAPTER_VERSION)
    public final String adapterVersion;

    @SerializedName("sdk_version")
    public final String sdkVersion;

    public AdapterVersionData(String str, String str2) {
        this.adapterVersion = str;
        this.sdkVersion = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdapterVersionData)) {
            return false;
        }
        AdapterVersionData adapterVersionData = (AdapterVersionData) obj;
        return Intrinsics.areEqual(this.adapterVersion, adapterVersionData.adapterVersion) && Intrinsics.areEqual(this.sdkVersion, adapterVersionData.sdkVersion);
    }

    public final int hashCode() {
        String str = this.adapterVersion;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.sdkVersion;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return "AdapterVersionData(adapterVersion=" + this.adapterVersion + ", sdkVersion=" + this.sdkVersion + ")";
    }
}
