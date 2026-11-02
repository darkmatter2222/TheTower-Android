package com.unity3d.ads.adplayer;

import com.ironsource.C3635i2;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AndroidShowOptions.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BA\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\t\u0010\u0014\u001a\u00020\bHÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0004HÆ\u0003JE\u0010\u0016\u001a\u00020\u00002\u0018\b\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005HÖ\u0003J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001J\t\u0010\u001b\u001a\u00020\u0004HÖ\u0001R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\u0010R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000f¨\u0006\u001c"}, d2 = {"Lcom/unity3d/ads/adplayer/AndroidShowOptions;", "Lcom/unity3d/ads/adplayer/ShowOptions;", "unityAdsShowOptions", "", "", "", "placementId", "isOfferwallAd", "", "offerwallPlacementName", "<init>", "(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V", "getUnityAdsShowOptions", "()Ljava/util/Map;", "getPlacementId", "()Ljava/lang/String;", "()Z", "getOfferwallPlacementName", "component1", "component2", "component3", "component4", "copy", "equals", C3635i2.d, "hashCode", "", "toString", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class AndroidShowOptions implements ShowOptions {
    private final boolean isOfferwallAd;
    private final String offerwallPlacementName;
    private final String placementId;
    private final Map<String, Object> unityAdsShowOptions;

    public AndroidShowOptions(Map<String, ? extends Object> map, String str, boolean z, String str2) {
        this.unityAdsShowOptions = map;
        this.placementId = str;
        this.isOfferwallAd = z;
        this.offerwallPlacementName = str2;
    }

    public /* synthetic */ AndroidShowOptions(Map map, String str, boolean z, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(map, (i & 2) != 0 ? null : str, (i & 4) != 0 ? false : z, (i & 8) != 0 ? null : str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AndroidShowOptions copy$default(AndroidShowOptions androidShowOptions, Map map, String str, boolean z, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            map = androidShowOptions.unityAdsShowOptions;
        }
        if ((i & 2) != 0) {
            str = androidShowOptions.placementId;
        }
        if ((i & 4) != 0) {
            z = androidShowOptions.isOfferwallAd;
        }
        if ((i & 8) != 0) {
            str2 = androidShowOptions.offerwallPlacementName;
        }
        return androidShowOptions.copy(map, str, z, str2);
    }

    public final Map<String, Object> component1() {
        return this.unityAdsShowOptions;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getPlacementId() {
        return this.placementId;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final boolean getIsOfferwallAd() {
        return this.isOfferwallAd;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getOfferwallPlacementName() {
        return this.offerwallPlacementName;
    }

    public final AndroidShowOptions copy(Map<String, ? extends Object> unityAdsShowOptions, String placementId, boolean isOfferwallAd, String offerwallPlacementName) {
        return new AndroidShowOptions(unityAdsShowOptions, placementId, isOfferwallAd, offerwallPlacementName);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AndroidShowOptions)) {
            return false;
        }
        AndroidShowOptions androidShowOptions = (AndroidShowOptions) other;
        return Intrinsics.areEqual(this.unityAdsShowOptions, androidShowOptions.unityAdsShowOptions) && Intrinsics.areEqual(this.placementId, androidShowOptions.placementId) && this.isOfferwallAd == androidShowOptions.isOfferwallAd && Intrinsics.areEqual(this.offerwallPlacementName, androidShowOptions.offerwallPlacementName);
    }

    public final String getOfferwallPlacementName() {
        return this.offerwallPlacementName;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public final Map<String, Object> getUnityAdsShowOptions() {
        return this.unityAdsShowOptions;
    }

    public int hashCode() {
        Map<String, Object> map = this.unityAdsShowOptions;
        int iHashCode = (map == null ? 0 : map.hashCode()) * 31;
        String str = this.placementId;
        int iHashCode2 = (((iHashCode + (str == null ? 0 : str.hashCode())) * 31) + Boolean.hashCode(this.isOfferwallAd)) * 31;
        String str2 = this.offerwallPlacementName;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final boolean isOfferwallAd() {
        return this.isOfferwallAd;
    }

    public String toString() {
        return "AndroidShowOptions(unityAdsShowOptions=" + this.unityAdsShowOptions + ", placementId=" + this.placementId + ", isOfferwallAd=" + this.isOfferwallAd + ", offerwallPlacementName=" + this.offerwallPlacementName + ')';
    }
}
