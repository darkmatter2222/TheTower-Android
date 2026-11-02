package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.util.Log;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ｴ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC1071 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static WeakReference f3806;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2433(String str, String str2, String str3, String str4) {
        try {
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            String str5 = str3 + StringFog.decrypt("bg==\n", "VBvMXK+BeVI=\n") + str;
            AbstractC0250.m2001(str, StringFog.decrypt("QxcOkqGAvOZyDVw=\n", "BmV8/dOgy48=\n") + str5 + StringFog.decrypt("N3c4NlYmFd1jdzksHQ==\n", "Fx5WQjNBZ7w=\n"), false);
            AbstractC0250.m2001(str, str2 + (str4 != null ? "\n".concat(str4) : ""), false);
            C1032 c1032 = (C1032) f3806.get();
            if (c1032 != null) {
                c1032.m2422(str, str2, str5, str4, null, false);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2434(String str, String str2, String str3, Throwable th, AbstractC0760 abstractC0760, JSONObject jSONObject, boolean z, boolean z2, boolean z3) {
        String str4;
        String string;
        if (z) {
            try {
                String str5 = str3 + StringFog.decrypt("fQ==\n", "Rws5QbeSg7k=\n") + str;
                AbstractC0250.m1999(str, str, str2 + StringFog.decrypt("ug93jHYOLQ==\n", "micU4xJrDbk=\n") + str5 + StringFog.decrypt("Hw==\n", "NltFaMUygt4=\n"), th, abstractC0760, z3);
                str4 = str5;
            } catch (Throwable unused) {
                return;
            }
        } else {
            str4 = str3;
        }
        C1032 c1032 = (C1032) f3806.get();
        if (c1032 != null) {
            if (abstractC0760 != null) {
                string = abstractC0760.toString();
            } else {
                string = th instanceof AbstractC0760 ? th.toString() : Log.getStackTraceString(th);
            }
            c1032.m2422(str, str2, str4, string, jSONObject, z2);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2435(String str, String str2, Throwable th, boolean z) {
        try {
            m2436(str, str2, th, z, false, false);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2436(String str, String str2, Throwable th, boolean z, boolean z2, boolean z3) {
        try {
            if (z) {
                AbstractC0250.m2001(str, str2, z3);
                if (th != null) {
                    AbstractC0250.m1999(str, str, StringFog.decrypt("T8r23oSzWmk=\n", "C6+Cv+3fKVM=\n"), th, null, z3);
                }
            } else {
                AbstractC0250.m1999(str, str, str2, th, null, z3);
            }
            m2434(str, str2, StringFog.decrypt("xASnlojL4on7TA==\n", "kHbG9e2pg+o=\n") + str, th, null, null, false, z2, z3);
        } catch (Throwable unused) {
        }
    }
}
