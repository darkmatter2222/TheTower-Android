package com.applovin.impl.adview;

import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import com.applovin.impl.c5;
import com.applovin.impl.d8;
import com.applovin.impl.j2;
import com.applovin.impl.l0;
import com.applovin.impl.p0;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.t;
import com.applovin.impl.t8;
import com.applovin.impl.u7;
import com.applovin.impl.v7;
import com.applovin.impl.y4;
import com.applovin.impl.y7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: loaded from: classes2.dex */
public class b extends l0 {
    private static final Set j = Collections.newSetFromMap(new WeakHashMap());
    private static final Object k = new Object();
    private final p c;
    private final com.applovin.impl.sdk.l d;
    private com.applovin.impl.sdk.ad.b e;
    private boolean f;
    private boolean g;
    private final List h;
    private final Object i;

    class a extends y4 {
        a() {
        }

        @Override // com.applovin.impl.y4
        protected Map a() {
            return CollectionUtils.hashMap("name", "AdWebView");
        }
    }

    public b(c cVar, com.applovin.impl.sdk.l lVar, Context context) {
        super(context);
        this.h = new ArrayList();
        this.i = new Object();
        if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified.");
        }
        this.d = lVar;
        this.c = lVar.Q();
        Integer num = (Integer) lVar.a(c5.R6);
        if (num.intValue() > 0) {
            synchronized (k) {
                Set set = j;
                set.add(this);
                u7.a("AdWebView", set.size(), num.intValue(), lVar.E());
            }
        }
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(cVar != null ? cVar : new a());
        setWebChromeClient(new t(cVar != null ? cVar.d() : null, lVar));
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
        if (p0.f() && ((Boolean) lVar.a(c5.m6)).booleanValue()) {
            setWebViewRenderProcessClient(new d(lVar).a());
        }
        setOnTouchListener(new View.OnTouchListener() { // from class: com.applovin.impl.adview.b$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return b.a(view, motionEvent);
            }
        });
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.applovin.impl.adview.b$$ExternalSyntheticLambda1
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f$0.a(view);
            }
        });
    }

    private String a(String str, String str2) {
        if (StringUtils.isValidString(str)) {
            return str.replace("{SOURCE}", str2);
        }
        return null;
    }

    private void a(String str, String str2, String str3, com.applovin.impl.sdk.l lVar, v7 v7Var) {
        String strA = a(str3, str);
        if (StringUtils.isValidString(strA)) {
            if (p.a()) {
                this.c.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + strA);
            }
            loadDataWithBaseURL(str2, strA, "text/html", null, "");
            return;
        }
        String strA2 = a((String) lVar.a(c5.b5), str);
        if (!StringUtils.isValidString(strA2)) {
            if (p.a()) {
                this.c.a("AdWebView", "Rendering webview for VAST ad with resourceURL : " + str);
            }
            loadUrl(str);
            return;
        }
        if (v7Var.x1() && v7Var.isOpenMeasurementEnabled()) {
            strA2 = lVar.g0().a(strA2, j2.a((AppLovinAdImpl) v7Var));
        }
        if (p.a()) {
            this.c.a("AdWebView", "Rendering webview for VAST ad with resourceContents : " + strA2);
        }
        loadDataWithBaseURL(str2, strA2, "text/html", null, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(View view) {
        if (!p.a()) {
            return true;
        }
        this.c.a("AdWebView", "Received a LongClick event.");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        if (view.hasFocus()) {
            return false;
        }
        view.requestFocus();
        return false;
    }

    private void b() {
        synchronized (this.i) {
            Iterator it = this.h.iterator();
            while (it.hasNext()) {
                t8.a(this, (String) it.next(), "AdWebView", this.d);
            }
            this.h.clear();
        }
    }

    public void a(com.applovin.impl.sdk.ad.b bVar) {
        if (this.f) {
            p.h("AdWebView", "Ad can not be loaded in a destroyed webview");
            return;
        }
        this.e = bVar;
        try {
            applySettings(bVar);
            if (u7.a(bVar.getSize())) {
                setVisibility(0);
            }
            bVar.a(SystemClock.elapsedRealtime());
            if (bVar instanceof com.applovin.impl.sdk.ad.a) {
                loadDataWithBaseURL(bVar.l(), ((com.applovin.impl.sdk.ad.a) bVar).h1(), "text/html", null, "");
                if (p.a()) {
                    this.c.a("AdWebView", "AppLovinAd rendered");
                    return;
                }
                return;
            }
            if (bVar instanceof v7) {
                v7 v7Var = (v7) bVar;
                y7 y7VarG1 = v7Var.g1();
                if (y7VarG1 == null) {
                    if (p.a()) {
                        this.c.a("AdWebView", "No companion ad provided.");
                        return;
                    }
                    return;
                }
                d8 d8VarE = y7VarG1.e();
                Uri uriC = d8VarE.c();
                String string = uriC != null ? uriC.toString() : "";
                String strB = d8VarE.b();
                String strI1 = v7Var.i1();
                if (!StringUtils.isValidString(string) && !StringUtils.isValidString(strB)) {
                    if (p.a()) {
                        this.c.b("AdWebView", "Unable to load companion ad. No resources provided.");
                        return;
                    }
                    return;
                }
                if (d8VarE.d() == d8.a.STATIC) {
                    if (p.a()) {
                        this.c.a("AdWebView", "Rendering WebView for static VAST ad");
                    }
                    String strA = a((String) this.d.a(c5.a5), string);
                    if (v7Var.x1() && v7Var.isOpenMeasurementEnabled() && v7Var.y1()) {
                        strA = this.d.g0().a(strA, j2.a((AppLovinAdImpl) bVar));
                    }
                    loadDataWithBaseURL(bVar.l(), strA, "text/html", null, "");
                    return;
                }
                if (d8VarE.d() == d8.a.HTML) {
                    if (StringUtils.isValidString(strB)) {
                        String strA2 = a(strI1, strB);
                        String str = StringUtils.isValidString(strA2) ? strA2 : strB;
                        if (p.a()) {
                            this.c.a("AdWebView", "Rendering WebView for HTML VAST ad with resourceContents: " + str);
                        }
                        loadDataWithBaseURL(bVar.l(), str, "text/html", null, "");
                        return;
                    }
                    if (StringUtils.isValidString(string)) {
                        if (p.a()) {
                            this.c.a("AdWebView", "Preparing to load HTML VAST ad resourceUri");
                        }
                        a(string, bVar.l(), strI1, this.d, v7Var);
                        return;
                    }
                    return;
                }
                String str2 = string;
                if (d8VarE.d() != d8.a.IFRAME) {
                    if (p.a()) {
                        this.c.b("AdWebView", "Failed to render VAST companion ad of invalid type");
                    }
                } else if (StringUtils.isValidString(str2)) {
                    if (p.a()) {
                        this.c.a("AdWebView", "Preparing to load iFrame VAST ad resourceUri");
                    }
                    a(str2, bVar.l(), strI1, this.d, v7Var);
                } else if (StringUtils.isValidString(strB)) {
                    String strA3 = a(strI1, strB);
                    String str3 = StringUtils.isValidString(strA3) ? strA3 : strB;
                    if (p.a()) {
                        this.c.a("AdWebView", "Rendering WebView for iFrame VAST ad with resourceContents: " + str3);
                    }
                    loadDataWithBaseURL(bVar.l(), str3, "text/html", null, "");
                }
            }
        } catch (Throwable th) {
            throw new RuntimeException("Unable to render AppLovin ad (" + (bVar != null ? String.valueOf(bVar.getAdIdNumber()) : AbstractJsonLexerKt.NULL) + ") - " + th);
        }
    }

    public void a(String str) {
        if (!((Boolean) this.d.a(c5.J6)).booleanValue()) {
            t8.a(this, str, "AdWebView", this.d);
        } else {
            if (this.g) {
                t8.a(this, str, "AdWebView", this.d);
                return;
            }
            synchronized (this.h) {
                this.h.add(str);
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void computeScroll() {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f = true;
        this.g = false;
        super.destroy();
    }

    public com.applovin.impl.sdk.ad.b getCurrentAd() {
        return this.e;
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
    }

    public void setAdHtmlLoaded(boolean z) {
        this.g = z;
        if (z && ((Boolean) this.d.a(c5.J6)).booleanValue()) {
            b();
        }
    }
}
