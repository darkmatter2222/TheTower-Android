package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Calendar;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﯦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0971 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final /* synthetic */ C0940 f3465;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0122 f3466;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ String f3467;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0771 f3468;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f3469;

    public C0971(C0940 c0940, String str, AbstractC0771 abstractC0771, String str2, InterfaceC0122 interfaceC0122) {
        this.f3465 = c0940;
        this.f3469 = str;
        this.f3468 = abstractC0771;
        this.f3467 = str2;
        this.f3466 = interfaceC0122;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2376(String str) {
        JSONObject jSONObject = new JSONObject(str);
        String strOptString = jSONObject.optString(StringFog.decrypt("3IXF\n", "ueumkwYM14Q=\n"));
        if (TextUtils.isEmpty(strOptString)) {
            return str;
        }
        byte[] bArrM1915 = AbstractC0129.m1915(strOptString, C0940.f3346, jSONObject.optString(StringFog.decrypt("q0U=\n", "wjOcLppNo9U=\n")), jSONObject.optString(StringFog.decrypt("S6hCOQ==\n", "OMkuTYSHYOI=\n")));
        if (bArrM1915 == null) {
            return "";
        }
        try {
            if (bArrM1915.length >= 2 && (bArrM1915[0] & 255) == 31 && (bArrM1915[1] & 255) == 139) {
                bArrM1915 = AbstractC0304.m2041(bArrM1915);
            }
            return new String(bArrM1915, StringFog.decrypt("lLO8eN0=\n", "wef6VeVPYHg=\n"));
        } catch (IOException e) {
            AbstractC1071.m2435(StringFog.decrypt("evfSYcGnDO0=\n", "KJK/DrXCSK8=\n"), StringFog.decrypt("kLgt8Vfjohazpj7qTK2sWLKwNu5Vpq9Ypasm8kqirw==\n", "1cpfniXDy3g=\n"), (Throwable) e, false);
            return "";
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        boolean z;
        int i;
        String str = this.f3469;
        AbstractC0771 abstractC0771 = this.f3468;
        String str2 = this.f3467;
        InterfaceC0122 interfaceC0122 = this.f3466;
        C0835 c0835 = this.f3465.f3349.f3123;
        synchronized (c0835) {
            z = c0835.f3098;
        }
        if (!z) {
            m2377(abstractC0771, interfaceC0122);
            return;
        }
        try {
            C0639 c0639M2356 = AbstractC0958.m2356(str);
            if (c0639M2356 == null || c0639M2356.f2517.f2541 != 200) {
                boolean z2 = c0639M2356 != null && ((i = c0639M2356.f2517.f2541) == 403 || i == 404);
                if (!this.f3465.f3349.f3123.m2288()) {
                    m2377(abstractC0771, interfaceC0122);
                    return;
                }
                if (z2 && str.contains(StringFog.decrypt("tHp/pA==\n", "0RQJiwc/KeM=\n"))) {
                    abstractC0771.f2838 = false;
                    this.f3465.m2308(abstractC0771, interfaceC0122);
                    return;
                } else if (z2 && str.endsWith(StringFog.decrypt("kZT7mXS2wg+eifc=\n", "++eU91rRuCE=\n"))) {
                    abstractC0771.f2837 = false;
                    this.f3465.m2308(abstractC0771, interfaceC0122);
                    return;
                } else {
                    AbstractC1071.m2435(StringFog.decrypt("N1PeNSKKCeE=\n", "ZTazWlbvTaM=\n"), StringFog.decrypt("3cVwJAiC0yT+0HogBIiUYg==\n", "m6QZSG3m80I=\n") + str + StringFog.decrypt("O4CsXr8pyNw3w7BOu30=\n", "F6DfKt5dva8=\n") + (c0639M2356 != null ? c0639M2356.f2517.f2541 : -1), (Throwable) null, false);
                    this.f3465.getClass();
                    AbstractC0340.m2055(new C0948(interfaceC0122, str2, null));
                    return;
                }
            }
            String strM2376 = m2376(c0639M2356.f2518);
            if (!Charset.forName(StringFog.decrypt("GXo0wvIY1/E=\n", "TCkZg6Fbnrg=\n")).newEncoder().canEncode(strM2376)) {
                AbstractC1071.m2435(StringFog.decrypt("WjtlGFy9agg=\n", "CF4IdyjYLko=\n"), StringFog.decrypt("VMOfoDeNL8N0ho+mPJQ1wTDAjr0j3Q==\n", "EKb80k79W6Y=\n") + str + StringFog.decrypt("9suTpTYQ6hyliJWlNBDvG7KIn6MjA/A=\n", "1qj8y0Jxg3I=\n"), (Throwable) null, false);
                this.f3465.getClass();
                AbstractC0340.m2055(new C0948(interfaceC0122, str2, null));
            } else {
                if (TextUtils.isEmpty(strM2376)) {
                    AbstractC1071.m2435(StringFog.decrypt("vNnG+NOj4jM=\n", "7ryrl6fGpnE=\n"), StringFog.decrypt("Ns5KQOPth3EdgRpU6eCKfByBDEf/4cU=\n", "eKFqNZCM5R0=\n") + str, (Throwable) null, false);
                    this.f3465.getClass();
                    AbstractC0340.m2055(new C0948(interfaceC0122, str2, null));
                    return;
                }
                C0841 c0841 = this.f3465.f3350;
                c0841.m2292(str2, strM2376);
                String str3 = str2 + StringFog.decrypt("EvGq2S0W0iNd6a4=\n", "PJ3Lqlljokc=\n");
                String str4 = AbstractC0129.f814;
                c0841.m2292(str3, Long.toString(Calendar.getInstance().getTimeInMillis()));
                this.f3465.getClass();
                AbstractC0340.m2055(new C0948(interfaceC0122, str2, strM2376));
            }
        } catch (Exception e) {
            if (!this.f3465.f3349.f3123.m2288()) {
                m2377(abstractC0771, interfaceC0122);
                return;
            }
            AbstractC1071.m2435(StringFog.decrypt("fhXBSMASTfs=\n", "LHCsJ7R3Cbk=\n"), AbstractC0270.m2002("XTynex5BWFRsOrx6C0FNVHUhoXFMMktDcSCyNAoTUFw4\n", "GE7VFGxhPzE=\n", new StringBuilder(), str), (Throwable) e, false);
            this.f3465.getClass();
            AbstractC0340.m2055(new C0948(interfaceC0122, str2, null));
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2377(AbstractC0771 abstractC0771, InterfaceC0122 interfaceC0122) {
        C0835 c0835 = this.f3465.f3349.f3123;
        C0974 c0974 = new C0974(this, abstractC0771, interfaceC0122);
        synchronized (c0835) {
            c0835.f3097.add(c0974);
        }
    }
}
