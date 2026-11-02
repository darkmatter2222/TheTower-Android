package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.VersionInfo;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ڑ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0406 extends C0370 {

    /* JADX INFO: renamed from: ﺟ, reason: contains not printable characters */
    public static final String f1931 = StringFog.decrypt("OCTd7CRJ3CYAJ8A=\n", "bkGvn00msm8=\n");

    public C0406(String str) {
        super(str);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0370, com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﻛ */
    public final String mo1847() {
        return MobileAds.getVersion().toString();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0370, com.ironsource.adqualitysdk.sdk.i.AbstractC0276
    /* JADX INFO: renamed from: ﾒ */
    public final Class mo1849(String str) {
        return (str.hashCode() == -1938329210 && str.equals(f1931)) ? VersionInfo.class : super.mo1849(str);
    }
}
