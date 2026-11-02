package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdListener;
import com.ironsource.adqualitysdk.sdk.ISAdQualityAdType;
import com.ironsource.adqualitysdk.sdk.ISAdQualityConfig;
import com.ironsource.adqualitysdk.sdk.ISAdQualityCustomMediationRevenue;
import com.ironsource.adqualitysdk.sdk.ISAdQualityInitError;
import com.ironsource.adqualitysdk.sdk.ISAdQualityLogLevel;
import com.ironsource.adqualitysdk.sdk.ISAdQualityMediationNetwork;
import com.ironsource.adqualitysdk.sdk.ISAdQualitySegment;
import com.ironsource.adqualitysdk.sdk.IronSourceAdQuality;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ϛ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0272 extends IronSourceAdQuality {

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public static C0272 f1346;

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public C0740 f1349;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public C0193 f1350;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public C0940 f1352;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public C0841 f1353;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public C0690 f1354;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public C0853 f1355;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public ISAdQualityAdListener f1356;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public C0392 f1357;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public Context f1359;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public ISAdQualityConfig f1366;

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public static final String f1348 = StringFog.decrypt("0nJnSYM1gJfqRXJ3\n", "kxY2POJZ6eM=\n");

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public static final String f1347 = StringFog.decrypt("qSwQunU0\n", "2kN/1xlVIsY=\n");

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final r f1367 = new r();

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public boolean f1365 = false;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public boolean f1364 = false;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public boolean f1363 = false;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public boolean f1362 = false;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public boolean f1361 = false;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public ISAdQualityLogLevel f1360 = ISAdQualityLogLevel.INFO;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public final CopyOnWriteArraySet f1351 = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final C0211 f1358 = new C0211();

    static {
        StringFog.decrypt("yw10grvSjBbKHmPCoM+oCN4+Z4mh1dM=\n", "rnsR7M+h6Xg=\n");
        f1346 = null;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static boolean m2006(C0272 c0272) {
        boolean z;
        synchronized (c0272) {
            z = c0272.f1362;
        }
        return z;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m2007(C0272 c0272) {
        synchronized (c0272) {
            c0272.f1364 = false;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static C0272 m2008() {
        synchronized (C0272.class) {
            if (f1346 == null) {
                f1346 = new C0272();
            }
        }
        return f1346;
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m2009(C0272 c0272) {
        synchronized (c0272) {
            c0272.f1365 = true;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static void m2010(C0272 c0272, Context context) {
        c0272.getClass();
        try {
            context.registerReceiver(new C0371(), new IntentFilter(StringFog.decrypt("us0ay3PZLCSyzQrccsRma7jXF9ZyngpLj/c760XvC0Ka7Tn8WA==\n", "26N+uRywSAo=\n")), null, AbstractC0340.f1610);
        } catch (Throwable th) {
            String str = f1348;
            AbstractC0250.m1999(str, str, StringFog.decrypt("jti8lwHAssmnmaeeA83hya3L9ZkF0ObYusD1iQHH99S+3Kc=\n", "yLnV+2Skkr0=\n"), th, null, true);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static r m2011(C0272 c0272) {
        r rVar;
        synchronized (c0272) {
            rVar = c0272.f1367;
        }
        return rVar;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2012(C0272 c0272, Context context) {
        String strM2291 = c0272.f1353.m2291(StringFog.decrypt("OLxRT25Dy2kYtg==\n", "UdIlYR0muBo=\n"));
        if (TextUtils.isEmpty(strM2291)) {
            return;
        }
        String strDecrypt = StringFog.decrypt("4M12UbYJQBn/kXxE/Q9DVPXRdl6qH0gZ5w==\n", "lL8XMtNrIXo=\n");
        String strDecrypt2 = StringFog.decrypt("PwPl5b2xUL4pD/jtpf1JrCIN5vGluR6+\n", "TGyKiNHQfc0=\n");
        Context applicationContext = context.getApplicationContext();
        C0320 c0320 = new C0320(applicationContext, strDecrypt);
        C0416 c0416 = new C0416(AbstractC0351.f1627, applicationContext.getPackageName(), AbstractC0319.m2048(applicationContext), strDecrypt2);
        try {
            c0320.m2052(StringFog.decrypt("P2zgQf98Ei4fZg==\n", "VgKUb4wZYV0=\n"), c0416.m2090(strM2291));
        } catch (Throwable unused) {
        }
        c0272.f1353.m2290(StringFog.decrypt("+lvzx82C/jvaUQ==\n", "kzWH6b7njUg=\n"));
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2013(C0272 c0272, boolean z) {
        synchronized (c0272) {
            c0272.f1362 = z;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2014(Set set, ISAdQualityInitError iSAdQualityInitError, String str) {
        if (set == null) {
            return;
        }
        AbstractC0340.m2053(new C0302(set, iSAdQualityInitError, str));
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void changeUserId(String str) {
        r rVar;
        try {
            if (m2026(str)) {
                synchronized (this) {
                    try {
                        rVar = this.f1367;
                    } catch (Exception e) {
                        e = e;
                    }
                }
                boolean zEquals = str.equals(rVar.m1871());
                boolean z = !zEquals;
                boolean zMo1893 = AbstractC1081.m2437().mo1893();
                if (!zEquals && zMo1893) {
                    C0690 c0690 = this.f1354;
                    c0690.getClass();
                    AbstractC0340.m2054(new C0807(c0690));
                }
                m2024(this.f1359, str, z, true, zMo1893);
                return;
            }
            return;
        } catch (Exception e2) {
            e = e2;
        }
        AbstractC1071.m2436(f1348, AbstractC0270.m2002("TazZ+zQdoJd8qsL6IR2mgW2s4vBm\n", "CN6rlEY90/I=\n", new StringBuilder(), str), e, true, false, true);
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initialize(Context context, String str) throws Throwable {
        initialize(context, str, null);
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initialize(Context context, String str, ISAdQualityConfig iSAdQualityConfig) throws Throwable {
        if (context instanceof Application) {
            m2023((Application) context, (Activity) null, str, (String) null, iSAdQualityConfig);
            return;
        }
        if (context != null && (context.getApplicationContext() instanceof Application)) {
            m2023((Application) context.getApplicationContext(), (Activity) null, str, (String) null, iSAdQualityConfig);
            return;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            m2023(activity.getApplication(), activity, str, (String) null, iSAdQualityConfig);
        } else {
            String strDecrypt = StringFog.decrypt("Q5D/vgOcxQRjt8eJFqKKAWSqyrMzhc0Sb+PdtTydwRB+49+oNcnJHXm3nrg3ycsOKrfHqjfJ5Qt+\nqsizJpCLKXqz0rMxiNABZa0=\n", "CsO+2lLppGg=\n");
            AbstractC0250.m1992(f1348, strDecrypt);
            m2014(iSAdQualityConfig != null ? iSAdQualityConfig.getAdQualityInitListeners() : null, ISAdQualityInitError.EXCEPTION_ON_INIT, strDecrypt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initializeWithGameId(Context context, String str) throws Throwable {
        initializeWithGameId(context, str, null);
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void initializeWithGameId(Context context, String str, ISAdQualityConfig iSAdQualityConfig) throws Throwable {
        if (str == null) {
            str = "";
        }
        String str2 = str;
        if (context instanceof Application) {
            m2023((Application) context, (Activity) null, (String) null, str2, iSAdQualityConfig);
            return;
        }
        if (context != null && (context.getApplicationContext() instanceof Application)) {
            m2023((Application) context.getApplicationContext(), (Activity) null, (String) null, str2, iSAdQualityConfig);
            return;
        }
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            m2023(activity.getApplication(), activity, (String) null, str2, iSAdQualityConfig);
        } else {
            String strDecrypt = StringFog.decrypt("m35En14UxtW7WXyoSyqJ0LxEcZJuDc7Dtw1mlGEVwsGmDWSJaEHKzKFZJZlqQcjf8ll8i2pB5tqm\nRHOSexiI+KJdaZJsANPQvUM=\n", "0i0F+w9hp7k=\n");
            AbstractC0250.m1992(f1348, strDecrypt);
            m2014(iSAdQualityConfig != null ? iSAdQualityConfig.getAdQualityInitListeners() : null, ISAdQualityInitError.EXCEPTION_ON_INIT, strDecrypt);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void sendCustomMediationRevenue(ISAdQualityCustomMediationRevenue iSAdQualityCustomMediationRevenue) {
        boolean z;
        synchronized (this) {
            z = this.f1363;
        }
        if (z) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("1hJVoNtEhnD7Fxvk2heBevhTVuLLDZRh/BxVp90Bg3D7Bl6ngkS8RtQXavLOCJxh7FNow+REgnTm\nU0jv2hCReuIdFQ==\n", "lXM7h69k9RU=\n"));
            return;
        }
        if (!m2018()) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("VzIAcT3yUbF6N041PKFWu3lzAzMtu0OgfTwAdju3VLF6Jgt2ZPJrh1U3PyMovkugbXM9EgLyS6c0\nPQEiabtMvWA6DzogqEewOg==\n", "FFNuVknSItQ=\n"));
            return;
        }
        this.f1350.getClass();
        if (iSAdQualityCustomMediationRevenue != null && iSAdQualityCustomMediationRevenue.getMediationNetwork() == ISAdQualityMediationNetwork.LEVEL_PLAY && iSAdQualityCustomMediationRevenue.getCustomData() != null && iSAdQualityCustomMediationRevenue.getCustomData().length() > 0) {
            C0193 c0193 = this.f1350;
            c0193.getClass();
            AbstractC0340.m2057(new C0204(c0193, iSAdQualityCustomMediationRevenue));
            return;
        }
        C0193 c0194 = this.f1350;
        c0194.getClass();
        if (iSAdQualityCustomMediationRevenue != null) {
            if (iSAdQualityCustomMediationRevenue.getRevenue() < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                AbstractC0250.m1992(C0193.f1066, StringFog.decrypt("JewvqJBtRDcI6WHskT5DPQutLOqAJFYmD+Ivr5YoQTcI+CS1xD9SJAPjNOrEPl89E+Elr4YoFzwJ\n42zhgSpWJg/7JA==\n", "Zo1Bj+RNN1I=\n"));
                return;
            }
            ISAdQualityMediationNetwork mediationNetwork = iSAdQualityCustomMediationRevenue.getMediationNetwork();
            if (mediationNetwork == null || TextUtils.isEmpty(C0193.m1944(mediationNetwork))) {
                AbstractC0250.m1992(C0193.f1066, StringFog.decrypt("wecELzsEyaLs4kprOlfOqO+mB20rTduz6+kEKD1BzKLs8w8yb0nTtPHvBG9vSd+j6+ceYSBKmqnn\n8h1nPU8=\n", "goZqCE8kusc=\n"));
                return;
            }
            ISAdQualityAdType adType = iSAdQualityCustomMediationRevenue.getAdType();
            if (adType != ISAdQualityAdType.INTERSTITIAL && adType != ISAdQualityAdType.VIDEO && adType != ISAdQualityAdType.REWARDED_VIDEO && adType != ISAdQualityAdType.REWARDED && (iSAdQualityCustomMediationRevenue.getMediationNetwork() != ISAdQualityMediationNetwork.LEVEL_PLAY || iSAdQualityCustomMediationRevenue.getCustomData() == null || iSAdQualityCustomMediationRevenue.getCustomData().length() <= 0)) {
                AbstractC0250.m1992(C0193.f1066, StringFog.decrypt("6hYtxzY2svPHE2ODN2W1+cRXLoUmf6DiwBgtwDBzt/PHAibaYmW05tkYMZQncuH3zVc3mTJzsrbI\nBSbAK3i189sEN4k2f6D6hVc1iSZzrrqJBSaXI2Sl881XNYkmc662yBknwDBztvfbEyaE\n", "qXdD4EIWwZY=\n"));
                return;
            }
            C0205 c0205 = new C0205(c0194, iSAdQualityCustomMediationRevenue);
            C1043 c1043 = ((C0961) AbstractC0953.m2334()).f2612;
            AbstractC0340.m2058(c0205, c1043 != null ? c1043.f3677.optInt(StringFog.decrypt("JpZB5A==\n", "RfszgJsvkZI=\n"), 3000) : 3000);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setAdListener(ISAdQualityAdListener iSAdQualityAdListener) {
        boolean z;
        synchronized (this) {
            z = this.f1363;
        }
        if (z) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("Ye1pfILUUz9WrGY/1phJKVbpaT6E1A16a99GP6eBQTZL+H57pbBrelXtdHuFnFUuRuNwNdg=\n", "IowHW/b0IFo=\n"));
        } else {
            this.f1356 = iSAdQualityAdListener;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setConfig(ISAdQualityConfig iSAdQualityConfig) {
        boolean z;
        synchronized (this) {
            z = this.f1363;
        }
        if (z) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("LMe72Y1upJwbhraRlyi+nk+L9beqD7OoGse5l40396or7fWJmD33igfToZqWObnX\n", "b6bV/vlO1/k=\n"));
        } else if (m2020()) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("MI1/abbJfbQHzHIhrI9ntlPBMQeRqGqABo19J7aQLoI3pzEnsclvvQGJcCq7yWe/Gph4L66AdLQX\nwg==\n", "c+wRTsLpDtE=\n"));
        } else {
            this.f1366 = iSAdQualityConfig;
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setMetaData(String str, String str2) {
        boolean z;
        try {
            synchronized (this) {
                z = this.f1363;
            }
            if (z) {
                AbstractC0250.m1992(f1348, StringFog.decrypt("HpOqClSFmZwp0qlIVMTKnTyGpQ0NhaOqHJaVWEHJg40k0pdpa4WdmC7St0VV0Y6WKpzq\n", "XfLELSCl6vk=\n"));
                return;
            }
            if (!m2018()) {
                String str3 = f1348;
                String strDecrypt = StringFog.decrypt("ynBjjmj9rN6zdnjHceG+xvplc45M257Owmp3wmz8porAW12OZ+25xeF6Ns1k5LPD/Xg2iXbtq+f2\na3fqZPy+jQ==\n", "kx8WrgWI36o=\n");
                if (AbstractC0250.m1994()) {
                    Log.w(AbstractC0250.m1996(str3), strDecrypt);
                    return;
                } else {
                    if (AbstractC0250.m1995().shouldPrintLog(ISAdQualityLogLevel.WARNING)) {
                        Log.w(AbstractC0250.m1996(str3), strDecrypt);
                        return;
                    }
                    return;
                }
            }
            if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
                if (!AbstractC0274.f1369.contains(str)) {
                    if (AbstractC0274.m2027(m2021().f372, str)) {
                        AbstractC0250.m1992(f1348, StringFog.decrypt("uv2HokrDHYKo7JLHDw==\n", "yZjz7y+3fMY=\n") + str + StringFog.decrypt("eEYD9qZxQxQ7Hkau6jQOVTQDTqOgcUNVLAUD\n", "WGojytQUJ3U=\n") + 5 + StringFog.decrypt("dVtmcH3NG6whVyNyfYEKqCYYI017gxC/PFhkJHGIC6x1UmJwfc0JrDlDZio=\n", "VTYDBBztf80=\n"));
                        return;
                    } else if (!AbstractC0679.m2220(str, 64) || !AbstractC0679.m2220(str2, 64)) {
                        AbstractC0250.m1992(f1348, StringFog.decrypt("aG8j4NnNSKd6fjaFnA==\n", "GwpXrby5KeM=\n") + str + StringFog.decrypt("RFFiZGVh5AoHCSc8KSSpSxAVJ3h7Ye4MEBViN3Ek4gQQFWIsf2GgAAEEYjl5YKAfDBhiLnZo9Q5E\nDio3YmjkSwYYYjpycPcOARNi\n", "ZH1CWBcEgGs=\n") + 1 + StringFog.decrypt("/6h067k=\n", "38kaj5kWjhI=\n") + 64 + StringFog.decrypt("zWJP7ri0Ky2Ic1Sh\n", "7QEnj8rVSFk=\n"));
                        return;
                    }
                }
                r rVarM2021 = m2021();
                if (str == null) {
                    rVarM2021.getClass();
                } else if (str2 == null) {
                    rVarM2021.f372.remove(str);
                } else {
                    rVarM2021.f372.put(str, str2);
                }
                if (StringFog.decrypt("RPCPB3QSkThC+IQadBWbIFT/\n", "MZHrdCth9Es=\n").equals(str)) {
                    m2021().f370 = str2;
                }
            }
        } catch (Exception e) {
            AbstractC1071.m2436(f1348, AbstractC0270.m2002("HccZpjDb7E8swQKnJdvyTyzUS60jj/4K\n", "WLVryUL7nyo=\n", new StringBuilder(), str), e, true, false, true);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setSegment(ISAdQualitySegment iSAdQualitySegment) {
        boolean z;
        synchronized (this) {
            z = this.f1363;
        }
        if (z) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("OGWrtAQ0WYYPJLb2F3lPjQ8k6LM5R2uHKnGk/xlgU8MoQI6zB3VZwwhssOcUe12NVQ==\n", "ewTFk3AUKuM=\n"));
        } else {
            AbstractC0340.m2057(new C0348(this, iSAdQualitySegment));
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final void setUserConsent(boolean z) {
        r rVar;
        synchronized (this) {
            rVar = this.f1367;
        }
        rVar.f376 = z;
    }

    @Override // com.ironsource.adqualitysdk.sdk.IronSourceAdQuality
    public final synchronized void shutdown() {
        m2025(false);
    }

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final synchronized void m2015() {
    }

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final synchronized void m2016() {
        if (m2017()) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("pk5j1Yi7bxeRD2SciP5uHIRDLYaZ6GhSiEBpl9y2PDu2bmmjifpwG5FWLaG40DwFhFwtgZTuaBaK\nWGPc\n", "5S8N8vybHHI=\n"));
        } else if (m2018()) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("AdbJtn9RnXdsytS2OlCWYiCDzqcsVthuI8ff4j1Hnmw+xpqrMUuMai3P07g2TJ8i\n", "TKO6wl8i+AM=\n"));
        } else {
            this.f1361 = true;
        }
    }

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final synchronized boolean m2017() {
        return this.f1363;
    }

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final synchronized boolean m2018() {
        return this.f1365;
    }

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final synchronized boolean m2019() {
        return this.f1361;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final synchronized boolean m2020() {
        return this.f1364;
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final synchronized r m2021() {
        return this.f1367;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final JSONObject m2022() {
        r rVar;
        synchronized (this) {
            rVar = this.f1367;
        }
        ConcurrentHashMap concurrentHashMap = rVar.f372;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(StringFog.decrypt("egz7Bd+782FECuY11A==\n", "G2iKWrbVmhU=\n"))) {
            return null;
        }
        try {
            return new JSONObject((String) concurrentHashMap.get(StringFog.decrypt("d+TR8zyeJ+FJ4szDNw==\n", "FoCgrFXwTpU=\n")));
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x011d */
    /* JADX WARN: Code duplicated, block: B:33:0x0081  */
    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    /* JADX WARN: Code duplicated, block: B:38:0x0092  */
    /* JADX WARN: Code duplicated, block: B:97:0x00fd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:89:0x0124
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2023(android.app.Application r11, android.app.Activity r12, java.lang.String r13, java.lang.String r14, com.ironsource.adqualitysdk.sdk.ISAdQualityConfig r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.adqualitysdk.sdk.i.C0272.m2023(android.app.Application, android.app.Activity, java.lang.String, java.lang.String, com.ironsource.adqualitysdk.sdk.ISAdQualityConfig):void");
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2024(Context context, String str, boolean z, boolean z2, boolean z3) {
        r rVar;
        synchronized (this) {
            rVar = this.f1367;
        }
        String strM1871 = rVar.m1871();
        m2021().m1872(str);
        if (str == null) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("YXanA2uLwvpXQYdscO7C5lcEmzlVxsyvdEiQLUrPwuJFT5BsSt+Q6gRQmmxJy5H8BEXVOljGi+sE\nSpoiFMSX40gEgD9c2MLGYASBIxnjsc5AdYAtVcOW9gR3sQcX\n", "JCT1TDmq4o8=\n"));
        } else if (str.equals(StringFog.decrypt("0AYRoSY1zp+cEQegYyvBlsU=\n", "sWho1U5coPg=\n"))) {
            AbstractC0250.m1992(f1348, AbstractC0662.m2192("1Jvsf6BeTjX+vJlCl18bH/in2RCGFwtM9azYUYcTGkzkuttC0jYqTA==\n", "kcm+MPJ/bmw=\n", new StringBuilder(), str).append(StringFog.decrypt("DDf8E8SjMjUCes0UxOIyJVByjAvO4jExUWSMHoG3LzlTYslf1LEkIgJe6F/HrTNwR3bPF4G3MjVQ\nN9gQgYsSEUZG2R7NqzUpAkToNI8=\n", "Ihesf6HCQVA=\n")).toString());
        } else {
            String str2 = f1348;
            AbstractC0250.m2000(str2, str2, AbstractC0270.m2002("3EjL2Ka4i2XhdsvL6pisXaV0+uGmhKtB9wf37qaYqx6l\n", "hSe+qobx2CQ=\n", new StringBuilder(), str), true);
        }
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        C0386 c0386 = new C0386(this, z, context, z2, strM1871, z3);
        C0961 c0961 = (C0961) abstractC0953M2334;
        Handler handler = c0961.f3422;
        if (handler != null) {
            handler.post(new C0970(c0961, c0386));
        }
        JSONObject jSONObjectM2022 = m2022();
        if (jSONObjectM2022 == null) {
            AbstractC0953.m2334().mo2354(context, m2021(), true);
            return;
        }
        AbstractC0953 abstractC0953M2335 = AbstractC0953.m2334();
        r rVarM2021 = m2021();
        C0961 c0962 = (C0961) abstractC0953M2335;
        c0962.f3407 = 0L;
        c0962.f3406 = rVarM2021;
        c0962.mo2224(jSONObjectM2022);
        c0962.m2371();
        c0962.m2367();
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2025(boolean z) {
        String str;
        String str2;
        C0580 c0580;
        try {
            if (m2017()) {
                AbstractC0250.m1992(f1348, StringFog.decrypt("6RbyThCHhHHJMcp5BbnFasE2k0stgIB8xDyTWSmHkXnPMt0E\n", "oEWzKkHy5R0=\n"));
                return;
            }
            if (!m2018()) {
                AbstractC0250.m1992(f1348, StringFog.decrypt("0FLKFgb0YfHwdfIhE8og6vhyqxwy92XvuWjlGyPoYfHwe+4Wd6wg8/Yh5Rcy5SDp9iH4GiL1ZPLu\nb6U=\n", "mQGLcleBAJ0=\n"));
                return;
            }
            String strDecrypt = StringFog.decrypt("m3OTy/cT6ty7VKuP9SLAkKVBoY/VDv7Etk+lwQ==\n", "0iDSr6Zmi7A=\n");
            if (z) {
                strDecrypt = strDecrypt + StringFog.decrypt("elg4WFfUd8ALSytbU4BPhCpSK0Ncm0TJ\n", "Wj5KNzr0NqQ=\n");
            }
            JSONObject jSONObject = new JSONObject();
            if (z) {
                str = "oizNIxdG\n";
                str2 = "0Um/VXI0RMY=\n";
            } else {
                str = "QS+y\n";
                str2 = "MkvZALirvQA=\n";
            }
            try {
                jSONObject.put(StringFog.decrypt("Hw==\n", "bLJGXIz3w8M=\n"), StringFog.decrypt(str, str2));
            } catch (JSONException unused) {
            }
            this.f1354.m2246(StringFog.decrypt("gmknh+4=\n", "9hl4850F5AQ=\n"), jSONObject);
            AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
            String str3 = f1347;
            C0961 c0961 = (C0961) abstractC0953M2334;
            if (str3 != null) {
                c0580 = (C0580) c0961.mo2349().get(str3);
            } else {
                c0961.getClass();
                c0580 = null;
            }
            String str4 = c0580 != null ? c0580.f2340 : null;
            if (!TextUtils.isEmpty(str4)) {
                strDecrypt = strDecrypt + StringFog.decrypt("p0zpe3h/J9/mSO9hKn8=\n", "hzuADxBfVbo=\n") + str4;
            }
            AbstractC0250.m1997(f1348, strDecrypt);
            m2014(this.f1351, ISAdQualityInitError.AD_QUALITY_SDK_WAS_SHUTDOWN, strDecrypt);
            this.f1363 = true;
            AbstractC0953.m2334().mo2336();
            C0160.m1933(this.f1359).m1935();
            this.f1357.m2074();
            C0853 c0853 = this.f1355;
            C0835 c0835 = c0853.f3123;
            c0835.f3099.unregisterReceiver(c0835);
            c0853.f3122 = true;
            this.f1354.m2235();
            C0765.f2827.m2265();
            C0793.m2274();
        } catch (Exception e) {
            AbstractC1071.m2436(f1348, StringFog.decrypt("fGTSBQgFwehMYtQDFEKS5FZhzg==\n", "ORaganolsoA=\n"), e, true, false, true);
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final boolean m2026(String str) {
        boolean z;
        synchronized (this) {
            z = this.f1363;
        }
        if (z) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("+1wW+D+MZ7/ZUx+6a9l3ssodEbtrgSSe63wcjj7NaL7MRFiMD+ckoNlOWKwj2XCz10oW8Q==\n", "uD1430usBNc=\n"));
            return false;
        }
        if (!m2018()) {
            AbstractC0250.m1992(f1348, StringFog.decrypt("yAgPfL2ey3uxDhQ1pILZY/gdH3yZuPlrwBIbMLmfwS/CIzF8so7eYOMCWj+xh9Rm/wBae7OD2WH2\nAi8vtZnxa7Y=\n", "kWd6XNDruA8=\n"));
            return false;
        }
        if (!TextUtils.isEmpty(str)) {
            return true;
        }
        AbstractC0250.m1992(f1348, StringFog.decrypt("3X4O7Qn3LuOzch3tH+Ultuc7G6hc6j79/zsWv1zhJuHnYg==\n", "kxt5zXyES5E=\n"));
        return false;
    }
}
