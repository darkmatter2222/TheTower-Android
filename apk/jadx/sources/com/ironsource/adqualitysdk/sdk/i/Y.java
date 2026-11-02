package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class Y extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final /* synthetic */ Z f236;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ Object f237;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ String f238;

    public Y(Z z, String str, Object obj) {
        this.f236 = z;
        this.f238 = str;
        this.f237 = obj;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        WeakReference weakReference;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AbstractC0115.f614, this.f236.f241);
            jSONObject.put(AbstractC0115.f613, StringFog.decrypt("X7Y4\n", "KMBbtUEhW9U=\n"));
            jSONObject.put(AbstractC0115.f625, this.f238);
            if (this.f236.f240) {
                jSONObject.put(AbstractC0115.f624, true);
            }
        } catch (JSONException e) {
            AbstractC0250.m1990(StringFog.decrypt("ZvWT33xeYe5V2JDncVdz3Q==\n", "MZDxiRU7Fq8=\n"), StringFog.decrypt("FYa5Nd8OGGI1lb8zw0lbczydqDGNRAh/Ps7r\n", "UPTLWq0uexA=\n") + e.getLocalizedMessage());
        }
        Z z = this.f236;
        AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0 = z.f239.f244;
        WebView webView = z.f242;
        C3486n0 c3486n0 = abstractViewOnLayoutChangeListenerC3462b0.f250;
        abstractViewOnLayoutChangeListenerC3462b0.mo1837(jSONObject, webView, (c3486n0 == null || (weakReference = c3486n0.f365.f267) == null) ? null : (InterfaceC3470f0) weakReference.get(), this.f237);
    }
}
