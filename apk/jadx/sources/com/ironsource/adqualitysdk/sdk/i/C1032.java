package com.ironsource.adqualitysdk.sdk.i;

import android.os.Handler;
import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﻥ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1032 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final C0690 f3645;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final Handler f3646;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public C0453 f3647;

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public static final String f3642 = StringFog.decrypt("R7tnqZ7Tzi5mqHA=\n", "As0Cx+qAq0A=\n");

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public static final String f3641 = StringFog.decrypt("boQXQ0fhXARqgw==\n", "D+djHDeAKXc=\n");

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public static final String f3640 = StringFog.decrypt("WZyR+E/hIG9VmoE=\n", "OP/lpz2EUxo=\n");

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public static final String f3639 = StringFog.decrypt("iXyGKj7Z85ycepY=\n", "6B/ydV2rlv0=\n");

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public static final String f3638 = StringFog.decrypt("cgp82K2T0ptnDGw=\n", "E2kIh97ns+k=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public static final String f3637 = StringFog.decrypt("atgZ81Vtl+l73gk=\n", "C7ttrCYZ+Jk=\n");

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public static final String f3636 = StringFog.decrypt("BHFbBuXAxkMXfVY85Q==\n", "ZRIvWYGltTc=\n");

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f3635 = StringFog.decrypt("FMDRTB2l6YQR/NZnD7D6\n", "daOlE27En+E=\n");

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final HashSet f3644 = new HashSet();

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public final HashSet f3643 = new HashSet();

    public C1032(Handler handler, C0690 c0690) {
        this.f3645 = c0690;
        this.f3646 = handler;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static double m2421() {
        JSONObject jSONObject;
        if (((C0961) AbstractC0953.m2334()).f3411) {
            return 100.0d;
        }
        C0961 c0961 = (C0961) AbstractC0953.m2334();
        synchronized (c0961) {
            jSONObject = c0961.f2613;
        }
        return jSONObject.optDouble(StringFog.decrypt("W/PY\n", "L5aoVrmQxCc=\n"), 5.0d);
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2422(String str, String str2, String str3, String str4, JSONObject jSONObject, boolean z) {
        synchronized (this.f3643) {
            String str5 = str3 + StringFog.decrypt("IQ==\n", "G1oqYsSsjKY=\n") + str2;
            if (!this.f3643.contains(str5) || z || AbstractC0953.m2334().mo2345()) {
                this.f3643.add(str5);
                if (Math.random() * 100.0d >= m2421()) {
                    AbstractC0250.m1991(f3642, StringFog.decrypt("rUE90SZIxW2HT27GN2XEdptHPJIiTMRqnQhjkiNTxWrOXG7CJknSJJ1APNc0Us5ojQ==\n", "6ShOskc6oQQ=\n"));
                    return;
                }
                this.f3645.getClass();
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put(StringFog.decrypt("dM9uMKQ=\n", "Eb0aUcOyANs=\n"), str);
                    jSONObject2.put(StringFog.decrypt("C/Eemvo=\n", "boNz6Z13qxE=\n"), str2);
                    jSONObject2.put(StringFog.decrypt("bgVOK1MM\n", "C3ctRDdp0x0=\n"), str3);
                    if (!TextUtils.isEmpty(str4)) {
                        jSONObject2.put(StringFog.decrypt("pX6XUtM=\n", "wAzkJrgCAR8=\n"), str4);
                    }
                    if (jSONObject != null) {
                        AbstractC1030.m2418(jSONObject2, jSONObject, false);
                    }
                } catch (JSONException e) {
                    String str6 = C0690.f2621;
                    AbstractC0250.m1999(str6, str6, StringFog.decrypt("cGDDRukiNSpRe99Ou2cmPFpgkUT+cScvUnc=\n", "NRKxKZsCVE4=\n"), e, null, false);
                }
                String strDecrypt = StringFog.decrypt("NKrsS3ci3C4=\n", "QNqzLgVQs1w=\n");
                Iterator it = new HashSet(this.f3644).iterator();
                while (it.hasNext()) {
                    JSONObject jSONObjectMo2110 = ((InterfaceC0579) it.next()).mo2110(strDecrypt, jSONObject2);
                    if (jSONObjectMo2110 != null) {
                        AbstractC1030.m2418(jSONObject2, jSONObjectMo2110, false);
                    }
                }
                this.f3645.m2246(StringFog.decrypt("qCV5qWVZgdg=\n", "3FUmzBcr7qo=\n"), jSONObject2);
            }
        }
    }
}
