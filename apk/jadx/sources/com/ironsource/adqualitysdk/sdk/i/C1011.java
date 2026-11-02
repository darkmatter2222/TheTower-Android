package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﺣ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1011 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ C0999 f3574;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0800 f3575;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ C1068 f3576;

    public C1011(C0999 c0999, C1068 c1068, C0800 c0800) {
        this.f3574 = c0999;
        this.f3576 = c1068;
        this.f3575 = c0800;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        C0800 c0800;
        int iM2049;
        try {
            C0999 c0999 = this.f3574;
            C0841 c0841 = c0999.f3525;
            String str = c0999.f3526 + StringFog.decrypt("aA==\n", "QmgdKOIIkTc=\n");
            C0389 c0389 = c0841.f3107;
            c0389.getClass();
            try {
                iM2049 = c0389.f1887.m2049(str);
            } catch (Throwable unused) {
                iM2049 = 0;
            }
            this.f3574.getClass();
            if (iM2049 <= 10000) {
                C0999 c09910 = this.f3574;
                C1068 c1068 = this.f3576;
                c09910.getClass();
                String str2 = c09910.f3526 + c1068.f3802;
                if (TextUtils.isEmpty(str2)) {
                    AbstractC0250.m1999(C0999.m2390(this.f3574), StringFog.decrypt("QimakMCruzRzKZ6d\n", "AUj5+KX4z1s=\n"), StringFog.decrypt("SfD2dM7srC1/+fsmzsa+Yzrsv2CL8f9+afftZong/2Z44b9hgff/Yn/y+mSa\n", "HZifB+6F3w0=\n"), null, null, true);
                    if (c0800 != null) {
                        return;
                    } else {
                        return;
                    }
                } else {
                    try {
                        String string = this.f3576.m2432().toString();
                        AbstractC0250.m1998(C0999.m2390(this.f3574), StringFog.decrypt("RZwgQ3lYoo90nCRO\n", "Bv1DKxwL1uA=\n"), StringFog.decrypt("ABHDPRccSz4sEsowHQYW\n", "Q3CgVX5yLB4=\n"), string, true);
                        this.f3574.f3525.m2292(str2, string);
                    } catch (JSONException unused2) {
                        if (c0800 != null) {
                            return;
                        } else {
                            return;
                        }
                    }
                }
            }
        } finally {
            c0800 = this.f3575;
            if (c0800 != null) {
                AbstractC0340.m2054(c0800);
            }
        }
    }
}
