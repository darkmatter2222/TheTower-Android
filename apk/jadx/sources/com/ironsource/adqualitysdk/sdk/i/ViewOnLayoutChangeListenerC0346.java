package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.օ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public final class ViewOnLayoutChangeListenerC0346 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0306 f1619;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Object f1620;

    public ViewOnLayoutChangeListenerC0346(AbstractC0306 abstractC0306, Object obj) {
        this.f1619 = abstractC0306;
        this.f1620 = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            ArrayList arrayList = new ArrayList();
            this.f1619.mo1816(this.f1620, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            View viewMo1813 = this.f1619.mo1813(this.f1620);
            if (viewMo1813 != null && !this.f1619.f1543.f1589) {
                viewMo1813.removeOnLayoutChangeListener(this);
            }
            this.f1619.m2046(this.f1620, arrayList);
            this.f1619.mo1838(new JSONObject(), (WebView) arrayList.get(0), this.f1620);
        } catch (Throwable th) {
            AbstractC1071.m2435(StringFog.decrypt("IgDA1Qf72wsBG+3dPPnHCggQ3g==\n", "ZHWsuXSYqW4=\n"), StringFog.decrypt("pb3gDTuVZGHAoPwuKMxiepSM+gMn0mg=\n", "4M+SYkm1DQ8=\n"), th, false);
        }
    }
}
