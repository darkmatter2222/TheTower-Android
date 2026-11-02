package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﮇ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0961 extends AbstractC0953 {

    /* JADX INFO: renamed from: ᕆ, reason: contains not printable characters */
    public static final String f3401;

    /* JADX INFO: renamed from: ᖸ, reason: contains not printable characters */
    public r f3406;

    /* JADX INFO: renamed from: ᖺ, reason: contains not printable characters */
    public volatile long f3407;

    /* JADX INFO: renamed from: ᗀ, reason: contains not printable characters */
    public boolean f3408;

    /* JADX INFO: renamed from: ᘥ, reason: contains not printable characters */
    public ArrayList f3409;

    /* JADX INFO: renamed from: ᵆ, reason: contains not printable characters */
    public C0211 f3410;

    /* JADX INFO: renamed from: Ḟ, reason: contains not printable characters */
    public boolean f3411;

    /* JADX INFO: renamed from: Ḹ, reason: contains not printable characters */
    public int f3412;

    /* JADX INFO: renamed from: Ḽ, reason: contains not printable characters */
    public boolean f3413;

    /* JADX INFO: renamed from: Ṿ, reason: contains not printable characters */
    public C0568 f3414;

    /* JADX INFO: renamed from: Ὑ, reason: contains not printable characters */
    public ArrayList f3415;

    /* JADX INFO: renamed from: Ῠ, reason: contains not printable characters */
    public ArrayList f3416;

    /* JADX INFO: renamed from: Ῡ, reason: contains not printable characters */
    public C0565 f3417;

    /* JADX INFO: renamed from: Ὺ, reason: contains not printable characters */
    public C1097 f3418;

    /* JADX INFO: renamed from: Ύ, reason: contains not printable characters */
    public C0384 f3419;

    /* JADX INFO: renamed from: K, reason: contains not printable characters */
    public C0669 f3420;

    /* JADX INFO: renamed from: Ⅽ, reason: contains not printable characters */
    public C3488o0 f3421;

    /* JADX INFO: renamed from: Ↄ, reason: contains not printable characters */
    public Handler f3422;

    /* JADX INFO: renamed from: く, reason: contains not printable characters */
    public C0853 f3423;

    /* JADX INFO: renamed from: っ, reason: contains not printable characters */
    public C0841 f3424;

    /* JADX INFO: renamed from: へ, reason: contains not printable characters */
    public final String f3425;

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public final String f3426;

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public final int f3427;

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public final int f3428;

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public final int f3429;

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public final int f3430;

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public final String f3431;

    /* JADX INFO: renamed from: 乁, reason: contains not printable characters */
    public final String f3432;

    /* JADX INFO: renamed from: 爫, reason: contains not printable characters */
    public final String f3433;

    /* JADX INFO: renamed from: ﬤ, reason: contains not printable characters */
    public final String f3434;

    /* JADX INFO: renamed from: טּ, reason: contains not printable characters */
    public final String f3435;

    /* JADX INFO: renamed from: סּ, reason: contains not printable characters */
    public final String f3436;

    /* JADX INFO: renamed from: ףּ, reason: contains not printable characters */
    public final String f3437;

    /* JADX INFO: renamed from: ﭖ, reason: contains not printable characters */
    public final String f3438;

    /* JADX INFO: renamed from: ﭴ, reason: contains not printable characters */
    public final String f3439;

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public final String f3440;

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final String f3441;

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public final String f3442;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public final String f3443;

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final String f3444;

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final String f3445;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final String f3446;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final String f3447;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final String f3448;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final String f3449 = StringFog.decrypt("FllY\n", "czcuKrGm3sU=\n");

    /* JADX INFO: renamed from: ᖭ, reason: contains not printable characters */
    public static final String f3405 = StringFog.decrypt("tLMMfkX4XISIsAh2\n", "5tZhETGdH+s=\n");

    /* JADX INFO: renamed from: ᖫ, reason: contains not printable characters */
    public static final String f3404 = StringFog.decrypt("oVxNi8njMNewXkGNyg==\n", "0z8i5a+KV/k=\n");

    /* JADX INFO: renamed from: ᖩ, reason: contains not printable characters */
    public static final String f3403 = StringFog.decrypt("XvsJPPUime9BpwMpviSaoljsBTDkJZvjRO8BOA==\n", "KoloX5BA+Iw=\n");

    /* JADX INFO: renamed from: ᖅ, reason: contains not printable characters */
    public static final String f3402 = StringFog.decrypt("KGt7PXi9FEg+Z2Y1YPENSThrejY=\n", "WwQUUBTcOTs=\n");

    static {
        StringFog.decrypt("4nXj\n", "kRGPFT5H+Q4=\n");
        f3401 = StringFog.decrypt("4EHUkFG3lpyiQtuEC5Wdg+JL2YMQpKed6E/Okiu/n4j/WtuaDw==\n", "jC6693/W8u0=\n");
    }

    public C0961() {
        StringFog.decrypt("SsGH\n", "L6zjLnhjHQk=\n");
        this.f3448 = StringFog.decrypt("a6JpEg==\n", "CMUFZkQZWEg=\n");
        this.f3447 = StringFog.decrypt("x91WVA==\n", "pK46IGeABno=\n");
        this.f3446 = StringFog.decrypt("UxjUtA==\n", "PXGxxLS8H+0=\n");
        this.f3445 = StringFog.decrypt("AT0ACA==\n", "YEl0agXK/Z8=\n");
        this.f3444 = StringFog.decrypt("jfZ/vA==\n", "7oUT2GaQluk=\n");
        this.f3443 = StringFog.decrypt("b4BA\n", "HOwkmkxWpLc=\n");
        this.f3442 = StringFog.decrypt("ZEfthw==\n", "AS6O4YxLET0=\n");
        this.f3441 = StringFog.decrypt("+cr7\n", "kKmfXVxiJmE=\n");
        this.f3440 = StringFog.decrypt("P23+xw==\n", "SwaQpOZ0w+s=\n");
        this.f3439 = StringFog.decrypt("HuCaPw==\n", "bIfiXCx9H1w=\n");
        this.f3438 = StringFog.decrypt("HninuQ==\n", "fQrL3cMjbcY=\n");
        this.f3437 = StringFog.decrypt("Nybs1N8=\n", "QECYoLNhgF4=\n");
        this.f3436 = StringFog.decrypt("VxB3vg==\n", "JHEGzTrQDLI=\n");
        this.f3435 = StringFog.decrypt("Jg5Z\n", "RXk6aDsuzy8=\n");
        this.f3434 = StringFog.decrypt("IUQD\n", "VDd3ndXL1jA=\n");
        this.f3433 = StringFog.decrypt("VQZS4A==\n", "OHI2lPWwvhw=\n");
        this.f3432 = StringFog.decrypt("x7Zf\n", "qt8sC2DO0XI=\n");
        this.f3431 = StringFog.decrypt("p5bm+g==\n", "1PWVk0T7LS8=\n");
        TimeUnit timeUnit = TimeUnit.HOURS;
        timeUnit.toMillis(24L);
        TimeUnit timeUnit2 = TimeUnit.SECONDS;
        this.f3430 = (int) timeUnit2.toMillis(5L);
        this.f3429 = (int) timeUnit.toMillis(12L);
        this.f3428 = (int) timeUnit2.toMillis(3L);
        this.f3427 = (int) timeUnit2.toMillis(10L);
        this.f3426 = StringFog.decrypt("WsKZ\n", "P6z6pbOesDU=\n");
        this.f3425 = StringFog.decrypt("BUcb\n", "MmkrfjJ57ks=\n");
        this.f3412 = 0;
        this.f3409 = null;
        this.f3408 = false;
        this.f3407 = 0L;
    }

    /* JADX INFO: renamed from: ゥ, reason: contains not printable characters */
    public final synchronized void m2366() {
        this.f3413 = false;
    }

    /* JADX INFO: renamed from: ト, reason: contains not printable characters */
    public final synchronized void m2367() {
        Handler handler = this.f3422;
        if (handler != null) {
            handler.post(new C1020(this));
        }
    }

    /* JADX INFO: renamed from: リ, reason: contains not printable characters */
    public final boolean m2368() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optBoolean(this.f3426, false);
    }

    /* JADX INFO: renamed from: ヮ, reason: contains not printable characters */
    public final synchronized C0853 m2369() {
        return this.f3423;
    }

    /* JADX INFO: renamed from: ヶ, reason: contains not printable characters */
    public final int m2370() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optInt(StringFog.decrypt("43aowg==\n", "jhXEsCi3+bU=\n"), 3);
    }

    /* JADX INFO: renamed from: 丫, reason: contains not printable characters */
    public final void m2371() {
        if (mo2341()) {
            C0685 c0685 = C0685.f2608;
            c0685.getClass();
            try {
                if (c0685.f2611 != null) {
                    return;
                }
                synchronized (c0685) {
                    if (c0685.f2611 != null) {
                        return;
                    }
                    C0227 c0227 = C0765.f2827.f2830;
                    C0693 c0693M1976 = c0227 == null ? null : c0227.m1976();
                    if (c0693M1976 != null) {
                        c0685.f2611 = c0693M1976;
                    }
                }
            } catch (Exception e) {
                String str = C0685.f2609;
                AbstractC0250.m1999(str, str, StringFog.decrypt("V2SxOTJmuvRnKqQvJnGg83Nvqyh1crLpcm+h\n", "HgrFXFUU04A=\n"), e, null, false);
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: 乁 */
    public final boolean mo2335() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optBoolean(this.f3444);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: 爫 */
    public final synchronized void mo2336() {
        this.f3422.removeCallbacksAndMessages(null);
        this.f3422 = null;
        AbstractC0340.m2053(new C1078(this));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﬤ */
    public final boolean mo2337() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optBoolean(this.f3436);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: טּ */
    public final boolean mo2338() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optBoolean(StringFog.decrypt("T2EjLw==\n", "PQdATqpK25Y=\n"), true);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: סּ */
    public final boolean mo2339() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optBoolean(StringFog.decrypt("PA3A\n", "VHmvxhRyZ4g=\n"), false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ףּ */
    public final boolean mo2340() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optBoolean(StringFog.decrypt("efkq\n", "C51Pc9SLxuQ=\n"), true);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﭖ */
    public final boolean mo2341() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optBoolean(this.f3432, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﭴ */
    public final boolean mo2342() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject != null && jSONObject.optBoolean(this.f3440, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﭸ */
    public final boolean mo2343() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject != null && jSONObject.optBoolean(this.f3439, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﮉ */
    public final boolean mo2344() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        if (jSONObject == null) {
            return false;
        }
        return jSONObject.optBoolean(this.f3442, false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﮌ */
    public final boolean mo2345() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optBoolean(StringFog.decrypt("TlkQ\n", "Kz9jzTsrgNg=\n"), false);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﮐ */
    public final synchronized boolean mo2346() {
        return this.f3413;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﱟ */
    public final String mo2347() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        if (jSONObject == null) {
            return null;
        }
        String strOptString = m2223().optString(StringFog.decrypt("lwtzNg==\n", "838XQhxs39Y=\n"));
        return TextUtils.isEmpty(strOptString) ? this.f2612.f3677.optString(C1043.f3675, C1043.f3673) : strOptString;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﺙ */
    public final int mo2348() {
        synchronized (this) {
            JSONObject jSONObjectM2223 = m2223();
            if (jSONObjectM2223 == null) {
                return AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH;
            }
            return jSONObjectM2223.optInt(this.f3441, AccessibilityNodeInfoCompat.EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﻏ */
    public final HashMap mo2349() {
        JSONObject jSONObject;
        HashMap map = new HashMap();
        try {
            synchronized (this) {
                jSONObject = this.f2613;
            }
            String strOptString = jSONObject.optString(StringFog.decrypt("axvi\n", "D3iRhGywX9w=\n"));
            if (!TextUtils.isEmpty(strOptString)) {
                JSONObject jSONObject2 = new JSONObject(strOptString);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    linkedHashMap.put(next, new C0580(jSONObject2.optJSONObject(next)));
                }
                return linkedHashMap;
            }
        } catch (JSONException e) {
            AbstractC1071.m2435(f3405, StringFog.decrypt("oYQRsvakoRvEkQapx+umG4GVF7L295waoJ8QvOborQ==\n", "5PZj3YSEyHU=\n"), (Throwable) e, false);
        }
        return map;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﻐ */
    public final int mo2350() {
        int iOptInt;
        synchronized (this) {
            iOptInt = m2223().optInt(this.f3443, 100);
        }
        return iOptInt;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﻛ */
    public final int mo2351() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optInt(this.f3447, this.f3427);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ｋ */
    public final int mo2352() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        if (jSONObject == null) {
            return 2000;
        }
        return Math.max(0, jSONObject.optInt(this.f3438, 2000));
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﾇ */
    public final String mo2353() {
        JSONObject jSONObject;
        synchronized (this) {
            jSONObject = this.f2613;
        }
        return jSONObject.optString(StringFog.decrypt("5lWf\n", "hTLpetQNrUU=\n"), this.f3425);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2354(Context context, r rVar, boolean z) {
        JSONObject jSONObject;
        String str = AbstractC0129.f814;
        this.f3407 = SystemClock.elapsedRealtime();
        this.f3406 = rVar;
        if (z) {
            C1076 c1076 = new C1076(this);
            C0961 c0961 = (C0961) AbstractC0953.m2334();
            synchronized (c0961) {
                jSONObject = c0961.f2613;
            }
            AbstractC0340.m2056(c1076, jSONObject.optInt(c0961.f3448, c0961.f3428));
        }
        m2366();
        JSONObject jSONObject2 = new JSONObject();
        try {
            String strM2291 = this.f3424.m2291(f3401);
            jSONObject2 = new C0249(context, rVar, !TextUtils.isEmpty(strM2291) ? Long.parseLong(strM2291) : 0L).m1989(m2369().f3123.m2288());
        } catch (JSONException e) {
            String str2 = f3405;
            AbstractC0250.m1999(str2, str2, StringFog.decrypt("HcrGhMQSrUw92cCC2FXuVzbRwMvEV79LPcvA\n", "WLi067Yyzj4=\n"), e, null, false);
        }
        JSONObject jSONObject3 = jSONObject2;
        C0853 c0853M2369 = m2369();
        C0211 c0211 = this.f3410;
        String strDecrypt = StringFog.decrypt("LlRv0g==\n", "RzoGpnwpJr0=\n");
        String str3 = c0211.f1097;
        StringBuilder sb = new StringBuilder();
        if (str3 == null) {
            str3 = "";
        }
        StringBuilder sbAppend = sb.append(str3).append(StringFog.decrypt("Eg==\n", "Pf7MGvBw9pE=\n"));
        if (strDecrypt == null) {
            strDecrypt = "";
        }
        String string = sbAppend.append(strDecrypt).toString();
        boolean z2 = true;
        if (!m2368() || this.f3412 == m2370()) {
            z2 = false;
        }
        C1036 c1036 = new C1036(this, context, rVar);
        c0853M2369.getClass();
        if (TextUtils.isEmpty(string)) {
            String str4 = C0853.f3121;
            AbstractC0250.m1993(str4, str4, StringFog.decrypt("m0JdncHVMMKhDEyQ3sQw1btfSJDAkGLTv1lZjNmQdd+6RFmNjeVC+u5DTt/f1WPGoUJPmuXRftKi\nSU7f2tVi0+5CU4uNwGLZuEVYmsk=\n", "ziw8/62wELY=\n"), true);
            return;
        }
        C0944 c0944 = new C0944(jSONObject3, string, rVar, context, z2);
        if (c0853M2369.f3122) {
            AbstractC0250.m1990(C0853.f3121, StringFog.decrypt("CKD8/y0ly/svvfj/JmvatHum/+wtIMuJPr7k/zE/jqwzqv+6DC7arDS9+tcjJc+8Pr2x7SM4jqgz\nuuX+LTzA\n", "W8+RmkJLrts=\n"));
            return;
        }
        C0854 c0854 = new C0854(c0853M2369, c1036, c0944);
        String str5 = AbstractC0129.f814;
        try {
            Executors.newSingleThreadExecutor().execute(c0854);
        } catch (Throwable th) {
            AbstractC1071.m2435(AbstractC0129.f814, StringFog.decrypt("dXSgyWUV9GhVZafSflv2MFF1q8h0FeVxQ20=\n", "MAbSphc1kRA=\n"), th, false);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0953
    /* JADX INFO: renamed from: ﾒ */
    public final void mo2355(Context context, C0853 c0853, C0211 c0211, C0568 c0568, boolean z) {
        JSONObject jSONObject;
        this.f3424 = new C0841(context, f3403, f3402);
        this.f3423 = c0853;
        this.f3413 = false;
        this.f3411 = z;
        this.f3410 = c0211;
        this.f3422 = new Handler(Looper.getMainLooper());
        C1043 c1043 = new C1043();
        this.f3421 = new C3488o0(c1043);
        this.f3420 = new C0669(c1043);
        this.f3419 = new C0384(c1043);
        this.f3418 = new C1097();
        String strM2291 = this.f3424.m2291(f3404);
        if (strM2291 != null) {
            try {
                jSONObject = new JSONObject(strM2291);
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
        } else {
            jSONObject = new JSONObject();
        }
        mo2224(jSONObject);
        this.f2612 = c1043;
        this.f3414 = c0568;
        this.f3416 = new ArrayList();
        this.f3415 = new ArrayList();
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0686
    /* JADX INFO: renamed from: ﾒ */
    public final synchronized void mo2224(JSONObject jSONObject) {
        if (jSONObject.has(StringFog.decrypt("m8fwMBzI\n", "77WRWWi7wQg=\n"))) {
            AbstractC1030.m2418(jSONObject, jSONObject.optJSONObject(StringFog.decrypt("SZaRhdVf\n", "PeTw7KEseyI=\n")), false);
        }
        super.mo2224(jSONObject);
        this.f3421.mo2224(jSONObject);
        this.f3420.mo2224(jSONObject);
        this.f3419.mo2224(jSONObject);
        this.f3418.mo2224(jSONObject);
    }
}
