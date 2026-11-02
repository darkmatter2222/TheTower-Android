package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ᒦ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C0563 implements InterfaceC0142 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C0429 f2306;

    public C0563(C0429 c0429) {
        this.f2306 = c0429;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0142
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1920() {
        String strM2308;
        AbstractC0953 abstractC0953M2334 = AbstractC0953.m2334();
        C0940 c0940 = this.f2306.f1972.f1352;
        C1043 c1043 = ((C0961) abstractC0953M2334).f2612;
        c1043.getClass();
        String strDecrypt = StringFog.decrypt("a2p3lR3PQ0F0\n", "HxgW9nitIiI=\n");
        String strDecrypt2 = StringFog.decrypt("TrCU\n", "eZ6kj3AD2ZU=\n");
        C1083 c1083 = new C1083(c1043);
        c0940.getClass();
        C0901 c0901 = new C0901(strDecrypt, strDecrypt2);
        if (((C0961) AbstractC0953.m2334()).f3419.m2064()) {
            String strM2065 = ((C0961) AbstractC0953.m2334()).f3419.m2065(strDecrypt);
            if (TextUtils.isEmpty(strM2065)) {
                strM2308 = null;
            } else {
                c0901 = new C0868(strDecrypt, strDecrypt2, strM2065);
                strM2308 = c0940.m2308(c0901, c1083);
            }
        } else {
            strM2308 = c0940.m2308(c0901, c1083);
        }
        if (TextUtils.isEmpty(strM2308)) {
            return;
        }
        try {
            c1043.f3677 = new JSONObject(strM2308);
        } catch (JSONException unused) {
        }
    }
}
