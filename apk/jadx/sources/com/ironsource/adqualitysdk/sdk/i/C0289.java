package com.ironsource.adqualitysdk.sdk.i;

import com.google.android.gms.ads.MobileAds;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.У, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0289 extends AbstractC0316 {
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0316
    /* JADX INFO: renamed from: ﻐ */
    public final String mo1851() {
        if (AbstractC0924.m2301(new C0295())) {
            return null;
        }
        return StringFog.decrypt("PuME4M0bkcYx6UevxBCMzjToR6nHB9DAOf9Hg8UWl804zQ29\n", "XYxpzqp0/qE=\n");
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0316
    /* JADX INFO: renamed from: ﻛ */
    public final Class mo1852() {
        if (AbstractC0924.m2301(new C0295())) {
            return null;
        }
        return MobileAds.class;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0316
    /* JADX INFO: renamed from: ｋ */
    public final String mo1854() {
        return StringFog.decrypt("hmNASMQ=\n", "5wctJ6axB3w=\n");
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0316
    /* JADX INFO: renamed from: ﾒ */
    public final AbstractC0276 mo1853() {
        try {
            if (Prode.class.getName().equals("com.ironsource.adqualitysdk.sdk.i.Prode")) {
                Class.forName(StringFog.decrypt("hwfiNvb4+AiIDaF5//PlAI0MoX/85LkOgBuhTvTl5AaLBsZ29/g=\n", "5GiPGJGXl28=\n"));
            }
            return new C0406(StringFog.decrypt("hmNASMQ=\n", "5wctJ6axB3w=\n"));
        } catch (Throwable unused) {
            return new C0370(StringFog.decrypt("hmNASMQ=\n", "5wctJ6axB3w=\n"));
        }
    }
}
