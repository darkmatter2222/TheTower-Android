package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.Calendar;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᖽ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0674 extends C0249 {

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f2573 = StringFog.decrypt("b4cHBLT7BzNdrBANo/spNUCMFAm54Bw=\n", "LulmaM2PblA=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final Handler f2574;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public int f2575;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public int f2576;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final int f2577;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f2578;

    public C0674(Context context, r rVar, int i, String str, long j) {
        super(context, rVar, j);
        this.f2577 = i;
        this.f2576 = 0;
        this.f2575 = 1;
        this.f2578 = str;
        HandlerThread handlerThread = new HandlerThread(StringFog.decrypt("R0mNVuGDTud1Yppf9oNg4WhCnlvsmFU=\n", "BifsOpj3J4Q=\n"));
        handlerThread.start();
        this.f2574 = new Handler(handlerThread.getLooper());
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.C0249
    /* JADX INFO: renamed from: ﾒ */
    public final JSONObject mo1988(JSONObject jSONObject, boolean z, boolean z2, boolean z3) throws JSONException {
        long timeInMillis;
        long jElapsedRealtime;
        synchronized (this) {
            String str = AbstractC0129.f814;
            timeInMillis = Calendar.getInstance().getTimeInMillis();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        }
        JSONObject jSONObjectMo1988 = super.mo1988(jSONObject, z, z2, z3);
        try {
            String str2 = AbstractC0115.f626;
            long jOptLong = jSONObjectMo1988.optLong(str2);
            jSONObjectMo1988.remove(str2);
            if (jOptLong != 0) {
                long j = jElapsedRealtime - (timeInMillis - jOptLong);
                jSONObjectMo1988.put(StringFog.decrypt("a1xd\n", "GCgui2v6aD4=\n"), timeInMillis);
                jSONObjectMo1988.put(StringFog.decrypt("dQk+\n", "BnxKANzLBWQ=\n"), jElapsedRealtime);
                timeInMillis = jOptLong;
                jElapsedRealtime = j;
            }
            jSONObjectMo1988.put(StringFog.decrypt("MA6Y\n", "VHrrJraVyFk=\n"), timeInMillis);
            jSONObjectMo1988.put(StringFog.decrypt("M5k=\n", "Ru2tv05T01E=\n"), jElapsedRealtime);
            jSONObjectMo1988.put(StringFog.decrypt("42mIaQ==\n", "kBzhDSEKr7g=\n"), this.f2578);
            jSONObjectMo1988.put(StringFog.decrypt("XxwS\n", "LHV2P2JEQbY=\n"), this.f2577);
            String strDecrypt = StringFog.decrypt("3d8F\n", "rrFoNvPORGo=\n");
            int i = this.f2576;
            if (i == 0) {
                i = 1;
            }
            jSONObjectMo1988.put(strDecrypt, i);
            if (AbstractC0953.m2334().mo2335()) {
                jSONObjectMo1988.put(StringFog.decrypt("De8Bzw==\n", "bpxtq/zDph4=\n"), true);
            }
            jSONObjectMo1988.put(StringFog.decrypt("inTM\n", "6RO6+t6vOmo=\n"), AbstractC0953.m2334().mo2353());
            C1097 c1097 = ((C0961) AbstractC0953.m2334()).f3418;
            if (c1097 != null) {
                String strM2445 = c1097.m2445();
                if (!TextUtils.isEmpty(strM2445)) {
                    jSONObjectMo1988.put(StringFog.decrypt("Dx/f\n", "amurAH575Co=\n"), strM2445);
                }
                Object objM2447 = c1097.m2447();
                if (objM2447 != null) {
                    jSONObjectMo1988.put(StringFog.decrypt("cl0Hiw==\n", "Fylz+PaELvg=\n"), objM2447);
                }
            }
            if (z2) {
                m2213(jSONObjectMo1988);
                return jSONObjectMo1988;
            }
        } catch (JSONException e) {
            String str3 = f2573;
            AbstractC0250.m1999(str3, str3, StringFog.decrypt("iUZX21GzLFSpVVHdTfRvQ7pRS8Bu9jtH\n", "zDQltCOTTyY=\n"), e, null, false);
        }
        return jSONObjectMo1988;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2212(String str, JSONObject jSONObject, JSONObject jSONObject2, boolean z, C0798 c0798) {
        try {
            try {
                this.f2574.post(new C0678(this, str, jSONObject, jSONObject2, z, c0798));
            } catch (Throwable th) {
                th = th;
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final synchronized void m2213(JSONObject jSONObject) {
        C0231 c0231M2283 = C0820.m2278().m2283();
        try {
            jSONObject.put(StringFog.decrypt("N9JixDfsNu8z\n", "W7MRsGODQ4w=\n"), AbstractC1030.m2415(c0231M2283.f1166, c0231M2283.f1165, c0231M2283.f1164, c0231M2283.f1163));
        } catch (JSONException e) {
            String str = f2573;
            AbstractC0250.m1999(str, str, StringFog.decrypt("/Vwi4m0gEaj8Rz7qP2wRv+xBJe53IASjuEsm6HF0\n", "mC5QjR8AcMw=\n"), e, null, false);
        }
    }
}
