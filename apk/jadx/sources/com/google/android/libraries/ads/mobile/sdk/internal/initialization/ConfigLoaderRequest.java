package com.google.android.libraries.ads.mobile.sdk.internal.initialization;

import com.google.gson.annotations.SerializedName;
import com.tapjoy.TapjoyConstants;
import kotlin.ob;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004¨\u0006\u000f"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/initialization/ConfigLoaderRequest;", "", "", "appId", "Ljava/lang/String;", "adUnitId", "", "isCalledFromInit", "Z", "packageName", "", "versionCode", "Ljava/lang/Integer;", "afmaVersion", "experimentIds", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class ConfigLoaderRequest {

    @SerializedName("ad_unit_id")
    public final String adUnitId;

    @SerializedName("js")
    public final String afmaVersion;

    @SerializedName(TapjoyConstants.TJC_APP_ID)
    public final String appId;

    @SerializedName("experiment_ids")
    public final String experimentIds;

    @SerializedName("is_init")
    public final boolean isCalledFromInit;

    @SerializedName("pn")
    public final String packageName;

    @SerializedName("version")
    public final Integer versionCode;

    public ConfigLoaderRequest(String appId, String str, boolean z, String packageName, Integer num, String afmaVersion, String experimentIds) {
        Intrinsics.checkNotNullParameter(appId, "appId");
        Intrinsics.checkNotNullParameter(packageName, "packageName");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(experimentIds, "experimentIds");
        this.appId = appId;
        this.adUnitId = str;
        this.isCalledFromInit = z;
        this.packageName = packageName;
        this.versionCode = num;
        this.afmaVersion = afmaVersion;
        this.experimentIds = experimentIds;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigLoaderRequest)) {
            return false;
        }
        ConfigLoaderRequest configLoaderRequest = (ConfigLoaderRequest) obj;
        return Intrinsics.areEqual(this.appId, configLoaderRequest.appId) && Intrinsics.areEqual(this.adUnitId, configLoaderRequest.adUnitId) && this.isCalledFromInit == configLoaderRequest.isCalledFromInit && Intrinsics.areEqual(this.packageName, configLoaderRequest.packageName) && Intrinsics.areEqual(this.versionCode, configLoaderRequest.versionCode) && Intrinsics.areEqual(this.afmaVersion, configLoaderRequest.afmaVersion) && Intrinsics.areEqual(this.experimentIds, configLoaderRequest.experimentIds);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v4, types: [int] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final int hashCode() {
        int iHashCode = this.appId.hashCode() * 31;
        String str = this.adUnitId;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        boolean z = this.isCalledFromInit;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int iA = ob.a(this.packageName, (iHashCode2 + r2) * 31, 31);
        Integer num = this.versionCode;
        return this.experimentIds.hashCode() + ob.a(this.afmaVersion, (iA + (num != null ? num.hashCode() : 0)) * 31, 31);
    }

    public final String toString() {
        return "ConfigLoaderRequest(appId=" + this.appId + ", adUnitId=" + this.adUnitId + ", isCalledFromInit=" + this.isCalledFromInit + ", packageName=" + this.packageName + ", versionCode=" + this.versionCode + ", afmaVersion=" + this.afmaVersion + ", experimentIds=" + this.experimentIds + ")";
    }
}
