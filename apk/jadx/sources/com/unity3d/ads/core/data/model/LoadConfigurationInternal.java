package com.unity3d.ads.core.data.model;

import com.ironsource.C3635i2;
import com.unity3d.ads.MediationInfo;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Map;
import p005kotlin.Metadata;
import p005kotlin.collections.MapsKt;
import p005kotlin.jvm.internal.DefaultConstructorMarker;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadConfiguration.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0080\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\u0015\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\tHÆ\u0003J\t\u0010\u001d\u001a\u00020\u000bHÆ\u0003JW\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t2\b\b\u0002\u0010\n\u001a\u00020\u000bHÆ\u0001J\u0013\u0010\u001f\u001a\u00020 2\b\u0010!\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\"\u001a\u00020#HÖ\u0001J\t\u0010$\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000fR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006%"}, d2 = {"Lcom/unity3d/ads/core/data/model/LoadConfigurationInternal;", "", "placementId", "", "adMarkup", "mediationAdUnitId", "mediationInfo", "Lcom/unity3d/ads/MediationInfo;", HandleInvocationsFromAdViewer.KEY_EXTRAS, "", "adType", "Lcom/unity3d/ads/core/data/model/LoadAdType;", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/MediationInfo;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/LoadAdType;)V", "getPlacementId", "()Ljava/lang/String;", "getAdMarkup", "getMediationAdUnitId", "getMediationInfo", "()Lcom/unity3d/ads/MediationInfo;", "getExtras", "()Ljava/util/Map;", "getAdType", "()Lcom/unity3d/ads/core/data/model/LoadAdType;", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", C3635i2.d, "hashCode", "", "toString", "unity-ads_defaultRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class LoadConfigurationInternal {
    private final String adMarkup;
    private final LoadAdType adType;
    private final Map<String, String> extras;
    private final String mediationAdUnitId;
    private final MediationInfo mediationInfo;
    private final String placementId;

    public LoadConfigurationInternal(String placementId, String str, String str2, MediationInfo mediationInfo, Map<String, String> extras, LoadAdType adType) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(adType, "adType");
        this.placementId = placementId;
        this.adMarkup = str;
        this.mediationAdUnitId = str2;
        this.mediationInfo = mediationInfo;
        this.extras = extras;
        this.adType = adType;
    }

    public /* synthetic */ LoadConfigurationInternal(String str, String str2, String str3, MediationInfo mediationInfo, Map map, LoadAdType loadAdType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? null : mediationInfo, (i & 16) != 0 ? MapsKt.emptyMap() : map, (i & 32) != 0 ? LoadAdType.FULLSCREEN : loadAdType);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LoadConfigurationInternal copy$default(LoadConfigurationInternal loadConfigurationInternal, String str, String str2, String str3, MediationInfo mediationInfo, Map map, LoadAdType loadAdType, int i, Object obj) {
        if ((i & 1) != 0) {
            str = loadConfigurationInternal.placementId;
        }
        if ((i & 2) != 0) {
            str2 = loadConfigurationInternal.adMarkup;
        }
        if ((i & 4) != 0) {
            str3 = loadConfigurationInternal.mediationAdUnitId;
        }
        if ((i & 8) != 0) {
            mediationInfo = loadConfigurationInternal.mediationInfo;
        }
        if ((i & 16) != 0) {
            map = loadConfigurationInternal.extras;
        }
        if ((i & 32) != 0) {
            loadAdType = loadConfigurationInternal.adType;
        }
        Map map2 = map;
        LoadAdType loadAdType2 = loadAdType;
        return loadConfigurationInternal.copy(str, str2, str3, mediationInfo, map2, loadAdType2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getPlacementId() {
        return this.placementId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getAdMarkup() {
        return this.adMarkup;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getMediationAdUnitId() {
        return this.mediationAdUnitId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final MediationInfo getMediationInfo() {
        return this.mediationInfo;
    }

    public final Map<String, String> component5() {
        return this.extras;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final LoadAdType getAdType() {
        return this.adType;
    }

    public final LoadConfigurationInternal copy(String placementId, String adMarkup, String mediationAdUnitId, MediationInfo mediationInfo, Map<String, String> extras, LoadAdType adType) {
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(adType, "adType");
        return new LoadConfigurationInternal(placementId, adMarkup, mediationAdUnitId, mediationInfo, extras, adType);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LoadConfigurationInternal)) {
            return false;
        }
        LoadConfigurationInternal loadConfigurationInternal = (LoadConfigurationInternal) other;
        return Intrinsics.areEqual(this.placementId, loadConfigurationInternal.placementId) && Intrinsics.areEqual(this.adMarkup, loadConfigurationInternal.adMarkup) && Intrinsics.areEqual(this.mediationAdUnitId, loadConfigurationInternal.mediationAdUnitId) && Intrinsics.areEqual(this.mediationInfo, loadConfigurationInternal.mediationInfo) && Intrinsics.areEqual(this.extras, loadConfigurationInternal.extras) && this.adType == loadConfigurationInternal.adType;
    }

    public final String getAdMarkup() {
        return this.adMarkup;
    }

    public final LoadAdType getAdType() {
        return this.adType;
    }

    public final Map<String, String> getExtras() {
        return this.extras;
    }

    public final String getMediationAdUnitId() {
        return this.mediationAdUnitId;
    }

    public final MediationInfo getMediationInfo() {
        return this.mediationInfo;
    }

    public final String getPlacementId() {
        return this.placementId;
    }

    public int hashCode() {
        int iHashCode = this.placementId.hashCode() * 31;
        String str = this.adMarkup;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.mediationAdUnitId;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        MediationInfo mediationInfo = this.mediationInfo;
        return ((((iHashCode3 + (mediationInfo != null ? mediationInfo.hashCode() : 0)) * 31) + this.extras.hashCode()) * 31) + this.adType.hashCode();
    }

    public String toString() {
        return "LoadConfigurationInternal(placementId=" + this.placementId + ", adMarkup=" + this.adMarkup + ", mediationAdUnitId=" + this.mediationAdUnitId + ", mediationInfo=" + this.mediationInfo + ", extras=" + this.extras + ", adType=" + this.adType + ')';
    }
}
