package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻪ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1036 implements InterfaceC0455 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0961 f3667;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ r f3668;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Context f3669;

    public C1036(C0961 c0961, Context context, r rVar) {
        this.f3667 = c0961;
        this.f3669 = context;
        this.f3668 = rVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2424(int i) {
        synchronized (this.f3667) {
            if (this.f3667.f3422 != null) {
                AbstractC0340.m2058(new C1066(this), i);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0455
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2104(C0639 c0639) {
        JSONObject jSONObject;
        try {
            C0661 c0661 = c0639.f2517;
            int i = c0661.f2541;
            String str = c0661.f2540;
            if (i >= 200 && i <= 299) {
                JSONObject jSONObject2 = !TextUtils.isEmpty(c0639.f2518) ? new JSONObject(c0639.f2518) : new JSONObject();
                if (jSONObject2.optBoolean(StringFog.decrypt("o9Sq\n", "0LDG6tmY+gM=\n"))) {
                    C0272.m2008().m2016();
                }
                String strDecrypt = StringFog.decrypt("+R/5QWo0ZtXFHP1J\n", "q3qULh5RJbo=\n");
                AbstractC0250.m1998(strDecrypt, strDecrypt, StringFog.decrypt("iT7h6+zUuKWvJ+7xqdWuoL8i9O3th6istC3r77M=\n", "2kuCiImny8M=\n"), jSONObject2, true);
                JSONObject jSONObjectM2416 = AbstractC1030.m2416(jSONObject2, false);
                C0961 c0961 = this.f3667;
                long jOptLong = jSONObjectM2416.optLong(StringFog.decrypt("xMejtw==\n", "qKTXxAnjKaU=\n"), 0L);
                if (!c0961.f3408) {
                    C0841 c0841 = c0961.f3424;
                    c0841.getClass();
                    C0841.m2289().post(new C0870(c0841, C0961.f3401, "" + jOptLong));
                    c0961.f3408 = true;
                }
                jSONObjectM2416.remove(StringFog.decrypt("GLOL\n", "a8f4euHsfKM=\n"));
                C0841 c0842 = this.f3667.f3424;
                String strDecrypt2 = StringFog.decrypt("XxYnPsg+FspOFCs4yw==\n", "LXVIUK5XceQ=\n");
                String string = jSONObjectM2416.toString();
                c0842.getClass();
                C0841.m2289().post(new C0866(c0842, strDecrypt2, string));
                String strDecrypt3 = StringFog.decrypt("Tb0=\n", "Oc5HoheupaU=\n");
                String str2 = AbstractC0129.f814;
                jSONObject2.put(strDecrypt3, Calendar.getInstance().getTimeInMillis());
                jSONObject2.put(StringFog.decrypt("t0k=\n", "wj31RAynJkY=\n"), SystemClock.elapsedRealtime());
                jSONObject2.put(StringFog.decrypt("tM0H9Q==\n", "2aBmgyMfGH8=\n"), AbstractC0145.m1925(this.f3669));
                C0961 c0962 = this.f3667;
                long j = c0639.f2516;
                c0962.getClass();
                if (jSONObject2.has(StringFog.decrypt("odjh\n", "0qyS5hhRKhQ=\n"))) {
                    try {
                        jSONObject2.put(StringFog.decrypt("8u59\n", "gZoOLpfP3ns=\n"), jSONObject2.optLong(StringFog.decrypt("HaWc\n", "btHvgI5rRLE=\n")) + (j / 2));
                    } catch (JSONException unused) {
                    }
                }
                this.f3667.mo2224(jSONObject2);
                this.f3667.m2371();
                this.f3667.m2367();
                C0961 c0963 = this.f3667;
                synchronized (c0963) {
                    jSONObject = c0963.f2613;
                }
                m2424(jSONObject.optInt(StringFog.decrypt("dY/b\n", "Fu6v9X1hrR4=\n"), c0963.f3429));
                if (this.f3667.m2368()) {
                    C0961 c0964 = this.f3667;
                    if (c0964.f3412 == c0964.m2370()) {
                        AbstractC1071.m2435(StringFog.decrypt("aqVbA23LklBWpl8L\n", "OMA2bBmu0T8=\n"), StringFog.decrypt("w8YyqtztDDrxyiy53b9YM7DGLr/L5lwov8clv8vmXCi8gymy0OtFPfzKOrndv1s15MtgrNX+RTKw\nyi61zb9eOeHWJa/N\n", "kKNA3LmfLFw=\n"), (Throwable) null, true);
                        return;
                    }
                    return;
                }
                return;
            }
            mo2105(c0639, str);
        } catch (Exception e) {
            try {
                AbstractC1071.m2436(StringFog.decrypt("2j6UVTmdXo7mPZBd\n", "iFv5Ok34HeE=\n"), StringFog.decrypt("e/V/qfXXrVFM9GSo4NevVVPoeaOnlLJeWO5q5u2Esl4=\n", "PocNxof33TA=\n"), e, false, true, false);
            } catch (Throwable unused2) {
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0455
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2105(C0639 c0639, String str) {
        JSONObject jSONObject;
        int i = c0639 != null ? c0639.f2517.f2541 : -1;
        AbstractC0250.m1992(StringFog.decrypt("Ngj3nkY9Q+wKC/OW\n", "ZG2a8TJYAIM=\n"), StringFog.decrypt("E7Zww3M0UvcisGvCZjRW/Tiia8shckf9O+RxyXNiUOBs5A==\n", "VsQCrAEUNZI=\n") + i);
        if (i != 403) {
            C0961 c0961 = this.f3667;
            int i2 = c0961.f3412;
            c0961.f3412 = i2 + 1;
            if (i2 < c0961.m2370()) {
                C0961 c0962 = this.f3667;
                synchronized (c0962) {
                    jSONObject = c0962.f2613;
                }
                m2424(jSONObject.optInt(StringFog.decrypt("D9YX\n", "bKRjadZuJfU=\n"), c0962.f3430));
            }
        }
    }
}
