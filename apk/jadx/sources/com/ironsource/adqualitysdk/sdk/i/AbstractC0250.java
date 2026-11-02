package com.ironsource.adqualitysdk.sdk.i;

import android.util.Log;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.StringFog;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.Λ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0250 {
    static {
        StringFog.decrypt("T0GMe6PbrBdlVsNUlOWsBGpal2w=\n", "BjPjFfC02WU=\n");
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static void m1990(String str, String str2) {
        m1999(str, str, str2, null, null, false);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m1991(String str, String str2) {
        m1998(str, str, str2, null, false);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1992(String str, String str2) {
        m1999(str, str, str2, null, null, true);
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m1993(String str, String str2, String str3, boolean z) {
        if (m1994()) {
            Log.v(m1996(str), str3);
        } else if (z && m1995().shouldPrintLog(ISAdQualityLogLevel.VERBOSE)) {
            Log.v(m1996(str2), str3);
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static boolean m1994() {
        boolean z;
        C0272 c0272M2008 = C0272.m2008();
        synchronized (c0272M2008) {
            z = c0272M2008.f1361;
        }
        return z;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static ISAdQualityLogLevel m1995() {
        ISAdQualityLogLevel iSAdQualityLogLevel;
        C0272 c0272M2008 = C0272.m2008();
        synchronized (c0272M2008) {
            iSAdQualityLogLevel = c0272M2008.f1360;
        }
        return iSAdQualityLogLevel;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static String m1996(String str) {
        return AbstractC0270.m2002("tnK0mgRVlhScZfu1M2uWB5Npr41tGg==\n", "/wDb9Fc642Y=\n", new StringBuilder(), str);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1997(String str, String str2) {
        m1998(str, str, str2, null, true);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1998(String str, String str2, String str3, Object obj, boolean z) {
        if (obj != null) {
            str3 = str3 + "\n" + obj.toString();
        }
        if (m1994()) {
            Log.d(m1996(str), str3);
        } else if (z && m1995().shouldPrintLog(ISAdQualityLogLevel.DEBUG)) {
            Log.d(m1996(str2), str3);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1999(String str, String str2, String str3, Throwable th, AbstractC0760 abstractC0760, boolean z) {
        if (m1994()) {
            String strM1996 = m1996(str);
            if (abstractC0760 != null) {
                str3 = str3 + "\n" + abstractC0760;
            }
            Log.e(strM1996, str3, th);
            return;
        }
        if (z && m1995().shouldPrintLog(ISAdQualityLogLevel.ERROR)) {
            String strM1997 = m1996(str2);
            if (abstractC0760 != null) {
                str3 = str3 + "\n" + abstractC0760;
            }
            Log.e(strM1997, str3, th);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2000(String str, String str2, String str3, boolean z) {
        if (m1994()) {
            Log.i(m1996(str), str3);
        } else if (z && m1995().shouldPrintLog(ISAdQualityLogLevel.INFO)) {
            Log.i(m1996(str2), str3);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2001(String str, String str2, boolean z) {
        m1999(str, str, str2, null, null, z);
    }
}
