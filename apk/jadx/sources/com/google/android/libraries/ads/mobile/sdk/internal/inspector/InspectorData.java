package com.google.android.libraries.ads.mobile.sdk.internal.inspector;

import android.os.Build;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3927y2;
import kotlin.ob;
import kotlin.y1;
import kotlin.z1;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0007R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0007R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00178\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u000bR\u0014\u0010\u001b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0007R\u0014\u0010\u001d\u001a\u00020\u001c8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\u0004R\u0014\u0010 \u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010\u0007R\u0014\u0010!\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0007R\u0014\u0010\"\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u0007R\u0014\u0010#\u001a\u00020\u00058\u0006X\u0087D¢\u0006\u0006\n\u0004\b#\u0010\u0007R\u0014\u0010$\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010\u0007¨\u0006%"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/inspector/InspectorData;", "", "Lcom/google/gson/JsonObject;", "appInfo", "Lcom/google/gson/JsonObject;", "", "sdkVersion", "Ljava/lang/String;", "gesture", "", "isGamRegisteredTestDevice", "Z", "isSimulator", "Lcom/google/gson/JsonArray;", "adapterData", "Lcom/google/gson/JsonArray;", "networkExtras", C3927y2.s, "cldData", "uiStorage", "userStorage", "openAction", "adSlotData", "", "applicationVolume", "F", "applicationMuted", "maxAdContentRating", "", "publisherFirstPartyIdEnabled", "I", "privacy", "plugin", "internalSdkVersion", "decagonVersion", "platform", "osVersion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class InspectorData {

    @SerializedName("adSlots")
    public final JsonObject adSlotData;

    @SerializedName("adapters")
    public final JsonArray adapterData;

    @SerializedName("appInfo")
    public final JsonObject appInfo;

    @SerializedName("applicationMuted")
    public final boolean applicationMuted;

    @SerializedName("applicationVolume")
    public final float applicationVolume;

    @SerializedName("cld")
    public final JsonObject cldData;

    @SerializedName("decagonVersion")
    public final String decagonVersion;

    @SerializedName("gesture")
    public final String gesture;

    @SerializedName("internalSdkVersion")
    public final String internalSdkVersion;

    @SerializedName("isGamRegisteredTestDevice")
    public final boolean isGamRegisteredTestDevice;

    @SerializedName("isSimulator")
    public final boolean isSimulator;

    @SerializedName("maxAdContentRating")
    public final String maxAdContentRating;

    @SerializedName("networkExtras")
    public final String networkExtras;

    @SerializedName("openAction")
    public final String openAction;

    @SerializedName("osVersion")
    public final String osVersion;

    @SerializedName("platform")
    public final String platform;

    @SerializedName("plugin")
    public final String plugin;

    @SerializedName("privacy")
    public final JsonObject privacy;

    @SerializedName("publisherFirstPartyIdEnabled")
    public final int publisherFirstPartyIdEnabled;

    @SerializedName("sdkVersion")
    public final String sdkVersion;

    @SerializedName(C3927y2.s)
    public final JsonObject serverData;

    @SerializedName("uiStorage")
    public final JsonObject uiStorage;

    @SerializedName("userDisk")
    public final JsonObject userStorage;

    public InspectorData(JsonObject appInfo, String sdkVersion, String gesture, boolean z, boolean z2, JsonArray adapterData, String networkExtras, JsonObject serverData, JsonObject cldData, JsonObject uiStorage, JsonObject userStorage, String openAction, JsonObject adSlotData, float f, boolean z3, String maxAdContentRating, int i, JsonObject privacy, String plugin) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(sdkVersion, "sdkVersion");
        Intrinsics.checkNotNullParameter(gesture, "gesture");
        Intrinsics.checkNotNullParameter(adapterData, "adapterData");
        Intrinsics.checkNotNullParameter(networkExtras, "networkExtras");
        Intrinsics.checkNotNullParameter(serverData, "serverData");
        Intrinsics.checkNotNullParameter(cldData, "cldData");
        Intrinsics.checkNotNullParameter(uiStorage, "uiStorage");
        Intrinsics.checkNotNullParameter(userStorage, "userStorage");
        Intrinsics.checkNotNullParameter(openAction, "openAction");
        Intrinsics.checkNotNullParameter(adSlotData, "adSlotData");
        Intrinsics.checkNotNullParameter(maxAdContentRating, "maxAdContentRating");
        Intrinsics.checkNotNullParameter(privacy, "privacy");
        Intrinsics.checkNotNullParameter(plugin, "plugin");
        this.appInfo = appInfo;
        this.sdkVersion = sdkVersion;
        this.gesture = gesture;
        this.isGamRegisteredTestDevice = z;
        this.isSimulator = z2;
        this.adapterData = adapterData;
        this.networkExtras = networkExtras;
        this.serverData = serverData;
        this.cldData = cldData;
        this.uiStorage = uiStorage;
        this.userStorage = userStorage;
        this.openAction = openAction;
        this.adSlotData = adSlotData;
        this.applicationVolume = f;
        this.applicationMuted = z3;
        this.maxAdContentRating = maxAdContentRating;
        this.publisherFirstPartyIdEnabled = i;
        this.privacy = privacy;
        this.plugin = plugin;
        this.internalSdkVersion = sdkVersion;
        this.decagonVersion = sdkVersion;
        this.platform = "ANDROID";
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        this.osVersion = RELEASE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InspectorData)) {
            return false;
        }
        InspectorData inspectorData = (InspectorData) obj;
        return Intrinsics.areEqual(this.appInfo, inspectorData.appInfo) && Intrinsics.areEqual(this.sdkVersion, inspectorData.sdkVersion) && Intrinsics.areEqual(this.gesture, inspectorData.gesture) && this.isGamRegisteredTestDevice == inspectorData.isGamRegisteredTestDevice && this.isSimulator == inspectorData.isSimulator && Intrinsics.areEqual(this.adapterData, inspectorData.adapterData) && Intrinsics.areEqual(this.networkExtras, inspectorData.networkExtras) && Intrinsics.areEqual(this.serverData, inspectorData.serverData) && Intrinsics.areEqual(this.cldData, inspectorData.cldData) && Intrinsics.areEqual(this.uiStorage, inspectorData.uiStorage) && Intrinsics.areEqual(this.userStorage, inspectorData.userStorage) && Intrinsics.areEqual(this.openAction, inspectorData.openAction) && Intrinsics.areEqual(this.adSlotData, inspectorData.adSlotData) && Float.compare(this.applicationVolume, inspectorData.applicationVolume) == 0 && this.applicationMuted == inspectorData.applicationMuted && Intrinsics.areEqual(this.maxAdContentRating, inspectorData.maxAdContentRating) && this.publisherFirstPartyIdEnabled == inspectorData.publisherFirstPartyIdEnabled && Intrinsics.areEqual(this.privacy, inspectorData.privacy) && Intrinsics.areEqual(this.plugin, inspectorData.plugin);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [int] */
    /* JADX WARN: Type inference failed for: r0v7, types: [int] */
    /* JADX WARN: Type inference failed for: r2v20, types: [int] */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iA = ob.a(this.gesture, ob.a(this.sdkVersion, this.appInfo.hashCode() * 31, 31), 31);
        boolean z = this.isGamRegisteredTestDevice;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iA + r2) * 31;
        boolean z2 = this.isSimulator;
        ?? r3 = z2;
        if (z2) {
            r3 = 1;
        }
        int iHashCode = (Float.hashCode(this.applicationVolume) + z1.a(this.adSlotData, ob.a(this.openAction, z1.a(this.userStorage, z1.a(this.uiStorage, z1.a(this.cldData, z1.a(this.serverData, ob.a(this.networkExtras, (this.adapterData.hashCode() + ((i + r3) * 31)) * 31, 31), 31), 31), 31), 31), 31), 31)) * 31;
        boolean z3 = this.applicationMuted;
        return this.plugin.hashCode() + z1.a(this.privacy, y1.a(this.publisherFirstPartyIdEnabled, ob.a(this.maxAdContentRating, (iHashCode + (z3 ? 1 : z3)) * 31, 31), 31), 31);
    }

    public final String toString() {
        return "InspectorData(appInfo=" + this.appInfo + ", sdkVersion=" + this.sdkVersion + ", gesture=" + this.gesture + ", isGamRegisteredTestDevice=" + this.isGamRegisteredTestDevice + ", isSimulator=" + this.isSimulator + ", adapterData=" + this.adapterData + ", networkExtras=" + this.networkExtras + ", serverData=" + this.serverData + ", cldData=" + this.cldData + ", uiStorage=" + this.uiStorage + ", userStorage=" + this.userStorage + ", openAction=" + this.openAction + ", adSlotData=" + this.adSlotData + ", applicationVolume=" + this.applicationVolume + ", applicationMuted=" + this.applicationMuted + ", maxAdContentRating=" + this.maxAdContentRating + ", publisherFirstPartyIdEnabled=" + this.publisherFirstPartyIdEnabled + ", privacy=" + this.privacy + ", plugin=" + this.plugin + ")";
    }
}
