package com.google.android.libraries.ads.mobile.sdk.internal.common;

import android.os.Bundle;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.annotations.SerializedName;
import com.ironsource.Fc;
import java.util.ArrayList;
import java.util.List;
import kotlin.h93;
import kotlin.ob;
import kotlin.z1;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\b\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\bR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\bR\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\bR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\bR\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0014\u0010\u0010\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0011R\u001e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\bR\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/common/ParentAdConfig;", "", "", "innerAdUnitId", "Ljava/lang/String;", Fc.a, "", "clickUrls", "Ljava/util/List;", "impressionUrls", "manualTrackingUrls", "fillUrls", "videoStartUrls", "videoRewardsUrls", "videoCompleteUrls", "", "isClosableAreaDisabled", "Z", "Lcom/google/gson/JsonObject;", "recursiveRequestParameters", "Lcom/google/gson/JsonObject;", "isAnalyticsLoggingEnabled", "Landroid/os/Bundle;", "rewardsBundles", "Lcom/google/gson/JsonArray;", "recursiveSignalCollectionConfig", "Lcom/google/gson/JsonArray;", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class ParentAdConfig {

    @SerializedName("ad_source_name")
    public final String adSourceName;

    @SerializedName("click_urls")
    public final List<String> clickUrls;

    @SerializedName("fill_urls")
    public final List<String> fillUrls;

    @SerializedName("imp_urls")
    public final List<String> impressionUrls;

    @SerializedName("initial_ad_unit_id")
    public final String innerAdUnitId;

    @SerializedName("is_analytics_logging_enabled")
    public final boolean isAnalyticsLoggingEnabled;

    @SerializedName("is_closable_area_disabled")
    public final boolean isClosableAreaDisabled;

    @SerializedName("manual_tracking_urls")
    public final List<String> manualTrackingUrls;

    @SerializedName("recursive_request_parameters")
    public final JsonObject recursiveRequestParameters;

    @SerializedName("recursive_signal_collection")
    public final JsonArray recursiveSignalCollectionConfig;

    @SerializedName("rewards")
    public List<Bundle> rewardsBundles;

    @SerializedName("video_complete_urls")
    public final List<String> videoCompleteUrls;

    @SerializedName("video_reward_urls")
    public final List<String> videoRewardsUrls;

    @SerializedName("video_start_urls")
    public final List<String> videoStartUrls;

    public ParentAdConfig(String innerAdUnitId, String adSourceName, ArrayList clickUrls, ArrayList impressionUrls, ArrayList manualTrackingUrls, ArrayList fillUrls, ArrayList videoStartUrls, ArrayList videoRewardsUrls, ArrayList videoCompleteUrls, boolean z, JsonObject recursiveRequestParameters, boolean z2, List list, JsonArray jsonArray) {
        Intrinsics.checkNotNullParameter(innerAdUnitId, "innerAdUnitId");
        Intrinsics.checkNotNullParameter(adSourceName, "adSourceName");
        Intrinsics.checkNotNullParameter(clickUrls, "clickUrls");
        Intrinsics.checkNotNullParameter(impressionUrls, "impressionUrls");
        Intrinsics.checkNotNullParameter(manualTrackingUrls, "manualTrackingUrls");
        Intrinsics.checkNotNullParameter(fillUrls, "fillUrls");
        Intrinsics.checkNotNullParameter(videoStartUrls, "videoStartUrls");
        Intrinsics.checkNotNullParameter(videoRewardsUrls, "videoRewardsUrls");
        Intrinsics.checkNotNullParameter(videoCompleteUrls, "videoCompleteUrls");
        Intrinsics.checkNotNullParameter(recursiveRequestParameters, "recursiveRequestParameters");
        this.innerAdUnitId = innerAdUnitId;
        this.adSourceName = adSourceName;
        this.clickUrls = clickUrls;
        this.impressionUrls = impressionUrls;
        this.manualTrackingUrls = manualTrackingUrls;
        this.fillUrls = fillUrls;
        this.videoStartUrls = videoStartUrls;
        this.videoRewardsUrls = videoRewardsUrls;
        this.videoCompleteUrls = videoCompleteUrls;
        this.isClosableAreaDisabled = z;
        this.recursiveRequestParameters = recursiveRequestParameters;
        this.isAnalyticsLoggingEnabled = z2;
        this.rewardsBundles = list;
        this.recursiveSignalCollectionConfig = jsonArray;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ParentAdConfig)) {
            return false;
        }
        ParentAdConfig parentAdConfig = (ParentAdConfig) obj;
        return Intrinsics.areEqual(this.innerAdUnitId, parentAdConfig.innerAdUnitId) && Intrinsics.areEqual(this.adSourceName, parentAdConfig.adSourceName) && Intrinsics.areEqual(this.clickUrls, parentAdConfig.clickUrls) && Intrinsics.areEqual(this.impressionUrls, parentAdConfig.impressionUrls) && Intrinsics.areEqual(this.manualTrackingUrls, parentAdConfig.manualTrackingUrls) && Intrinsics.areEqual(this.fillUrls, parentAdConfig.fillUrls) && Intrinsics.areEqual(this.videoStartUrls, parentAdConfig.videoStartUrls) && Intrinsics.areEqual(this.videoRewardsUrls, parentAdConfig.videoRewardsUrls) && Intrinsics.areEqual(this.videoCompleteUrls, parentAdConfig.videoCompleteUrls) && this.isClosableAreaDisabled == parentAdConfig.isClosableAreaDisabled && Intrinsics.areEqual(this.recursiveRequestParameters, parentAdConfig.recursiveRequestParameters) && this.isAnalyticsLoggingEnabled == parentAdConfig.isAnalyticsLoggingEnabled && Intrinsics.areEqual(this.rewardsBundles, parentAdConfig.rewardsBundles) && Intrinsics.areEqual(this.recursiveSignalCollectionConfig, parentAdConfig.recursiveSignalCollectionConfig);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [int] */
    /* JADX WARN: Type inference failed for: r0v14, types: [int] */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v9, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public final int hashCode() {
        int iA = h93.a(this.videoCompleteUrls, h93.a(this.videoRewardsUrls, h93.a(this.videoStartUrls, h93.a(this.fillUrls, h93.a(this.manualTrackingUrls, h93.a(this.impressionUrls, h93.a(this.clickUrls, ob.a(this.adSourceName, this.innerAdUnitId.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31);
        boolean z = this.isClosableAreaDisabled;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int iA2 = z1.a(this.recursiveRequestParameters, (iA + r2) * 31, 31);
        boolean z2 = this.isAnalyticsLoggingEnabled;
        int i = (iA2 + (z2 ? 1 : z2)) * 31;
        List<Bundle> list = this.rewardsBundles;
        int iHashCode = (i + (list == null ? 0 : list.hashCode())) * 31;
        JsonArray jsonArray = this.recursiveSignalCollectionConfig;
        return iHashCode + (jsonArray != null ? jsonArray.hashCode() : 0);
    }

    public final String toString() {
        return "ParentAdConfig(innerAdUnitId=" + this.innerAdUnitId + ", adSourceName=" + this.adSourceName + ", clickUrls=" + this.clickUrls + ", impressionUrls=" + this.impressionUrls + ", manualTrackingUrls=" + this.manualTrackingUrls + ", fillUrls=" + this.fillUrls + ", videoStartUrls=" + this.videoStartUrls + ", videoRewardsUrls=" + this.videoRewardsUrls + ", videoCompleteUrls=" + this.videoCompleteUrls + ", isClosableAreaDisabled=" + this.isClosableAreaDisabled + ", recursiveRequestParameters=" + this.recursiveRequestParameters + ", isAnalyticsLoggingEnabled=" + this.isAnalyticsLoggingEnabled + ", rewardsBundles=" + this.rewardsBundles + ", recursiveSignalCollectionConfig=" + this.recursiveSignalCollectionConfig + ")";
    }
}
