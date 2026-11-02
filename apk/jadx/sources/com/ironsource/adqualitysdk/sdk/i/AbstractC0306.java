package com.ironsource.adqualitysdk.sdk.i;

import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.є, reason: contains not printable characters */
/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractC0306 extends AbstractC0890 {

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public C0692 f1544;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public AbstractViewOnLayoutChangeListenerC3462b0 f1545;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final WeakHashMap f1546 = new WeakHashMap();

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public C0331 f1543 = new C0331();

    static {
        StringFog.decrypt("AlYXbGwwLhAhTTpkVzIyEShGCQ==\n", "RCN7AB9TXHU=\n");
    }

    public AbstractC0306(C0692 c0692) {
        this.f1544 = c0692;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m2043(AbstractC0306 abstractC0306, JSONObject jSONObject, WebView webView, Object obj) {
        super.mo1830(jSONObject, webView, obj);
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final void m2044(Object obj) {
        JSONObject jSONObject = new JSONObject();
        C3486n0 c3486n0 = m2045(obj).f250;
        mo1833(jSONObject, c3486n0 != null ? (WebView) c3486n0.f365.f268.get() : null, obj);
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final AbstractViewOnLayoutChangeListenerC3462b0 m2045(Object obj) {
        return this.f1543.f1585 ? (AbstractViewOnLayoutChangeListenerC3462b0) this.f1546.get(obj) : this.f1545;
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0890, com.ironsource.adqualitysdk.sdk.i.InterfaceC0522
    /* JADX INFO: renamed from: ｋ */
    public final void mo1830(JSONObject jSONObject, View view, Object obj) {
        mo1828(jSONObject, (WebView) view, obj);
    }

    /* JADX INFO: renamed from: ﾇ */
    public abstract View mo1813(Object obj);

    /* JADX INFO: renamed from: ﾇ */
    public abstract AbstractViewOnLayoutChangeListenerC3462b0 mo1814();

    /* JADX INFO: renamed from: ﾇ */
    public abstract void mo1816(Object obj, ArrayList arrayList);

    /* JADX INFO: renamed from: ﾒ */
    public abstract InterfaceC0522 mo1817();

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0890
    /* JADX INFO: renamed from: ﾒ */
    public final String mo1809(Object obj) {
        return m2045(obj).f253;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2046(Object obj, ArrayList arrayList) {
        AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0M2045 = m2045(obj);
        abstractViewOnLayoutChangeListenerC3462b0M2045.getClass();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            abstractViewOnLayoutChangeListenerC3462b0M2045.m1864((WebView) it.next());
        }
        if (this.f1543.f1591) {
            m2045(obj).f253 = Integer.toHexString(((WebView) arrayList.get(0)).hashCode());
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m2047(JSONObject jSONObject, Object obj, String str) {
        C0331 c0331 = this.f1543;
        boolean z = c0331.f1590 && !TextUtils.isEmpty(c0331.f1593);
        AbstractViewOnLayoutChangeListenerC3462b0 abstractViewOnLayoutChangeListenerC3462b0M2045 = m2045(obj);
        if (abstractViewOnLayoutChangeListenerC3462b0M2045 == null) {
            abstractViewOnLayoutChangeListenerC3462b0M2045 = mo1814();
            if (this.f1543.f1585) {
                this.f1546.put(obj, abstractViewOnLayoutChangeListenerC3462b0M2045);
            } else {
                this.f1545 = abstractViewOnLayoutChangeListenerC3462b0M2045;
            }
            abstractViewOnLayoutChangeListenerC3462b0M2045.f3174 = mo1817();
        }
        for (WebView webView : abstractViewOnLayoutChangeListenerC3462b0M2045.f249.keySet()) {
            webView.removeOnLayoutChangeListener(abstractViewOnLayoutChangeListenerC3462b0M2045);
            C3486n0 c3486n0 = (C3486n0) abstractViewOnLayoutChangeListenerC3462b0M2045.f249.get(webView);
            Iterator it = abstractViewOnLayoutChangeListenerC3462b0M2045.f247.iterator();
            while (it.hasNext()) {
                c3486n0.f364.remove((InterfaceC0313) it.next());
            }
        }
        abstractViewOnLayoutChangeListenerC3462b0M2045.f247.clear();
        abstractViewOnLayoutChangeListenerC3462b0M2045.f250 = null;
        abstractViewOnLayoutChangeListenerC3462b0M2045.f249.clear();
        C0331 c0332 = this.f1543;
        String str2 = c0332.f1593;
        List list = c0332.f1592;
        boolean z2 = c0332.f1587;
        boolean z3 = c0332.f1586;
        abstractViewOnLayoutChangeListenerC3462b0M2045.f252 = z;
        abstractViewOnLayoutChangeListenerC3462b0M2045.f248 = new C3480k0(str2, z3);
        abstractViewOnLayoutChangeListenerC3462b0M2045.f251 = z2;
        abstractViewOnLayoutChangeListenerC3462b0M2045.f254 = list;
        abstractViewOnLayoutChangeListenerC3462b0M2045.f253 = str;
        if (!this.f1543.f1588) {
            super.mo1830(jSONObject, null, obj);
            return;
        }
        ArrayList arrayList = new ArrayList();
        mo1816(obj, arrayList);
        List arrayList2 = new ArrayList();
        C0692 c0692 = this.f1544;
        if (c0692 != null) {
            try {
                C1014 c1014 = c0692.f2642;
                C0116 c0116 = c0692.f2640;
                C0983 c0983 = c0116.f654;
                arrayList2 = (List) c1014.m2401(c0983, c0983.f3496, c0116, Collections.singletonList(obj)).f1193;
            } catch (Exception unused) {
                AbstractC0250.m1990(StringFog.decrypt("pZG4L38hHf27naY0bio56w==\n", "9/TVQAtEXJk=\n"), StringFog.decrypt("CL7st49BRzQ5uPe2mkFXNC+a972KEgA3P6Pz+A==\n", "Tcye2P1hIFE=\n") + c0692.f2641);
                arrayList2 = null;
            }
        }
        String str3 = AbstractC0129.f814;
        HashSet hashSet = new HashSet(arrayList);
        if (arrayList2 != null) {
            hashSet.addAll(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList(hashSet);
        if (arrayList3.isEmpty() || this.f1543.f1589) {
            View viewMo1813 = mo1813(obj);
            if (viewMo1813 != null) {
                viewMo1813.addOnLayoutChangeListener(new ViewOnLayoutChangeListenerC0346(this, obj));
            }
            if (arrayList3.isEmpty()) {
                super.mo1830(jSONObject, null, obj);
                return;
            }
        }
        if (this.f1543.f1584) {
            AbstractC0340.f1611.post(new RunnableC0336(this, obj, arrayList3, jSONObject));
        } else {
            m2046(obj, arrayList3);
            super.mo1830(jSONObject, (WebView) arrayList3.get(0), obj);
        }
    }
}
