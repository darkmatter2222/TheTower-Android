package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.nt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2922nt {
    public final AdErrorType A00;
    public final String A01;

    public C2922nt(int i, String str) {
        this(AdErrorType.adErrorTypeFromCode(i), str);
    }

    public C2922nt(AdErrorType adErrorType, String str) {
        str = TextUtils.isEmpty(str) ? adErrorType.getDefaultErrorMessage() : str;
        this.A00 = adErrorType;
        this.A01 = str;
    }

    public static C2922nt A00(AdErrorType adErrorType) {
        return new C2922nt(adErrorType, (String) null);
    }

    public static C2922nt A01(AdErrorType adErrorType, String str) {
        return new C2922nt(adErrorType, str);
    }

    public static C2922nt A02(C2923nu c2923nu) {
        return new C2922nt(c2923nu.A00(), c2923nu.A01());
    }

    public final AdErrorType A03() {
        return this.A00;
    }

    public final String A04() {
        return this.A01;
    }
}
