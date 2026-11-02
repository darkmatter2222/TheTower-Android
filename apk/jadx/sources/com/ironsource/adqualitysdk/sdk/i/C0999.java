package com.ironsource.adqualitysdk.sdk.i;

import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺏ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0999 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0841 f3525;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final String f3526;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String f3527;

    static {
        StringFog.decrypt("KM5k45zuLG0ZzmDu\n", "a68Hi/m9WAI=\n");
    }

    public C0999(C0841 c0841, String str, String str2) {
        this.f3526 = str2;
        this.f3527 = str;
        this.f3525 = c0841;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2390(C0999 c0999) {
        c0999.getClass();
        return AbstractC0897.m2299("Ww==\n", "cuM6BpNycuI=\n", new StringBuilder().append(StringFog.decrypt("0DDtTcUdmpzhMOlAgGY=\n", "k1GOJaBO7vM=\n")).append(c0999.f3527));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2391(C1068 c1068, C0800 c0800) {
        synchronized (this) {
        }
        C0841.m2289().post(new C1011(this, c1068, c0800));
    }
}
