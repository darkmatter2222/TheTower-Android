package com.google.android.libraries.ads.mobile.sdk.internal.signals;

import com.google.gson.annotations.SerializedName;
import java.util.Map;
import kotlin.y1;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00050\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0007¨\u0006\u0010"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/internal/signals/AppStats;", "", "", "sequenceNumber", "Ljava/lang/String;", "", "priorRequestCount", "I", "priorRequestInSessionCount", "", "timeInSessionMilliseconds", "J", "", "priorRequestCountByFormat", "Ljava/util/Map;", "numberOfConsentFormsShown", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class AppStats {

    @SerializedName("consent_form_action_identifier")
    public final int numberOfConsentFormsShown;

    @SerializedName("preqs")
    public final int priorRequestCount;

    @SerializedName("preqs_by_format")
    public final Map<String, Integer> priorRequestCountByFormat;

    @SerializedName("preqs_in_session")
    public final int priorRequestInSessionCount;

    @SerializedName("seq_num")
    public final String sequenceNumber;

    @SerializedName("time_in_session")
    public final long timeInSessionMilliseconds;

    public AppStats(String sequenceNumber, int i, int i2, long j, Map priorRequestCountByFormat, int i3) {
        Intrinsics.checkNotNullParameter(sequenceNumber, "sequenceNumber");
        Intrinsics.checkNotNullParameter(priorRequestCountByFormat, "priorRequestCountByFormat");
        this.sequenceNumber = sequenceNumber;
        this.priorRequestCount = i;
        this.priorRequestInSessionCount = i2;
        this.timeInSessionMilliseconds = j;
        this.priorRequestCountByFormat = priorRequestCountByFormat;
        this.numberOfConsentFormsShown = i3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppStats)) {
            return false;
        }
        AppStats appStats = (AppStats) obj;
        return Intrinsics.areEqual(this.sequenceNumber, appStats.sequenceNumber) && this.priorRequestCount == appStats.priorRequestCount && this.priorRequestInSessionCount == appStats.priorRequestInSessionCount && this.timeInSessionMilliseconds == appStats.timeInSessionMilliseconds && Intrinsics.areEqual(this.priorRequestCountByFormat, appStats.priorRequestCountByFormat) && this.numberOfConsentFormsShown == appStats.numberOfConsentFormsShown;
    }

    public final int hashCode() {
        return Integer.hashCode(this.numberOfConsentFormsShown) + ((this.priorRequestCountByFormat.hashCode() + ((Long.hashCode(this.timeInSessionMilliseconds) + y1.a(this.priorRequestInSessionCount, y1.a(this.priorRequestCount, this.sequenceNumber.hashCode() * 31, 31), 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AppStats(sequenceNumber=" + this.sequenceNumber + ", priorRequestCount=" + this.priorRequestCount + ", priorRequestInSessionCount=" + this.priorRequestInSessionCount + ", timeInSessionMilliseconds=" + this.timeInSessionMilliseconds + ", priorRequestCountByFormat=" + this.priorRequestCountByFormat + ", numberOfConsentFormsShown=" + this.numberOfConsentFormsShown + ")";
    }
}
