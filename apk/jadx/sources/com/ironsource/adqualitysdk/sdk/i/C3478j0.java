package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.j0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3478j0 extends AbstractRunnableC0757 {

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final /* synthetic */ C3480k0 f279;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ WebView f280;

    public C3478j0(C3480k0 c3480k0, WebView webView) {
        this.f279 = c3480k0;
        this.f280 = webView;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractRunnableC0757
    /* JADX INFO: renamed from: ﾒ */
    public final void mo1856() {
        String strReplace;
        JSONObject jSONObject;
        C3480k0 c3480k0 = this.f279;
        c3480k0.getClass();
        String str = C3480k0.f284.f274;
        try {
            String strDecrypt = StringFog.decrypt("AjB+vBwTs1IGPXagCRixSxw2ag==\n", "WWs38lZW8AY=\n");
            C0384 c0384 = ((C0961) AbstractC0953.m2334()).f3419;
            synchronized (c0384) {
                jSONObject = c0384.f2613;
            }
            String strReplace2 = str.replace(strDecrypt, jSONObject.optString(StringFog.decrypt("K99p\n", "QbYHTqxdG20=\n"), c0384.f1849)).replace(StringFog.decrypt("byPIWuWKurVrMthI9Q==\n", "NHiLFajH9fs=\n"), C3480k0.f284.f273);
            strReplace = (c3480k0.f286 ? strReplace2.replace(StringFog.decrypt("su8Un7rqq1Cj5wya\n", "6bRRx+646g8=\n"), C3480k0.f284.f272) : strReplace2.replace(StringFog.decrypt("GjxLLWgCDdkLNFMo\n", "QWcOdTxQTIY=\n"), "")).replace(StringFog.decrypt("yWRB+zFWjojGcFDrNUuWlg==\n", "kj8CtH8Yy8s=\n"), c3480k0.f287);
        } catch (Throwable th) {
            AbstractC0250.m1990(C3480k0.f285, StringFog.decrypt("kfRJRRbgAuj04V5eLrM/6Z3oUU8HtFGm\n", "1IY7KmTAa4Y=\n") + th.getLocalizedMessage());
            strReplace = str;
        }
        AbstractC0340.m2053(new C3476i0(this, AbstractC0413.m2087(strReplace.getBytes())));
    }
}
