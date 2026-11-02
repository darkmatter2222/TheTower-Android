package com.google.android.libraries.ads.mobile.sdk.internal.common;

import com.google.gson.JsonObject;
import com.google.gson.annotations.SerializedName;
import java.util.ArrayList;
import java.util.List;
import kotlin.ob;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0014\u0010\f\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentCommonConfig;", "", "", "", "noFillUrls", "Ljava/util/List;", "", "refreshIntervalInSeconds", "J", "gwsQueryId", "Ljava/lang/String;", "Lcom/google/gson/JsonObject;", "responseInfoExtras", "Lcom/google/gson/JsonObject;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class ParentCommonConfig {

    @SerializedName("gws_query_id")
    public final String gwsQueryId;

    @SerializedName("nofill_urls")
    public final List<String> noFillUrls;

    @SerializedName("refresh_interval")
    public final long refreshIntervalInSeconds;

    @SerializedName("response_info_extras")
    public final JsonObject responseInfoExtras;

    public ParentCommonConfig(ArrayList noFillUrls, long j, String gwsQueryId, JsonObject responseInfoExtras) {
        Intrinsics.checkNotNullParameter(noFillUrls, "noFillUrls");
        Intrinsics.checkNotNullParameter(gwsQueryId, "gwsQueryId");
        Intrinsics.checkNotNullParameter(responseInfoExtras, "responseInfoExtras");
        this.noFillUrls = noFillUrls;
        this.refreshIntervalInSeconds = j;
        this.gwsQueryId = gwsQueryId;
        this.responseInfoExtras = responseInfoExtras;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParentCommonConfig)) {
            return false;
        }
        ParentCommonConfig parentCommonConfig = (ParentCommonConfig) obj;
        return Intrinsics.areEqual(this.noFillUrls, parentCommonConfig.noFillUrls) && this.refreshIntervalInSeconds == parentCommonConfig.refreshIntervalInSeconds && Intrinsics.areEqual(this.gwsQueryId, parentCommonConfig.gwsQueryId) && Intrinsics.areEqual(this.responseInfoExtras, parentCommonConfig.responseInfoExtras);
    }

    public final int hashCode() {
        return this.responseInfoExtras.hashCode() + ob.a(this.gwsQueryId, (Long.hashCode(this.refreshIntervalInSeconds) + (this.noFillUrls.hashCode() * 31)) * 31, 31);
    }

    public final String toString() {
        return "ParentCommonConfig(noFillUrls=" + this.noFillUrls + ", refreshIntervalInSeconds=" + this.refreshIntervalInSeconds + ", gwsQueryId=" + this.gwsQueryId + ", responseInfoExtras=" + this.responseInfoExtras + ")";
    }
}
