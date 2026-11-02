package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﭔ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0940 {

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f3346;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final ArrayList f3347 = new ArrayList();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final String f3348;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final C0853 f3349;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final C0841 f3350;

    static {
        StringFog.decrypt("WWBEJ86pFGw=\n", "CwUpSLrMUC4=\n");
        StringFog.decrypt("doJDwKjD6v5p3knV48Xps3CVT8y5xO//\n", "AvAio82hi50=\n");
        StringFog.decrypt("Am0oj7q563AUYTWHovXyZxM=\n", "cQJH4tbYxgM=\n");
        f3346 = StringFog.decrypt("+Xm35udf8M+xBpaywF2uiJ8sz7zuGeTSvjuB+/9a59LwGYq7/Vqz2eg3jOPuCbLPqTfN7ugepdWJ\nMJHF/yOy67I7lO+gRg==\n", "3Un4i4tr17w=\n");
    }

    public C0940(Context context, C0853 c0853, String str) {
        this.f3350 = new C0841(context, StringFog.decrypt("+nYldWBAVyflKi9gK0ZUavxhKXlxR1Im\n", "jgREFgUiNkQ=\n"), StringFog.decrypt("7PMttIbBDPf6/zC8no0V4P0=\n", "n5xC2eqgIYQ=\n"));
        this.f3349 = c0853;
        this.f3348 = str;
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        C0981 c0981 = new C0981(this);
        C0961 c0961 = (C0961) abstractC0953M2334;
        Handler handler = c0961.f3422;
        if (handler != null) {
            handler.post(new C0970(c0961, c0981));
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static AbstractC0771 m2305(AbstractC0771 abstractC0771) {
        JSONObject jSONObject;
        if (abstractC0771 instanceof C0863) {
            AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
            C0961 c0961 = (C0961) abstractC0953M2334;
            synchronized (c0961) {
                jSONObject = c0961.f2613;
            }
            if (jSONObject.has(StringFog.decrypt("gMxq\n", "46scbCEZHkI=\n"))) {
                String strMo2353 = abstractC0953M2334.mo2353();
                if (!strMo2353.equals(abstractC0771.f2840)) {
                    abstractC0771 = ((C0863) abstractC0771).mo2294(strMo2353);
                }
            }
        }
        m2306(abstractC0771);
        return abstractC0771;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002d  */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2306(AbstractC0771 abstractC0771) {
        String strDecrypt;
        JSONObject jSONObject;
        if (abstractC0771 instanceof C0863) {
            if (abstractC0771.f2837) {
                C0961 c0961 = (C0961) AbstractC0953.m2334();
                synchronized (c0961) {
                    jSONObject = c0961.f2613;
                }
                if (jSONObject.optBoolean(StringFog.decrypt("FT7g\n", "ckSDo0Z7orE=\n"))) {
                    strDecrypt = StringFog.decrypt("iwmGXo3UOEKEFIo=\n", "4XrpMKOzQmw=\n");
                } else {
                    strDecrypt = StringFog.decrypt("+dogH3oKYL0=\n", "k6lPcVRvDt4=\n");
                }
            } else {
                strDecrypt = StringFog.decrypt("+dogH3oKYL0=\n", "k6lPcVRvDt4=\n");
            }
            abstractC0771.f2839 = strDecrypt;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final void m2307(AbstractC0771 abstractC0771, InterfaceC0122 interfaceC0122) {
        String str;
        AbstractC0771 abstractC0771M2305 = m2305(abstractC0771);
        String strMo2268 = abstractC0771M2305.mo2268();
        StringBuilder sb = new StringBuilder();
        synchronized (this) {
            str = this.f3348;
        }
        String strM2002 = AbstractC0270.m2002("NQ==\n", "GmqP9jFVV2M=\n", sb.append(str), strMo2268);
        String strReplace = abstractC0771M2305.mo2268().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"));
        if (AbstractC0953.m2334().mo2340() && (AbstractC0953.m2334().mo2338() || this.f3350.m2291(strReplace) == null)) {
            C0971 c0971 = new C0971(this, strM2002, abstractC0771, strReplace, interfaceC0122);
            String str2 = AbstractC0129.f814;
            try {
                Executors.newSingleThreadExecutor().execute(c0971);
            } catch (Throwable th) {
                AbstractC1071.m2435(AbstractC0129.f814, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
            }
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final String m2308(AbstractC0771 abstractC0771, InterfaceC0122 interfaceC0122) {
        boolean z;
        if (TextUtils.isEmpty(abstractC0771.f2842) || TextUtils.isEmpty(abstractC0771.f2840)) {
            return null;
        }
        String strReplace = m2305(abstractC0771).mo2268().replace(StringFog.decrypt("yw==\n", "5Nfc4POVeY0=\n"), StringFog.decrypt("GQ==\n", "N9KS+cTCU2o=\n"));
        synchronized (this) {
            if (AbstractC0953.m2334().mo2346()) {
                z = true;
            } else {
                this.f3347.add(new C0975(this, abstractC0771, interfaceC0122));
                z = false;
            }
        }
        if (z) {
            m2307(abstractC0771, interfaceC0122);
        }
        return this.f3350.m2291(strReplace);
    }
}
