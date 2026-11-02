package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.ﾆ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class C1083 implements InterfaceC0122 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ C1043 f3818;

    public C1083(C1043 c1043) {
        this.f3818 = c1043;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0122
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1911(String str) {
        C1043 c1043 = this.f3818;
        c1043.getClass();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            c1043.f3677 = new JSONObject(str);
        } catch (JSONException unused) {
        }
    }
}
