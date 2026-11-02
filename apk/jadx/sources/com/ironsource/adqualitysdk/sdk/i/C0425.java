package com.ironsource.adqualitysdk.sdk.i;

import android.content.Context;
import android.os.SystemClock;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.HashMap;
import java.util.HashSet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ە, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0425 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C0412 f1967;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1968;

    public C0425(C0412 c0412, boolean z) {
        this.f1967 = c0412;
        this.f1968 = z;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0077 A[Catch: JSONException -> 0x00ae, TryCatch #2 {JSONException -> 0x00ae, blocks: (B:11:0x0068, B:12:0x0073, B:14:0x0077, B:15:0x0082, B:17:0x009b), top: B:43:0x0068 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x009b A[Catch: JSONException -> 0x00ae, TRY_LEAVE, TryCatch #2 {JSONException -> 0x00ae, blocks: (B:11:0x0068, B:12:0x0073, B:14:0x0077, B:15:0x0082, B:17:0x009b), top: B:43:0x0068 }] */
    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        String strDecrypt;
        HashMap map;
        long j;
        C0690 c0690 = this.f1967.f1942.f1941.f1918.f1879.f1354;
        String strDecrypt2 = StringFog.decrypt("YPlwvdY1tA==\n", "FIkv1LhcwHs=\n");
        C0386 c0386 = this.f1967.f1942.f1941.f1918;
        if (c0386.f1882) {
            strDecrypt = c0386.f1881;
            if (strDecrypt == null) {
                strDecrypt = StringFog.decrypt("aOScIA==\n", "BpHwTC2VeF8=\n");
            }
        } else {
            strDecrypt = null;
        }
        C0392 c0392 = this.f1967.f1942.f1941.f1918.f1879.f1357;
        new C1038(this.f1967.f1942.f1941.f1918.f1879.f1359);
        C0272 c0272 = this.f1967.f1942.f1941.f1918.f1879;
        Context context = c0272.f1359;
        boolean z = this.f1968;
        r rVarM2011 = C0272.m2011(c0272);
        String str = AbstractC0245.f1184;
        JSONObject jSONObject = new JSONObject();
        if (z) {
            try {
                jSONObject.put(StringFog.decrypt("0H8=\n", "tgzyP+Wu55c=\n"), true);
                if (rVarM2011.f371) {
                    jSONObject.put(StringFog.decrypt("WdL++xs=\n", "OKeKkn9Ci90=\n"), true);
                }
                jSONObject.put(StringFog.decrypt("5OdFoQ==\n", "lJIsxXzR2Rw=\n"), strDecrypt);
                j = ((C0961) AbstractC0953.m2334()).f3407;
                if (j > 0) {
                    String strDecrypt3 = StringFog.decrypt("F/lo\n", "fosM1Ezel70=\n");
                    String str2 = AbstractC0129.f814;
                    jSONObject.put(strDecrypt3, SystemClock.elapsedRealtime() - j);
                }
            } catch (JSONException e) {
                String str3 = AbstractC0245.f1184;
                AbstractC0250.m1999(str3, str3, StringFog.decrypt("Dp3ulBenMtEujuiSC+Bx1y6D+YsK9SWDIoH1j0XNAuwF\n", "S++c+2WHUaM=\n"), e, null, false);
            }
        } else {
            if (rVarM2011.f371) {
                jSONObject.put(StringFog.decrypt("WdL++xs=\n", "OKeKkn9Ci90=\n"), true);
            }
            jSONObject.put(StringFog.decrypt("5OdFoQ==\n", "lJIsxXzR2Rw=\n"), strDecrypt);
            j = ((C0961) AbstractC0953.m2334()).f3407;
            if (j > 0) {
                String strDecrypt4 = StringFog.decrypt("F/lo\n", "fosM1Ezel70=\n");
                String str4 = AbstractC0129.f814;
                jSONObject.put(strDecrypt4, SystemClock.elapsedRealtime() - j);
            }
        }
        AbstractC1030.m2418(jSONObject, c0392.m2077(), false);
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        try {
            synchronized (c0392) {
                map = c0392.f1903;
            }
            for (String str5 : new HashSet(map.keySet())) {
                jSONObject3.put(str5, (String) c0392.m2078().get(str5));
            }
            jSONObject2.put(StringFog.decrypt("vBIt6w==\n", "2WBfmJxiDNU=\n"), jSONObject3);
        } catch (JSONException e2) {
            String str6 = C0392.f1894;
            AbstractC0250.m1999(str6, str6, StringFog.decrypt("KB0/IRGLuxEJBiMpQ8i1GwMKLjoM2foQHx0iPBA=\n", "bW9NTmOr2nU=\n"), e2, null, false);
        }
        AbstractC1030.m2418(jSONObject, jSONObject2, false);
        c0690.m2246(strDecrypt2, jSONObject);
        C0386 c0387 = this.f1967.f1942.f1941.f1918;
        if (c0387.f1880) {
            C0690 c0691 = c0387.f1879.f1354;
            c0691.getClass();
            AbstractC0340.m2054(new C0806(c0691));
        }
    }
}
