package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.TrafficStats;
import android.net.wifi.SupplicantState;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ƒ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0145 {

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public static volatile long f822;

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public static volatile JSONObject f823;

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public static JSONObject f824;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f851 = StringFog.decrypt("xF2/FnINZUTpVLo=\n", "gDjJfxFoMDA=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f850 = StringFog.decrypt("HxQOSw==\n", "cWN9O/1vjqo=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f849 = StringFog.decrypt("lggT4A==\n", "+H9hmKavvh8=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f848 = StringFog.decrypt("oBY5Og==\n", "zXtYTB8UB68=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f847 = StringFog.decrypt("UV5Juw==\n", "PDM902kAcD0=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f846 = StringFog.decrypt("RuQ1Hw==\n", "K4lZaNQGNKo=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f845 = StringFog.decrypt("HX8uZA==\n", "cBJaEIsw0WM=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f844 = StringFog.decrypt("fw==\n", "CHqULkGNk8Y=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f843 = StringFog.decrypt("wg==\n", "qvmGoNAElzY=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f842 = StringFog.decrypt("j/bUTw==\n", "/J+uKjdK1PY=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f841 = StringFog.decrypt("tbbSMg==\n", "wtChRowijio=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f840 = StringFog.decrypt("Qak1aw==\n", "Ns9HGOOs/aw=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f839 = StringFog.decrypt("xkE5QA==\n", "sSdKMM3RJhc=\n");

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static final String f838 = StringFog.decrypt("Lx9nbQ==\n", "WHkTHtGvKSI=\n");

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static final String f837 = StringFog.decrypt("P0vd1g==\n", "UimuorsNVUM=\n");

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public static final String f836 = StringFog.decrypt("9VhyG/Q=\n", "mDoGa51RhSw=\n");

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public static final String f835 = StringFog.decrypt("QNsdQQ==\n", "LblpMR6rsMs=\n");

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public static final String f834 = StringFog.decrypt("3smiWRQ=\n", "s6vRKX1ZxC4=\n");

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public static final String f833 = StringFog.decrypt("oj1DnA==\n", "z18w7NJ1UbA=\n");

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f832 = StringFog.decrypt("+cpvIg==\n", "lKgBTWBf+PI=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f831 = StringFog.decrypt("MRF1xQ==\n", "XHMaq6ezBQI=\n");

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static final String f830 = StringFog.decrypt("DTEj8g==\n", "YFNAkXGql8A=\n");

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public static final String f829 = StringFog.decrypt("rWAGnA==\n", "wAJ185P1jIc=\n");

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public static final String f828 = StringFog.decrypt("mYmdOg==\n", "9OvuVOi+8GM=\n");

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public static final String f827 = StringFog.decrypt("R9uMUw==\n", "Ja/8P0Zmr9w=\n");

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public static final String f826 = StringFog.decrypt("vBnU5g==\n", "3m24kNlpgew=\n");

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public static JSONObject f825 = null;

    /* JADX WARN: Code duplicated, block: B:18:0x0044 A[Catch: all -> 0x0058, TryCatch #1 {all -> 0x0058, blocks: (B:5:0x0005, B:7:0x0015, B:17:0x0034, B:18:0x0044, B:20:0x004a, B:22:0x0050, B:10:0x001b, B:12:0x0025), top: B:35:0x0005, inners: #0 }] */
    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static synchronized void m1922(Context context) {
        Resources resources;
        DisplayMetrics displayMetrics;
        if (context != null) {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService(StringFog.decrypt("Wdik1QIz\n", "LrHKsW1EIM4=\n"));
                if (windowManager == null || Build.VERSION.SDK_INT < 30) {
                    resources = context.getResources();
                    if (resources != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                        m1927(displayMetrics.heightPixels, displayMetrics.widthPixels);
                    }
                } else {
                    try {
                        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
                        if (bounds != null) {
                            m1927(bounds.height(), bounds.width());
                            return;
                        } else {
                            resources = context.getResources();
                            if (resources != null) {
                                m1927(displayMetrics.heightPixels, displayMetrics.widthPixels);
                            }
                        }
                    } catch (Throwable th) {
                        String str = f851;
                        AbstractC0250.m1999(str, str, StringFog.decrypt("KGBoavwRfxdNdX9x+lh4Hk1lc2vqXmE0CGZobO1CNh8ffXcl+Vh4HQJlV2TgVnML\n", "bRIaBY4xFnk=\n"), th, null, false);
                    }
                    String str2 = f851;
                    AbstractC0250.m1999(str2, str2, StringFog.decrypt("7h/Y2jPFsZGLCs/BNYy2mIspw8YxibmG5gjexyiGq9/NH8XYYYa3kd8I0sE=\n", "q22qtUHl2P8=\n"), th, null, false);
                }
            } catch (Throwable th2) {
                String str3 = f851;
                AbstractC0250.m1999(str3, str3, StringFog.decrypt("7h/Y2jPFsZGLCs/BNYy2mIspw8YxibmG5gjexyiGq9/NH8XYYYa3kd8I0sE=\n", "q22qtUHl2P8=\n"), th2, null, false);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002a  */
    /* JADX WARN: Code duplicated, block: B:16:0x004c  */
    /* JADX WARN: Code duplicated, block: B:18:0x005d  */
    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static JSONObject m1923(Context context) throws JSONException {
        WifiInfo connectionInfo;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        if (f823 == null) {
            connectionInfo = ((WifiManager) context.getSystemService(StringFog.decrypt("wFVmpg==\n", "tzwAz0pAtGk=\n"))).getConnectionInfo();
            jSONObject = new JSONObject();
            jSONObject.put(f838, System.currentTimeMillis());
            if (connectionInfo != null) {
                jSONObject.put(f841, connectionInfo.getSupplicantState());
                if (connectionInfo.getSupplicantState() == SupplicantState.COMPLETED) {
                    jSONObject.put(f840, connectionInfo.getRssi());
                    jSONObject.put(f839, connectionInfo.getLinkSpeed());
                }
            }
            f823 = jSONObject;
            f822 = SystemClock.elapsedRealtime();
        } else {
            C0961 c0961 = (C0961) AbstractC0953.m2334();
            synchronized (c0961) {
                jSONObject2 = c0961.f2613;
            }
            if (SystemClock.elapsedRealtime() - f822 >= (jSONObject2 == null ? 0 : Math.max(0, jSONObject2.optInt(c0961.f3437, 0)))) {
                connectionInfo = ((WifiManager) context.getSystemService(StringFog.decrypt("wFVmpg==\n", "tzwAz0pAtGk=\n"))).getConnectionInfo();
                jSONObject = new JSONObject();
                jSONObject.put(f838, System.currentTimeMillis());
                if (connectionInfo != null) {
                    jSONObject.put(f841, connectionInfo.getSupplicantState());
                    if (connectionInfo.getSupplicantState() == SupplicantState.COMPLETED) {
                        jSONObject.put(f840, connectionInfo.getRssi());
                        jSONObject.put(f839, connectionInfo.getLinkSpeed());
                    }
                }
                f823 = jSONObject;
                f822 = SystemClock.elapsedRealtime();
            }
        }
        return AbstractC1030.m2416(f823, false);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1924(JSONObject jSONObject) {
        try {
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jCurrentTimeMillis2 = System.currentTimeMillis();
            if (totalRxBytes != -1) {
                long totalRxBytes2 = TrafficStats.getTotalRxBytes();
                jSONObject.put(f850, Math.round((1000.0f / (jCurrentTimeMillis2 - jCurrentTimeMillis)) * (totalRxBytes2 - totalRxBytes)));
                jSONObject.put(f849, totalRxBytes2);
            }
        } catch (Throwable th) {
            String str = f851;
            AbstractC0250.m1999(str, str, StringFog.decrypt("6aOEhmQwlfvYpZ+HcTCR7tnxl4dyMJz72KaZm30wh+3NtpM=\n", "rNH26RYQ8p4=\n"), th, null, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int m1925(Context context) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(StringFog.decrypt("hG8i00tt3NU=\n", "5QxWuj0EqKw=\n"));
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            return (int) (memoryInfo.availMem / 1048576);
        } catch (Throwable th) {
            AbstractC0250.m1990(f851, StringFog.decrypt("sqr2scPoSVSDrO2w1uhPR5ax6L/TpEsRmr3pscOxFBE=\n", "99iE3rHILjE=\n") + th.getLocalizedMessage());
            return 0;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized JSONObject m1926() {
        if (f825 == null) {
            JSONObject jSONObject = new JSONObject();
            f825 = jSONObject;
            try {
                jSONObject.put(f844, -1);
                f825.put(f843, -1);
            } catch (JSONException unused) {
            }
        }
        return f825;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1927(int i, int i2) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        try {
            JSONObject jSONObjectM1926 = m1926();
            jSONObjectM1926.put(f844, i2);
            jSONObjectM1926.put(f843, i);
        } catch (Throwable th) {
            String str = f851;
            AbstractC0250.m1999(str, str, StringFog.decrypt("M4tKS+3CSr8CjVFK+MJKuQScXUq/kVCgEw==\n", "dvk4JJ/iOdo=\n"), th, null, false);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static synchronized void m1928(Activity activity) {
        if (activity != null) {
            m1922(activity.getApplicationContext());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1929(Context context, JSONObject jSONObject) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(StringFog.decrypt("hG8i00tt3NU=\n", "5QxWuj0EqKw=\n"));
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            jSONObject.put(f848, memoryInfo.availMem / 1048576);
            jSONObject.put(f847, memoryInfo.threshold / 1048576);
            boolean z = memoryInfo.lowMemory;
            if (z) {
                jSONObject.put(f846, z);
            }
            jSONObject.put(f845, memoryInfo.totalMem / 1048576);
        } catch (Throwable th) {
            AbstractC0250.m1990(f851, StringFog.decrypt("sh/sahuIKsSDGfdrDoggxJoC7HxJ3T7AkAikJQ==\n", "922eBWmoTaE=\n") + th.getLocalizedMessage());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1930(JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (AbstractC0145.class) {
            jSONObject2 = f824;
        }
        AbstractC1030.m2418(jSONObject, AbstractC1030.m2416(jSONObject2, false), false);
    }
}
