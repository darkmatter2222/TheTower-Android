package com.google.android.gms.ads;

import com.ironsource.C3510b4;
import com.ironsource.C3635i2;
import com.tapjoy.TJAdUnitConstants;
import p005kotlin.Metadata;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0013\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB+\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0014\u001a\u00020\f\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0000¢\u0006\u0004\b\u001a\u0010\u001bB!\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0014\u001a\u00020\f¢\u0006\u0004\b\u001a\u0010\u001cJ\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00008\u0006¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001f"}, d2 = {"Lcom/google/android/gms/ads/AdError;", "", C3635i2.d, "", "equals", "(Ljava/lang/Object;)Z", "", "a", "I", "getCode", "()I", "code", "", "b", "Ljava/lang/String;", "getMessage", "()Ljava/lang/String;", TJAdUnitConstants.String.MESSAGE, "c", "getDomain", C3510b4.j.D, "d", "Lcom/google/android/gms/ads/AdError;", "getCause", "()Lcom/google/android/gms/ads/AdError;", "cause", "<init>", "(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V", "(ILjava/lang/String;Ljava/lang/String;)V", "Companion", "ads_mobile_sdk/q2", "ads-mobile-sdk_release"}, k = 1, mv = {1, 9, 0})
public final class AdError {
    public static final String GOOGLE_MOBILE_ADS_DOMAIN = "com.google.android.libraries.ads.mobile.sdk";
    public static final String UNDEFINED_DOMAIN = "undefined";

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final int code;

    /* JADX INFO: renamed from: b, reason: from kotlin metadata */
    private final String message;

    /* JADX INFO: renamed from: c, reason: from kotlin metadata */
    private final String domain;

    /* JADX INFO: renamed from: d, reason: from kotlin metadata */
    private final AdError cause;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public AdError(int i, String message, String domain) {
        this(i, message, domain, null);
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(domain, "domain");
    }

    public AdError(int i, String message, String domain, AdError adError) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(domain, "domain");
        this.code = i;
        this.message = message;
        this.domain = domain;
        this.cause = adError;
    }

    public boolean equals(Object other) {
        if (!(other instanceof AdError)) {
            return false;
        }
        AdError adError = (AdError) other;
        return this.code == adError.code && Intrinsics.areEqual(this.message, adError.message) && Intrinsics.areEqual(this.domain, adError.domain) && Intrinsics.areEqual(this.cause, adError.cause);
    }

    public final AdError getCause() {
        return this.cause;
    }

    public final int getCode() {
        return this.code;
    }

    public final String getDomain() {
        return this.domain;
    }

    public final String getMessage() {
        return this.message;
    }
}
