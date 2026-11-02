package com.ironsource.adqualitysdk.sdk.i;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class B extends AbstractC0890 {

    /* JADX INFO: renamed from: ﭸ, reason: contains not printable characters */
    public static final String f80 = StringFog.decrypt("ewoHcnGmH8NMDQZpVbA=\n", "LWNiBTDCbIs=\n");

    /* JADX INFO: renamed from: ﮌ, reason: contains not printable characters */
    public A f82;

    /* JADX INFO: renamed from: ﮐ, reason: contains not printable characters */
    public Class f83;

    /* JADX INFO: renamed from: ﺙ, reason: contains not printable characters */
    public final C3498w f86;

    /* JADX INFO: renamed from: ﻐ, reason: contains not printable characters */
    public C0657 f88;

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public final WeakHashMap f89 = new WeakHashMap();

    /* JADX INFO: renamed from: ﱡ, reason: contains not printable characters */
    public final WeakHashMap f85 = new WeakHashMap();

    /* JADX INFO: renamed from: ﱟ, reason: contains not printable characters */
    public final WeakHashMap f84 = new WeakHashMap();

    /* JADX INFO: renamed from: ﮉ, reason: contains not printable characters */
    public final ArrayList f81 = new ArrayList();

    /* JADX INFO: renamed from: ﻏ, reason: contains not printable characters */
    public final ViewOnLayoutChangeListenerC3497v f87 = new ViewOnLayoutChangeListenerC3497v(this);

    public B(JSONObject jSONObject, C0657 c0657) {
        this.f82 = new A();
        this.f82 = new A(jSONObject);
        this.f88 = c0657;
        C3498w c3498w = new C3498w(this);
        this.f86 = c3498w;
        C0733.m2256().m2258(c3498w);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0095  */
    /* JADX WARN: Code duplicated, block: B:30:0x0099  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:33:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:36:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:55:0x0158 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x0158 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00df A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static void m1807(B b, ArrayList arrayList) {
        ArrayList<WebView> arrayList2;
        C1014 c1014;
        C0116 c0116;
        C0983 c0983;
        b.getClass();
        for (int i = 0; i < arrayList.size(); i++) {
            View view = (View) arrayList.get(i);
            A a = b.f82;
            if (b.f88 != null) {
                List list = a.f62;
                if (list == null || list.isEmpty()) {
                    C0657 c0657 = b.f88;
                    c1014 = c0657.f2536;
                    c0116 = c0657.f2535;
                    c0983 = c0116.f654;
                    if (c1014.m2401(c0983, c0983.f3496, c0116, Collections.singletonList(view)).m1987()) {
                        if (!a.f71) {
                            arrayList2 = new ArrayList();
                            C.m1820(view, WebView.class, null, false, a.f69, a.f65, a.f63, arrayList2);
                            if (view instanceof WebView) {
                                arrayList2.add((WebView) view);
                            }
                            for (WebView webView : arrayList2) {
                                if (b.f85.get(webView) != null && webView.getClass().getName().startsWith(a.f75)) {
                                    C3464c0 c3464c0 = new C3464c0();
                                    b.f89.put(webView, c3464c0);
                                    String str = a.f74;
                                    List listAsList = TextUtils.isEmpty(a.f72) ? null : Arrays.asList(a.f72.split(StringFog.decrypt("Rw==\n", "axqd/vhW+Mc=\n")));
                                    boolean z = a.f68;
                                    boolean z2 = a.f73;
                                    boolean z3 = a.f67;
                                    c3464c0.f252 = z;
                                    c3464c0.f248 = new C3480k0(str, z3);
                                    c3464c0.f251 = z2;
                                    c3464c0.f254 = listAsList;
                                    c3464c0.f3174 = new C3501z(b);
                                    c3464c0.m1864(webView);
                                    c3464c0.f253 = Integer.toHexString(webView.hashCode());
                                    b.f85.put(webView, b);
                                }
                            }
                        } else if (((B) b.f85.get(view)) == null) {
                            b.f85.put(view, b);
                            b.mo1830(new JSONObject(), view, null);
                        } else if (a.f70) {
                            b.mo1830(new JSONObject(), view, null);
                        }
                    }
                } else {
                    String name = view.getClass().getPackage().getName();
                    Iterator it = list.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String strJoin = (String) it.next();
                            if (TextUtils.isEmpty(strJoin)) {
                                strJoin = null;
                            } else {
                                List listAsList2 = Arrays.asList(strJoin.split(StringFog.decrypt("eLy7\n", "I5LmYe4xveg=\n")));
                                if (listAsList2.size() > 3) {
                                    strJoin = TextUtils.join(StringFog.decrypt("Eg==\n", "PGWWbsMpUvo=\n"), listAsList2.subList(0, 3));
                                }
                            }
                            if (!TextUtils.isEmpty(strJoin) && name.startsWith(strJoin)) {
                                C0657 c0658 = b.f88;
                                c1014 = c0658.f2536;
                                c0116 = c0658.f2535;
                                c0983 = c0116.f654;
                                if (c1014.m2401(c0983, c0983.f3496, c0116, Collections.singletonList(view)).m1987()) {
                                    if (!a.f71) {
                                        arrayList2 = new ArrayList();
                                        C.m1820(view, WebView.class, null, false, a.f69, a.f65, a.f63, arrayList2);
                                        if (view instanceof WebView) {
                                            arrayList2.add((WebView) view);
                                        }
                                        while (r3.hasNext()) {
                                            if (b.f85.get(webView) != null) {
                                            }
                                        }
                                    } else if (((B) b.f85.get(view)) == null) {
                                        b.f85.put(view, b);
                                        b.mo1830(new JSONObject(), view, null);
                                    } else if (a.f70) {
                                        b.mo1830(new JSONObject(), view, null);
                                    }
                                }
                            }
                        }
                    }
                }
            } else if (!a.f71) {
                arrayList2 = new ArrayList();
                C.m1820(view, WebView.class, null, false, a.f69, a.f65, a.f63, arrayList2);
                if (view instanceof WebView) {
                    arrayList2.add((WebView) view);
                }
                while (r3.hasNext()) {
                    if (b.f85.get(webView) != null) {
                    }
                }
            } else if (((B) b.f85.get(view)) == null) {
                b.f85.put(view, b);
                b.mo1830(new JSONObject(), view, null);
            } else if (a.f70) {
                b.mo1830(new JSONObject(), view, null);
            }
        }
    }

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public final void m1808(View view) {
        Activity activityM1821;
        try {
            if (this.f83 == null) {
                this.f83 = Class.forName(this.f82.f76);
            }
            Activity activityMo1895 = AbstractC1081.m2437().mo1895();
            if (activityMo1895 == null) {
                return;
            }
            if (this.f82.f64.isEmpty() || (activityM1821 = C.m1821(view)) == null || !this.f82.f64.contains(activityM1821.getClass().getName())) {
                AbstractC0340.m2057(new C3500y(this, activityMo1895, view));
            }
        } catch (Throwable th) {
            AbstractC0250.m1990(f80, StringFog.decrypt("nRB6yWnYsGmsFmHIfNi0YLkRe4Y=\n", "2GIIphv41ww=\n") + this.f82.f76 + StringFog.decrypt("arCw\n", "Sp2Qk3fm888=\n") + th.getLocalizedMessage());
            m1810();
        }
    }

    @Override // com.ironsource.adqualitysdk.sdk.i.AbstractC0890
    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* bridge */ /* synthetic */ String mo1809(Object obj) {
        return null;
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final void m1810() {
        this.f3174 = null;
        C0733.m2256().m2257(this.f86);
        HashSet hashSet = new HashSet(this.f84.keySet());
        this.f84.clear();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((View) it.next()).removeOnLayoutChangeListener(this.f87);
        }
    }
}
