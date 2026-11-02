package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.content.Context;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᔫ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0637 extends AbstractC0993 {
    static {
        StringFog.decrypt("zkCqZTJwAQf4U6FvDA==\n", "vSXEAXgDbmk=\n");
        StringFog.decrypt("f8EzpIcOVNhb3SeAnw9f3g==\n", "HqVX4fFrOqw=\n");
        StringFog.decrypt("z0gsX23WQN3LWTdu\n", "qC1YHAK4Lrg=\n");
        StringFog.decrypt("UJMkW0/5TwNPgg==\n", "N/ZQGCCXO2Y=\n");
        StringFog.decrypt("DWSEctZ2zg==\n", "agHwJr8bq5M=\n");
        StringFog.decrypt("6oxjIT/68lHinHQF\n", "jekXbV6JhgU=\n");
        StringFog.decrypt("Y3NTPZvqUpxrY0QZrvBLrQ==\n", "BBYncfqZJsg=\n");
        StringFog.decrypt("1qmhqfNmyPbfuJSJ8n3M+sW1\n", "sczV6oYUupM=\n");
        StringFog.decrypt("yawhzlTIAdzPvzDGVsgLwMyx\n", "qt5EryCtQq4=\n");
        StringFog.decrypt("0erD29w/1gfE/dTOwSnyEfv2wNU=\n", "spimuqhal2M=\n");
        StringFog.decrypt("gvySDFM1w5CE74MEUTXJhpI=\n", "4Y73bSdQgOI=\n");
        StringFog.decrypt("nBHSeDj9No2bCtZtJfcVrJ4X1g==\n", "/2O3GUyYe+g=\n");
        StringFog.decrypt("Hr+VzrH5kigLqYjyuw==\n", "edrhndWSxE0=\n");
        StringFog.decrypt("2DVPWpzM5KTbO215m9PhmNE=\n", "v1A7HOmgiPc=\n");
        StringFog.decrypt("IeOeJaDeemkn1Y4dmdRldi/phA==\n", "Robqds+xFwU=\n");
        StringFog.decrypt("J71SSzfP7p8xiktPPdg=\n", "Rc89KlOsj+w=\n");
        StringFog.decrypt("sX+S0b330aWEf4v/rvf8vrh8j/c=\n", "1hrmkNqSv9E=\n");
        StringFog.decrypt("1yXHb5t3UkDSNtdim1dgQNoj6H2AfA==\n", "tFeiDu8SFiU=\n");
        StringFog.decrypt("Hg3lMg4/KWkaHP4DNzQ1fxAH/w==\n", "eWiRcWFRRww=\n");
        StringFog.decrypt("Q4AyZbVw/vI=\n", "L+9VIMMVkIY=\n");
        StringFog.decrypt("enhth+kQrV52eEqu7T2m\n", "Ews+44JZwwo=\n");
        StringFog.decrypt("oGUiZlb6p1KiRDNUUdy3UrNpOUk=\n", "xwBWJzKu3iI=\n");
        StringFog.decrypt("wWrn8HpCaWvIe9DcYV5+bdJg4f1uXX4=\n", "pg+Tsw8wGw4=\n");
        StringFog.decrypt("psjih5Pqckav2dqtlexlTaTf2KWL/Q==\n", "wa2WxOaYACM=\n");
        StringFog.decrypt("R8jSUS9JQTpo1ONdJHxNM0r+/18jQ005\n", "LruRPkEvKF0=\n");
        StringFog.decrypt("hP2m7L+hhImE1r3mvb+nmJfqs+qmqoyUs/2gzLWhlg==\n", "45jSr9DP4uA=\n");
        StringFog.decrypt("yqqJr4C0SE/EopiEjIdCU8ummg==\n", "rc/96vjELT0=\n");
        StringFog.decrypt("Es5zEki2cwUcxmI5RJNlEgf/aDxVqA==\n", "dasHVzDGFnc=\n");
        StringFog.decrypt("Juf+O5cieKYo7+8QmwZvtSj2+Q==\n", "QYKKfu9SHdQ=\n");
        StringFog.decrypt("Ajqs8SUGNFAMMr3aKSIjQwwr\n", "ZV/YtF12USI=\n");
        StringFog.decrypt("iC464y4g0V6AJRrfIDbM\n", "70tOsEtTojc=\n");
        StringFog.decrypt("CPYhMyWAn8kO5zQ=\n", "b5NVfkD0/o0=\n");
        StringFog.decrypt("q+yKYKmv2oWmzLx2ubPHjg==\n", "wp/ZBcraqOA=\n");
    }

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public static boolean m2166() {
        if (!AbstractC0953.m2334().mo2341()) {
            return true;
        }
        C0685 c0685 = C0685.f2608;
        if (c0685.f2610 || c0685.f2611 == null) {
            return false;
        }
        try {
            C0693 c0693 = c0685.f2611;
            C0227 c0227 = C0765.f2827.f2830;
            C0693 c0693M1976 = c0227 == null ? null : c0227.m1976();
            boolean zEquals = (c0693 == null || c0693M1976 == null) ? false : c0693M1976.m2250().equals(c0693.m2250());
            if (!zEquals) {
                c0685.f2610 = true;
            }
            return zEquals;
        } catch (Exception e) {
            String str = C0685.f2609;
            AbstractC0250.m1999(str, str, StringFog.decrypt("M81095LQ9U4Xy376iNvyWBnWea6YleVVG8d7+ofU71EbwA==\n", "fqQQ2uG1hj0=\n"), e, null, false);
            c0685.f2610 = true;
            return false;
        }
    }

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public static boolean m2167() {
        return ((C0961) AbstractC0953.m2334()).f3411;
    }

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static long m2168() {
        String str = AbstractC0129.f814;
        return Calendar.getInstance().getTimeInMillis();
    }

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static String m2169() {
        return IronSourceAdQuality.getSDKVersion();
    }

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static String m2170() {
        JSONObject jSONObject;
        r rVar;
        C0961 c0961 = (C0961) AbstractC0953.m2334();
        synchronized (c0961) {
            jSONObject = c0961.f2613;
        }
        if (!jSONObject.optBoolean(c0961.f3434) || (rVar = c0961.f3406) == null) {
            return null;
        }
        return rVar.f370;
    }

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static long m2171() {
        C0231 c0231;
        C0820 c0820M2278 = C0820.m2278();
        synchronized (c0820M2278) {
            c0231 = c0820M2278.f3071;
        }
        return c0231.f1164;
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static JSONObject m2172() {
        C0231 c0231;
        C0820 c0820M2278 = C0820.m2278();
        synchronized (c0820M2278) {
            c0231 = c0820M2278.f3071;
        }
        return AbstractC1030.m2415(c0231.f1166, c0231.f1165, c0231.f1164, c0231.f1163);
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static JSONObject m2173() {
        JSONObject jSONObject;
        C1097 c1097 = ((C0961) AbstractC0953.m2334()).f3418;
        synchronized (c1097) {
            jSONObject = c1097.f2613;
        }
        return jSONObject;
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static Activity m2174() {
        return AbstractC1081.m2437().mo1895();
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static double m2175() {
        JSONObject jSONObject;
        C0961 c0961 = (C0961) AbstractC0953.m2334();
        synchronized (c0961) {
            jSONObject = c0961.f2613;
        }
        return jSONObject.optDouble(c0961.f3446, 1.0d);
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static String m2176(C0116 c0116) {
        return c0116.f648.f3542.m2028();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static String m2177(C0116 c0116) {
        return c0116.f648.f3542.mo1850();
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public static JSONObject m2178() {
        JSONObject jSONObject;
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        synchronized (abstractC0953M2334) {
            jSONObject = abstractC0953M2334.f2613;
        }
        return AbstractC1030.m2416(jSONObject, false);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static C1017 m2179() {
        return new C1017();
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static String m2180(C0116 c0116) {
        return c0116.f648.f3545.f2382;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static Context m2181(C0116 c0116) {
        return c0116.f648.f3541;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static C0271 m2182() {
        return new C0271();
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m2183(ArrayList arrayList) {
        String strDecrypt = StringFog.decrypt("00W5duqLLsrrcqxI\n", "kiHoA4vnR74=\n");
        AbstractC0250.m2000(strDecrypt, strDecrypt, (String) AbstractC0993.m2388(arrayList, 0, String.class), true);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static C0290 m2184() {
        return new C0290();
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m2185(C0116 c0116) {
        return c0116.f648.f3545.f2380;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static String m2186(ArrayList arrayList) {
        return ISAdQualityAdType.fromInt(((Integer) AbstractC0993.m2388(arrayList, 0, Integer.class)).intValue()).name().toLowerCase();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C1005 m2187(C0116 c0116) {
        return c0116.f648;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static C1093 m2188() {
        return new C1093();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2189(C0116 c0116, C0983 c0983, ArrayList arrayList) {
        C1014 c1014 = (C1014) AbstractC0993.m2388(arrayList, 0, C1014.class);
        if (c1014 != null) {
            c0116.f648.f3544.f3644.add(new C0681(c1014, c0983, c0116));
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2190(C0116 c0116, ArrayList arrayList) {
        c0116.m1910((String) AbstractC0993.m2388(arrayList, 0, String.class), (JSONObject) AbstractC0993.m2388(arrayList, 1, JSONObject.class));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2191(ArrayList arrayList) {
        C0392 c0392;
        String str = (String) AbstractC0993.m2388(arrayList, 0, String.class);
        List listM2389 = AbstractC0993.m2389(arrayList, 1);
        C0272 c0272M2008 = C0272.m2008();
        synchronized (c0272M2008) {
            c0392 = c0272M2008.f1357;
        }
        if (c0392 != null) {
            c0392.m2082(str, listM2389);
        }
    }
}
