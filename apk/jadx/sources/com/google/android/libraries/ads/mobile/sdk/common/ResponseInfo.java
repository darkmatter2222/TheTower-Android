package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3635i2;
import java.util.List;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0086\b\u0018\u00002\u00020\u0001B;\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\n\u0012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\r¢\u0006\u0004\b,\u0010-J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\nHÆ\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rHÆ\u0003¢\u0006\u0004\b\u000e\u0010\u000fJN\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0012\u001a\u00020\u00072\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\n2\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\rHÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017HÖ\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010\u0004R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b!\u0010\u001f\u001a\u0004\b\"\u0010\u0004R\u001a\u0010\u0012\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010\tR\u001c\u0010\u0013\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010\fR \u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\r8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b)\u0010*\u001a\u0004\b+\u0010\u000f¨\u0006."}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "", "", "toString", "()Ljava/lang/String;", "component1", "component2", "Landroid/os/Bundle;", "component3", "()Landroid/os/Bundle;", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;", "component4", "()Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;", "", "component5", "()Ljava/util/List;", "adapterClassName", "responseId", "responseExtras", "loadedAdSourceResponseInfo", "adSourceResponses", "copy", "(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;Ljava/util/List;)Lcom/google/android/libraries/ads/mobile/sdk/common/ResponseInfo;", "", "hashCode", "()I", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "getAdapterClassName", "b", "getResponseId", "c", "Landroid/os/Bundle;", "getResponseExtras", "d", "Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;", "getLoadedAdSourceResponseInfo", "e", "Ljava/util/List;", "getAdSourceResponses", "<init>", "(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;Ljava/util/List;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class ResponseInfo {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    @SerializedName("Mediation Adapter Class Name")
    private final String adapterClassName;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    @SerializedName("Response ID")
    private final String responseId;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    @SerializedName("Response Extras")
    private final Bundle responseExtras;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    @SerializedName("Loaded Ad Source Response Info")
    private final AdSourceResponseInfo loadedAdSourceResponseInfo;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    @SerializedName("Ad Source Responses")
    private final List<AdSourceResponseInfo> adSourceResponses;

    public ResponseInfo(String str, String str2, Bundle responseExtras, AdSourceResponseInfo adSourceResponseInfo, List<AdSourceResponseInfo> adSourceResponses) {
        Intrinsics.checkNotNullParameter(responseExtras, "responseExtras");
        Intrinsics.checkNotNullParameter(adSourceResponses, "adSourceResponses");
        this.adapterClassName = str;
        this.responseId = str2;
        this.responseExtras = responseExtras;
        this.loadedAdSourceResponseInfo = adSourceResponseInfo;
        this.adSourceResponses = adSourceResponses;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAdapterClassName() {
        return this.adapterClassName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getResponseId() {
        return this.responseId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Bundle getResponseExtras() {
        return this.responseExtras;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final AdSourceResponseInfo getLoadedAdSourceResponseInfo() {
        return this.loadedAdSourceResponseInfo;
    }

    public final List<AdSourceResponseInfo> component5() {
        return this.adSourceResponses;
    }

    public final ResponseInfo copy(String adapterClassName, String responseId, Bundle responseExtras, AdSourceResponseInfo loadedAdSourceResponseInfo, List<AdSourceResponseInfo> adSourceResponses) {
        Intrinsics.checkNotNullParameter(responseExtras, "responseExtras");
        Intrinsics.checkNotNullParameter(adSourceResponses, "adSourceResponses");
        return new ResponseInfo(adapterClassName, responseId, responseExtras, loadedAdSourceResponseInfo, adSourceResponses);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ResponseInfo)) {
            return false;
        }
        ResponseInfo responseInfo = (ResponseInfo) other;
        return Intrinsics.areEqual(this.adapterClassName, responseInfo.adapterClassName) && Intrinsics.areEqual(this.responseId, responseInfo.responseId) && Intrinsics.areEqual(this.responseExtras, responseInfo.responseExtras) && Intrinsics.areEqual(this.loadedAdSourceResponseInfo, responseInfo.loadedAdSourceResponseInfo) && Intrinsics.areEqual(this.adSourceResponses, responseInfo.adSourceResponses);
    }

    public final List<AdSourceResponseInfo> getAdSourceResponses() {
        return this.adSourceResponses;
    }

    public final String getAdapterClassName() {
        return this.adapterClassName;
    }

    public final AdSourceResponseInfo getLoadedAdSourceResponseInfo() {
        return this.loadedAdSourceResponseInfo;
    }

    public final Bundle getResponseExtras() {
        return this.responseExtras;
    }

    public final String getResponseId() {
        return this.responseId;
    }

    public int hashCode() {
        String str = this.adapterClassName;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.responseId;
        int iHashCode2 = (this.responseExtras.hashCode() + ((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
        AdSourceResponseInfo adSourceResponseInfo = this.loadedAdSourceResponseInfo;
        return this.adSourceResponses.hashCode() + ((iHashCode2 + (adSourceResponseInfo != null ? adSourceResponseInfo.hashCode() : 0)) * 31);
    }

    public String toString() {
        String json = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }
}
