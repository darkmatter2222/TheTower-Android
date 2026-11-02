package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import com.ironsource.adapters.admob.AdMobConstants;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010\u0007R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u0018\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u0007R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/ClientRequestBuildingData;", "", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;", "signals", "Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/Signals;", "", "url", "Ljava/lang/String;", "postBody", "error", "", "cookiesInclude", "Ljava/lang/Boolean;", AdMobConstants.REQUEST_ID_KEY, "params", "cParams", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class ClientRequestBuildingData {

    @SerializedName("c_params")
    public String cParams;

    @SerializedName("cookies_include")
    public Boolean cookiesInclude;

    @SerializedName("error")
    public String error;

    @SerializedName("params")
    public String params;

    @SerializedName("post_body")
    public String postBody;

    @SerializedName("request_id")
    public String requestId;

    @SerializedName("signals")
    public Signals signals;

    @SerializedName("url")
    public String url;

    public ClientRequestBuildingData() {
        this(null, null, null, null, null, null, 255);
    }

    public ClientRequestBuildingData(Signals signals, String str, String str2, String str3, Boolean bool, String str4, String str5, String str6) {
        this.signals = signals;
        this.url = str;
        this.postBody = str2;
        this.error = str3;
        this.cookiesInclude = bool;
        this.requestId = str4;
        this.params = str5;
        this.cParams = str6;
    }

    public /* synthetic */ ClientRequestBuildingData(String str, String str2, String str3, Boolean bool, String str4, String str5, int i) {
        this(null, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2, (i & 8) != 0 ? null : str3, (i & 16) != 0 ? null : bool, (i & 32) != 0 ? null : str4, null, (i & 128) != 0 ? null : str5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClientRequestBuildingData)) {
            return false;
        }
        ClientRequestBuildingData clientRequestBuildingData = (ClientRequestBuildingData) obj;
        return Intrinsics.areEqual(this.signals, clientRequestBuildingData.signals) && Intrinsics.areEqual(this.url, clientRequestBuildingData.url) && Intrinsics.areEqual(this.postBody, clientRequestBuildingData.postBody) && Intrinsics.areEqual(this.error, clientRequestBuildingData.error) && Intrinsics.areEqual(this.cookiesInclude, clientRequestBuildingData.cookiesInclude) && Intrinsics.areEqual(this.requestId, clientRequestBuildingData.requestId) && Intrinsics.areEqual(this.params, clientRequestBuildingData.params) && Intrinsics.areEqual(this.cParams, clientRequestBuildingData.cParams);
    }

    public final int hashCode() {
        Signals signals = this.signals;
        int iHashCode = (signals == null ? 0 : signals.hashCode()) * 31;
        String str = this.url;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.postBody;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.error;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.cookiesInclude;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str4 = this.requestId;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.params;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.cParams;
        return iHashCode7 + (str6 != null ? str6.hashCode() : 0);
    }

    public final String toString() {
        return "ClientRequestBuildingData(signals=" + this.signals + ", url=" + this.url + ", postBody=" + this.postBody + ", error=" + this.error + ", cookiesInclude=" + this.cookiesInclude + ", requestId=" + this.requestId + ", params=" + this.params + ", cParams=" + this.cParams + ")";
    }
}
