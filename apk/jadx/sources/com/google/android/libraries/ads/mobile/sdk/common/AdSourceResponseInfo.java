package com.google.android.libraries.ads.mobile.sdk.common;

import android.os.Bundle;
import com.google.android.libraries.ads.mobile.sdk.internal.util.AndroidBundleTypeAdapterFactory;
import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3635i2;
import kotlin.ob;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0019\b\u0086\b\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0016\u001a\u00020\f\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002¢\u0006\u0004\b8\u00109J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0012\u0010\n\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÆ\u0003¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0011\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0012\u0010\u0004Jb\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0013\u001a\u00020\u00022\b\b\u0002\u0010\u0014\u001a\u00020\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\t2\b\b\u0002\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0017\u001a\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00022\b\b\u0002\u0010\u0019\u001a\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001e\u001a\u00020\u001dHÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u001a\u0010\"\u001a\u00020!2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\"\u0010#R\u001a\u0010\u0013\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010\u0004R\u001a\u0010\u0014\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\f\n\u0004\b'\u0010(\u001a\u0004\b)\u0010\bR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010\u000bR\u001a\u0010\u0016\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b-\u0010.\u001a\u0004\b/\u0010\u000eR\u001a\u0010\u0017\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b0\u0010%\u001a\u0004\b1\u0010\u0004R\u001a\u0010\u0018\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b2\u0010%\u001a\u0004\b3\u0010\u0004R\u001a\u0010\u0019\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b4\u0010%\u001a\u0004\b5\u0010\u0004R\u001a\u0010\u001a\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b6\u0010%\u001a\u0004\b7\u0010\u0004¨\u0006:"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;", "", "", "toString", "()Ljava/lang/String;", "component1", "", "component2", "()J", "Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "component3", "()Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "Landroid/os/Bundle;", "component4", "()Landroid/os/Bundle;", "component5", "component6", "component7", "component8", "adapterClassName", "latencyMillis", "adError", "credentials", "name", "id", "instanceName", "instanceId", "copy", "(Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/AdSourceResponseInfo;", "", "hashCode", "()I", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "Ljava/lang/String;", "getAdapterClassName", "b", "J", "getLatencyMillis", "c", "Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "getAdError", "d", "Landroid/os/Bundle;", "getCredentials", "e", "getName", "f", "getId", "g", "getInstanceName", "h", "getInstanceId", "<init>", "(Ljava/lang/String;JLcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class AdSourceResponseInfo {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    @SerializedName("Adapter")
    private final String adapterClassName;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    @SerializedName("Latency")
    private final long latencyMillis;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    @SerializedName("Error")
    private final MediationAdError adError;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    @SerializedName("Credentials")
    private final Bundle credentials;

    /* JADX INFO: renamed from: e, reason: from kotlin metadata */
    @SerializedName("Ad Source Name")
    private final String name;

    /* JADX INFO: renamed from: f, reason: from kotlin metadata */
    @SerializedName("Ad Source ID")
    private final String id;

    /* JADX INFO: renamed from: g, reason: from kotlin metadata */
    @SerializedName("Ad Source Instance Name")
    private final String instanceName;

    /* JADX INFO: renamed from: h, reason: from kotlin metadata */
    @SerializedName("Ad Source Instance ID")
    private final String instanceId;

    public AdSourceResponseInfo(String adapterClassName, long j, MediationAdError mediationAdError, Bundle credentials, String name, String id, String instanceName, String instanceId) {
        Intrinsics.checkNotNullParameter(adapterClassName, "adapterClassName");
        Intrinsics.checkNotNullParameter(credentials, "credentials");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(instanceId, "instanceId");
        this.adapterClassName = adapterClassName;
        this.latencyMillis = j;
        this.adError = mediationAdError;
        this.credentials = credentials;
        this.name = name;
        this.id = id;
        this.instanceName = instanceName;
        this.instanceId = instanceId;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAdapterClassName() {
        return this.adapterClassName;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final long getLatencyMillis() {
        return this.latencyMillis;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final MediationAdError getAdError() {
        return this.adError;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Bundle getCredentials() {
        return this.credentials;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getInstanceName() {
        return this.instanceName;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getInstanceId() {
        return this.instanceId;
    }

    public final AdSourceResponseInfo copy(String adapterClassName, long latencyMillis, MediationAdError adError, Bundle credentials, String name, String id, String instanceName, String instanceId) {
        Intrinsics.checkNotNullParameter(adapterClassName, "adapterClassName");
        Intrinsics.checkNotNullParameter(credentials, "credentials");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(instanceName, "instanceName");
        Intrinsics.checkNotNullParameter(instanceId, "instanceId");
        return new AdSourceResponseInfo(adapterClassName, latencyMillis, adError, credentials, name, id, instanceName, instanceId);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof AdSourceResponseInfo)) {
            return false;
        }
        AdSourceResponseInfo adSourceResponseInfo = (AdSourceResponseInfo) other;
        return Intrinsics.areEqual(this.adapterClassName, adSourceResponseInfo.adapterClassName) && this.latencyMillis == adSourceResponseInfo.latencyMillis && Intrinsics.areEqual(this.adError, adSourceResponseInfo.adError) && Intrinsics.areEqual(this.credentials, adSourceResponseInfo.credentials) && Intrinsics.areEqual(this.name, adSourceResponseInfo.name) && Intrinsics.areEqual(this.id, adSourceResponseInfo.id) && Intrinsics.areEqual(this.instanceName, adSourceResponseInfo.instanceName) && Intrinsics.areEqual(this.instanceId, adSourceResponseInfo.instanceId);
    }

    public final MediationAdError getAdError() {
        return this.adError;
    }

    public final String getAdapterClassName() {
        return this.adapterClassName;
    }

    public final Bundle getCredentials() {
        return this.credentials;
    }

    public final String getId() {
        return this.id;
    }

    public final String getInstanceId() {
        return this.instanceId;
    }

    public final String getInstanceName() {
        return this.instanceName;
    }

    public final long getLatencyMillis() {
        return this.latencyMillis;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int iHashCode = (Long.hashCode(this.latencyMillis) + (this.adapterClassName.hashCode() * 31)) * 31;
        MediationAdError mediationAdError = this.adError;
        return this.instanceId.hashCode() + ob.a(this.instanceName, ob.a(this.id, ob.a(this.name, (this.credentials.hashCode() + ((iHashCode + (mediationAdError == null ? 0 : mediationAdError.hashCode())) * 31)) * 31, 31), 31), 31);
    }

    public String toString() {
        String json = new GsonBuilder().registerTypeAdapterFactory(new AndroidBundleTypeAdapterFactory()).setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }
}
