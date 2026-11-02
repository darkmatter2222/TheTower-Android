package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.র, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0460 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static final String f2027 = StringFog.decrypt("LGx5ncmPI2w=\n", "bRwJyL3mTx8=\n");

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final String f2026 = StringFog.decrypt("uLs=\n", "yNUalWj3j5U=\n");

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static final String f2025 = StringFog.decrypt("Nso=\n", "VaxbcZZazu0=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static final String f2024 = StringFog.decrypt("nus=\n", "6IgxntGflX0=\n");

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static final String f2023 = StringFog.decrypt("9iY=\n", "gEgBZS1PNFc=\n");

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f2022 = StringFog.decrypt("q18=\n", "zzF2yfaobn4=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f2021 = StringFog.decrypt("1w==\n", "ohRwCaMh2bI=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f2020 = StringFog.decrypt("FQ==\n", "dNKsEWlMln0=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f2019 = StringFog.decrypt("sA==\n", "3opIE1JaI24=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m2108(Context context) {
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            return packageManager.getPackageInfo(packageName, 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            AbstractC0250.m1991(f2027, AbstractC0662.m2192("rDltcOu1ELvPMX1or6tWrIQ3f3mvtlahjjF9bq+9WL3P\n", "71YYHI/bN88=\n", new StringBuilder(), packageName).append(StringFog.decrypt("grEqTNZY+jKYvA==\n", "opwKKaQqlUA=\n")).append(e.getLocalizedMessage()).toString());
            return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2109(Context context, JSONObject jSONObject) {
        String packageName = context.getPackageName();
        try {
            jSONObject.put(f2026, packageName);
        } catch (JSONException e) {
            String str = f2027;
            AbstractC0250.m1999(str, str, StringFog.decrypt("lr/KyN7m+LP1sdvAmuqqqbG82u3eqLaps7+f0NWotbS6vg==\n", "1dC/pLqI38c=\n"), e, null, false);
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            jSONObject.put(f2025, packageManager.getInstallerPackageName(packageName));
        } catch (JSONException e2) {
            AbstractC0250.m1991(f2027, StringFog.decrypt("NK8G96kJFbJXoRf/7Q5ctQOhH/eoFRK2FqMY+qoCEqgWrRa7uQgSrASvHbXtAkC0GLJJuw==\n", "d8Bzm81nMsY=\n") + e2.getLocalizedMessage());
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            jSONObject.put(f2024, Integer.toString(packageInfo.versionCode));
            jSONObject.put(f2023, packageInfo.versionName);
        } catch (PackageManager.NameNotFoundException e3) {
            AbstractC0250.m1991(f2027, AbstractC0662.m2192("G+n3XSXPuft44edFYdH/7DPn5VRhzP/hOeHnQ2HH8f14\n", "WIaCMUGhno8=\n", new StringBuilder(), packageName).append(StringFog.decrypt("RgZD2ypDfHJcCw==\n", "ZitjvlgxEwA=\n")).append(e3.getLocalizedMessage()).toString());
        } catch (JSONException e4) {
            AbstractC0250.m1991(f2027, StringFog.decrypt("D8kST53gZfVsxwNH2e8y8WzQAlGK5y3vbM8JRZauNu5szBRMl6Bi5D7UCFHDrg==\n", "TKZnI/mOQoE=\n") + e4.getLocalizedMessage());
        }
        try {
            jSONObject.put(f2022, packageManager.getApplicationLabel(packageManager.getApplicationInfo(packageName, 0)).toString());
        } catch (PackageManager.NameNotFoundException e5) {
            AbstractC0250.m1991(f2027, AbstractC0662.m2192("uPS6tkByZpTb/KquBGwgg5D6qL8EcSCOmvyqqAR6LpLb\n", "+5vP2iQcQeA=\n", new StringBuilder(), packageName).append(StringFog.decrypt("IWcz46YUU0g7ag==\n", "AUoThtRmPDo=\n")).append(e5.getLocalizedMessage()).toString());
        } catch (JSONException e6) {
            AbstractC0250.m1991(f2027, StringFog.decrypt("tyhKt0AeLYXUJlu/BBF6gdQpXrZBUGOfkigfr0tQYIKbKRH7QQJ4noZ9Hw==\n", "9Ec/2yRwCvE=\n") + e6.getLocalizedMessage());
        }
    }
}
