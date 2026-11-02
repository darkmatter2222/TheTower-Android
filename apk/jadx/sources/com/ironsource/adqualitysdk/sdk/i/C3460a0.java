package com.ironsource.adqualitysdk.sdk.i;

import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes4.dex */
public final class C3460a0 implements InterfaceC0313 {

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ AbstractViewOnLayoutChangeListenerC3462b0 f244;

    public C3460a0(AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0) {
        this.f244 = abstractViewOnLayoutChangeListenerC3462b0;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1857(WebView webView) {
        this.f244.m1862(webView);
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1858(WebView webView, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(AbstractC0115.f622, str);
            jSONObject.put(AbstractC0115.f621, AbstractC0115.f620);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(AbstractC0115.f623, jSONObject);
            AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0 = this.f244;
            abstractViewOnLayoutChangeListenerC3462b0.mo1836(jSONObject2, webView, this, abstractViewOnLayoutChangeListenerC3462b0.mo1863(webView));
        } catch (Exception e) {
            AbstractC1071.m2435(StringFog.decrypt("g4uMQf9cKAuwpo958lU6OA==\n", "1O7uF5Y5X0o=\n"), StringFog.decrypt("rPHzP2ACmNCM4vU5fEXb1YrgoTVkR5XWyenyP3w=\n", "6YOBUBIi+6I=\n"), (Throwable) e, false);
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1859(WebView webView, String str, String str2) {
        WeakReference weakReference;
        String strSubstring = str2.substring(0, str2.indexOf(63));
        String strSubstring2 = str2.substring(str2.indexOf(63) + 1);
        if (strSubstring.equals(StringFog.decrypt("S/k0kjcb\n", "OI1W8VZ+YP0=\n"))) {
            this.f244.m1862(webView);
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("nAHvL8mc\n", "73WNTKj+Uac=\n"))) {
            JSONObject jSONObjectM1861 = AbstractViewOnLayoutChangeListenerC3462b0.m1861(this.f244, strSubstring2);
            AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0 = this.f244;
            abstractViewOnLayoutChangeListenerC3462b0.mo1830(jSONObjectM1861, webView, abstractViewOnLayoutChangeListenerC3462b0.mo1863(webView));
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("dypEovfs\n", "BF4mwZaNMk4=\n"))) {
            JSONObject jSONObjectM1862 = AbstractViewOnLayoutChangeListenerC3462b0.m1861(this.f244, strSubstring2);
            AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b1 = this.f244;
            C3486n0 c3486n0 = abstractViewOnLayoutChangeListenerC3462b1.f250;
            abstractViewOnLayoutChangeListenerC3462b1.mo1832(jSONObjectM1862, webView, (c3486n0 == null || (weakReference = c3486n0.f365.f267) == null) ? null : (InterfaceC3470f0) weakReference.get(), this.f244.mo1863(webView));
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("DqidzzM9\n", "fdz/rFJe1B8=\n"))) {
            JSONObject jSONObjectM1863 = AbstractViewOnLayoutChangeListenerC3462b0.m1861(this.f244, strSubstring2);
            jSONObjectM1863.remove(AbstractC0115.f626);
            AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b2 = this.f244;
            abstractViewOnLayoutChangeListenerC3462b2.mo1826(jSONObjectM1863, webView, abstractViewOnLayoutChangeListenerC3462b2.mo1863(webView));
            return;
        }
        if (strSubstring.equals(StringFog.decrypt("BtSEB5fP\n", "daDmZParD3M=\n"))) {
            JSONObject jSONObjectM1864 = AbstractViewOnLayoutChangeListenerC3462b0.m1861(this.f244, strSubstring2);
            try {
                AbstractC1071.m2433(jSONObjectM1864.optString(StringFog.decrypt("jG/D\n", "+A6k3SQK+mM=\n")), jSONObjectM1864.optString(StringFog.decrypt("5WQkYPM=\n", "gBZJE5SMltk=\n")), jSONObjectM1864.optString(StringFog.decrypt("DNzgotIf\n", "aa6DzbZ6oVs=\n")), jSONObjectM1864.optString(StringFog.decrypt("YwnAr7k=\n", "Bnuz29KAMLE=\n")));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.InterfaceC0313
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void mo1860(WebView webView, String str, boolean z) {
        AbstractC0340.m2057(new X(this, webView, str, z));
    }
}
