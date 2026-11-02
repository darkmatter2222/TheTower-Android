package com.google.android.libraries.ads.mobile.sdk.common;

import com.google.gson.GsonBuilder;
import com.google.gson.annotations.SerializedName;
import com.ironsource.C3510b4;
import com.ironsource.C3635i2;
import com.tapjoy.TJAdUnitConstants;
import kotlin.ob;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0086\b\u0018\u0000  2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B!\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\b\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0003HÆ\u0003¢\u0006\u0004\b\t\u0010\u0005J.\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000f\u0010\u0007J\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\n\u001a\u00020\u00028\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u000b\u001a\u00020\u00038\u0016X\u0097\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u0005R\u001a\u0010\f\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001a\u001a\u0004\b\u001d\u0010\u0005¨\u0006!"}, d2 = {"Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "Lcom/google/android/libraries/ads/mobile/sdk/common/BaseError;", "", "", "toString", "()Ljava/lang/String;", "component1", "()I", "component2", "component3", "code", TJAdUnitConstants.String.MESSAGE, C3510b4.j.D, "copy", "(ILjava/lang/String;Ljava/lang/String;)Lcom/google/android/libraries/ads/mobile/sdk/common/MediationAdError;", "hashCode", "", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "a", "I", "getCode", "()Ljava/lang/Integer;", "b", "Ljava/lang/String;", "getMessage", "c", "getDomain", "<init>", "(ILjava/lang/String;Ljava/lang/String;)V", "Companion", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final /* data */ class MediationAdError extends BaseError<Integer> {
    public static final String GOOGLE_MOBILE_ADS_DOMAIN = "com.google.android.libraries.ads.mobile.sdk";
    public static final String UNDEFINED_DOMAIN = "undefined";

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    @SerializedName("Code")
    private final int code;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    @SerializedName("Message")
    private final String message;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    @SerializedName("Domain")
    private final String domain;

    public MediationAdError(int i, String message, String domain) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(domain, "domain");
        this.code = i;
        this.message = message;
        this.domain = domain;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getCode() {
        return this.code;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getMessage() {
        return this.message;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDomain() {
        return this.domain;
    }

    public final MediationAdError copy(int code, String message, String domain) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(domain, "domain");
        return new MediationAdError(code, message, domain);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MediationAdError)) {
            return false;
        }
        MediationAdError mediationAdError = (MediationAdError) other;
        return this.code == mediationAdError.code && Intrinsics.areEqual(this.message, mediationAdError.message) && Intrinsics.areEqual(this.domain, mediationAdError.domain);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseError
    public Integer getCode() {
        return Integer.valueOf(this.code);
    }

    public final String getDomain() {
        return this.domain;
    }

    @Override // com.google.android.libraries.ads.mobile.sdk.common.BaseError
    /* JADX INFO: renamed from: getMessage */
    public String getCom.tapjoy.TJAdUnitConstants.String.MESSAGE java.lang.String() {
        return this.message;
    }

    public int hashCode() {
        return this.domain.hashCode() + ob.a(this.message, Integer.hashCode(this.code) * 31, 31);
    }

    public String toString() {
        String json = new GsonBuilder().setPrettyPrinting().serializeNulls().create().toJson(this);
        Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
        return json;
    }
}
