package com.applovin.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class s5 extends q5 {
    private final v7 r;

    class a implements e0.a {
        final /* synthetic */ d8 a;

        a(d8 d8Var) {
            this.a = d8Var;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                this.a.a(uri);
                s5.this.r.b(true);
                return;
            }
            com.applovin.impl.sdk.p pVar = s5.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                s5 s5Var = s5.this;
                s5Var.c.b(s5Var.b, "Failed to cache static companion ad");
            }
        }
    }

    class b implements q5.c {
        final /* synthetic */ d8 a;

        b(d8 d8Var) {
            this.a = d8Var;
        }

        @Override // com.applovin.impl.q5.c
        public void a(String str) {
            this.a.a(str);
            s5.this.r.b(true);
        }
    }

    class c implements q5.c {
        final /* synthetic */ d8 a;

        c(d8 d8Var) {
            this.a = d8Var;
        }

        @Override // com.applovin.impl.q5.c
        public void a(String str) {
            this.a.a(str);
            s5.this.r.b(true);
        }
    }

    class d implements e0.a {
        final /* synthetic */ j8 a;

        d(j8 j8Var) {
            this.a = j8Var;
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                com.applovin.impl.sdk.p pVar = s5.this.c;
                if (com.applovin.impl.sdk.p.a()) {
                    s5 s5Var = s5.this;
                    s5Var.c.a(s5Var.b, "Video file successfully cached into: " + uri);
                }
                this.a.a(uri);
                return;
            }
            com.applovin.impl.sdk.p pVar2 = s5.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                s5 s5Var2 = s5.this;
                s5Var2.c.b(s5Var2.b, "Failed to cache video file: " + this.a);
            }
        }
    }

    class e implements q5.c {
        e() {
        }

        @Override // com.applovin.impl.q5.c
        public void a(String str) {
            if (s5.this.r.isOpenMeasurementEnabled()) {
                str = s5.this.a.g0().a(str, j2.a((AppLovinAdImpl) s5.this.g));
            }
            s5.this.r.d(str);
            com.applovin.impl.sdk.p pVar = s5.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                s5 s5Var = s5.this;
                s5Var.c.a(s5Var.b, "Finish caching HTML template " + s5.this.r.i1() + " for ad #" + s5.this.r.getAdIdNumber());
            }
        }
    }

    public s5(v7 v7Var, com.applovin.impl.sdk.l lVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheVastAd", v7Var, lVar, appLovinAdLoadListener);
        this.r = v7Var;
    }

    private String c(String str) {
        for (String str2 : StringUtils.getRegexMatches(StringUtils.match(str, (String) this.a.a(c5.u5)), 1)) {
            if (!TextUtils.isEmpty(str2)) {
                Uri uriA = a(str2, Collections.EMPTY_LIST, false);
                if (uriA != null) {
                    str = str.replace(str2, uriA.toString());
                    this.g.a(uriA.toString(), str2);
                } else if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Failed to cache JavaScript resource: " + str2);
                }
            }
        }
        return str;
    }

    private void j() {
        if (i()) {
            return;
        }
        if (!this.r.u1()) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Companion ad caching disabled. Skipping...");
                return;
            }
            return;
        }
        y7 y7VarG1 = this.r.g1();
        if (y7VarG1 == null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "No companion ad provided. Skipping...");
                return;
            }
            return;
        }
        d8 d8VarE = y7VarG1.e();
        if (d8VarE == null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Failed to retrieve non-video resources from companion ad. Skipping...");
                return;
            }
            return;
        }
        Uri uriC = d8VarE.c();
        String string = uriC != null ? uriC.toString() : "";
        String strB = d8VarE.b();
        if (!URLUtil.isValidUrl(string) && !StringUtils.isValidString(strB)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.k(this.b, "Companion ad does not have any resources attached. Skipping...");
                return;
            }
            return;
        }
        if (d8VarE.d() == d8.a.STATIC) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Caching static companion ad at " + string + "...");
            }
            Uri uriA = a(string, Collections.EMPTY_LIST, false);
            if (uriA != null) {
                d8VarE.a(uriA);
                this.r.b(true);
                return;
            } else {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Failed to cache static companion ad");
                    return;
                }
                return;
            }
        }
        if (d8VarE.d() != d8.a.HTML) {
            if (d8VarE.d() == d8.a.IFRAME && com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Skip caching of iFrame resource...");
                return;
            }
            return;
        }
        if (!StringUtils.isValidString(string)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Caching provided HTML for companion ad. No fetch required. HTML: " + strB);
            }
            if (((Boolean) this.a.a(c5.t5)).booleanValue()) {
                strB = c(strB);
            }
            d8VarE.a(a(strB, Collections.EMPTY_LIST, this.r));
            this.r.b(true);
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Begin caching HTML companion ad. Fetching from " + string + "...");
        }
        String strC = c(string, (List) null, false);
        if (!StringUtils.isValidString(strC)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Unable to load companion ad resources from " + string);
            }
        } else {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "HTML fetched. Caching HTML now...");
            }
            d8VarE.a(a(strC, Collections.EMPTY_LIST, this.r));
            this.r.b(true);
        }
    }

    private void k() {
        if (i() || !h8.a(this.r)) {
            return;
        }
        String strI1 = this.r.i1();
        if (!StringUtils.isValidString(strI1)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Unable to load HTML template");
                return;
            }
            return;
        }
        String strA = a(strI1, this.r.V(), this.g);
        if (this.r.isOpenMeasurementEnabled()) {
            strA = this.a.g0().a(strA, j2.a((AppLovinAdImpl) this.g));
        }
        this.r.d(strA);
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Finish caching HTML template " + this.r.i1() + " for ad #" + this.r.getAdIdNumber());
        }
    }

    private void l() {
        j8 j8VarQ1;
        Uri uriE;
        if (i()) {
            return;
        }
        if (!this.r.v1()) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Video caching disabled. Skipping...");
            }
        } else {
            if (this.r.p1() == null || (j8VarQ1 = this.r.q1()) == null || (uriE = j8VarQ1.e()) == null) {
                return;
            }
            Uri uriB = b(uriE.toString(), Collections.EMPTY_LIST, false);
            if (uriB != null) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "Video file successfully cached into: " + uriB);
                }
                j8VarQ1.a(uriB);
            } else if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Failed to cache video file: " + j8VarQ1);
            }
        }
    }

    private c0 m() {
        if (!this.r.u1()) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Companion ad caching disabled. Skipping...");
            }
            return null;
        }
        y7 y7VarG1 = this.r.g1();
        if (y7VarG1 == null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "No companion ad provided. Skipping...");
            }
            return null;
        }
        d8 d8VarE = y7VarG1.e();
        if (d8VarE == null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.b(this.b, "Failed to retrieve non-video resources from companion ad. Skipping...");
            }
            return null;
        }
        Uri uriC = d8VarE.c();
        String string = uriC != null ? uriC.toString() : "";
        String strB = d8VarE.b();
        if (URLUtil.isValidUrl(string) || StringUtils.isValidString(strB)) {
            if (d8VarE.d() == d8.a.STATIC) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "Caching static companion ad at " + string + "...");
                }
                return new e0(string, this.r, Collections.EMPTY_LIST, false, this.i, this.a, new a(d8VarE));
            }
            if (d8VarE.d() == d8.a.HTML) {
                if (!StringUtils.isValidString(string)) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.c.a(this.b, "Caching provided HTML for companion ad. No fetch required. HTML: " + strB);
                    }
                    return a(strB, Collections.EMPTY_LIST, new c(d8VarE));
                }
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "Begin caching HTML companion ad. Fetching from " + string + "...");
                }
                String strC = c(string, (List) null, false);
                if (StringUtils.isValidString(strC)) {
                    if (com.applovin.impl.sdk.p.a()) {
                        this.c.a(this.b, "HTML fetched. Caching HTML now...");
                    }
                    return a(strC, Collections.EMPTY_LIST, new b(d8VarE));
                }
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Unable to load companion ad resources from " + string);
                }
            } else if (d8VarE.d() == d8.a.IFRAME && com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Skip caching of iFrame resource...");
            }
        } else if (com.applovin.impl.sdk.p.a()) {
            this.c.k(this.b, "Companion ad does not have any resources attached. Skipping...");
        }
        return null;
    }

    @Override // com.applovin.impl.q5
    void a(int i) {
        this.r.getAdEventTracker().f();
        super.a(i);
    }

    @Override // com.applovin.impl.q5
    void e() {
        this.r.getAdEventTracker().h();
        super.e();
    }

    protected d0 n() {
        if (!TextUtils.isEmpty(this.r.i1())) {
            return a(this.r.i1(), this.r.V(), new e());
        }
        if (!com.applovin.impl.sdk.p.a()) {
            return null;
        }
        this.c.a(this.b, "Unable to load HTML template");
        return null;
    }

    protected e0 o() {
        j8 j8VarQ1;
        Uri uriE;
        if (!this.r.v1()) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Video caching disabled. Skipping...");
            }
            return null;
        }
        if (this.r.p1() == null || (j8VarQ1 = this.r.q1()) == null || (uriE = j8VarQ1.e()) == null) {
            return null;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Caching video file " + j8VarQ1 + " creative...");
        }
        return a(uriE.toString(), Collections.EMPTY_LIST, false, new d(j8VarQ1));
    }

    @Override // com.applovin.impl.q5, java.lang.Runnable
    public void run() {
        super.run();
        boolean zD0 = this.r.D0();
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Begin caching for VAST " + (zD0 ? "streaming " : "") + "ad #" + this.g.getAdIdNumber() + "...");
        }
        if (zD0) {
            if (!((Boolean) this.a.a(c5.L0)).booleanValue()) {
                if (this.r.s1()) {
                    e();
                }
                v7.c cVarJ1 = this.r.j1();
                v7.c cVar = v7.c.COMPANION_AD;
                if (cVarJ1 == cVar) {
                    j();
                    k();
                } else {
                    l();
                }
                if (!this.r.s1()) {
                    e();
                }
                if (this.r.j1() == cVar) {
                    l();
                } else {
                    j();
                    k();
                }
            } else if (this.r.s1()) {
                e();
                ArrayList arrayList = new ArrayList();
                c0 c0VarM = m();
                if (c0VarM != null) {
                    arrayList.add(c0VarM);
                }
                d0 d0VarN = n();
                if (d0VarN != null) {
                    arrayList.add(d0VarN);
                }
                e0 e0VarO = o();
                if (e0VarO != null) {
                    arrayList.add(e0VarO);
                }
                a(arrayList);
            } else {
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                if (this.r.j1() == v7.c.COMPANION_AD) {
                    c0 c0VarM2 = m();
                    if (c0VarM2 != null) {
                        arrayList2.add(c0VarM2);
                    }
                    d0 d0VarN2 = n();
                    if (d0VarN2 != null) {
                        arrayList2.add(d0VarN2);
                    }
                    a(arrayList2);
                    e();
                    e0 e0VarO2 = o();
                    if (e0VarO2 != null) {
                        arrayList3.add(e0VarO2);
                    }
                    a(arrayList3);
                } else {
                    e0 e0VarO3 = o();
                    if (e0VarO3 != null) {
                        arrayList2.add(e0VarO3);
                    }
                    a(arrayList2);
                    e();
                    c0 c0VarM3 = m();
                    if (c0VarM3 != null) {
                        arrayList3.add(c0VarM3);
                    }
                    d0 d0VarN3 = n();
                    if (d0VarN3 != null) {
                        arrayList3.add(d0VarN3);
                    }
                    a(arrayList3);
                }
            }
        } else if (((Boolean) this.a.a(c5.L0)).booleanValue()) {
            ArrayList arrayList4 = new ArrayList();
            c0 c0VarM4 = m();
            if (c0VarM4 != null) {
                arrayList4.add(c0VarM4);
            }
            e0 e0VarO4 = o();
            if (e0VarO4 != null) {
                arrayList4.add(e0VarO4);
            }
            d0 d0VarN4 = n();
            if (d0VarN4 != null) {
                arrayList4.add(d0VarN4);
            }
            a(arrayList4);
            e();
        } else {
            j();
            l();
            k();
            e();
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Finished caching VAST ad #" + this.r.getAdIdNumber());
        }
        this.r.t1();
        h();
    }
}
