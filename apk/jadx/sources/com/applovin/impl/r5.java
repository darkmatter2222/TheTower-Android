package com.applovin.impl;

import android.net.Uri;
import android.os.SystemClock;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class r5 extends q5 {
    private final com.applovin.impl.sdk.ad.a r;
    private final long s;
    private boolean t;
    private boolean u;

    class a implements e0.a {
        a() {
        }

        @Override // com.applovin.impl.e0.a
        public void a(Uri uri) {
            if (uri != null) {
                r5.this.r.q1();
                r5.this.r.a(uri);
            }
        }
    }

    class b implements q5.c {
        b() {
        }

        @Override // com.applovin.impl.q5.c
        public void a(String str) {
            r5.this.r.d(r5.this.c(str));
            r5.this.r.b(true);
            com.applovin.impl.sdk.p pVar = r5.this.c;
            if (com.applovin.impl.sdk.p.a()) {
                r5 r5Var = r5.this;
                r5Var.c.a(r5Var.b, "Finish caching non-video resources for ad #" + r5.this.r.getAdIdNumber());
            }
            r5 r5Var2 = r5.this;
            r5Var2.c.f(r5Var2.b, "Ad updated with cachedHTML = " + r5.this.r.h1());
        }
    }

    public r5(com.applovin.impl.sdk.ad.a aVar, long j, com.applovin.impl.sdk.l lVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        super("TaskCacheAppLovinAd", aVar, lVar, appLovinAdLoadListener);
        this.r = aVar;
        this.s = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c(String str) {
        if (u7.j(com.applovin.impl.sdk.l.p())) {
            str = u7.c(str);
        }
        if (!this.r.isOpenMeasurementEnabled()) {
            return str;
        }
        return this.a.g0().a(str, j2.a((AppLovinAdImpl) this.g));
    }

    private void j() {
        if (i()) {
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Caching non-optional HTML resources...");
        }
        this.r.d(c(a(this.r.h1(), this.r.V(), this.r)));
        this.r.b(true);
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Finish caching non-optional HTML resources for ad #" + this.r.getAdIdNumber());
        }
        this.c.f(this.b, "Ad HTML updated to reference locally cached non-optional resources = " + this.r.h1());
    }

    private void k() {
        Uri uriB;
        if (i() || (uriB = b(this.r.o1())) == null) {
            return;
        }
        this.r.q1();
        this.r.a(uriB);
    }

    private d0 l() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Caching HTML resources...");
        }
        return a(this.r.h1(), this.r.V(), new b());
    }

    private e0 m() {
        return a(this.r.o1(), new a());
    }

    private void n() {
        if (i()) {
            return;
        }
        ArrayList<String> arrayList = new ArrayList(this.r.J());
        arrayList.addAll(this.r.c0());
        if (CollectionUtils.isEmpty(arrayList)) {
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Caching optional HTML resources...");
        }
        String strH1 = this.r.h1();
        for (String str : arrayList) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Caching optional resource: " + str);
            }
            int iA = this.a.I().a(str, this.g);
            Map mapA = j2.a((AppLovinAdImpl) this.g);
            String strA = this.a.I().a(com.applovin.impl.sdk.l.p(), str, this.r.getCachePrefix(), this.r.V(), true, true, iA, this.i, mapA);
            if (StringUtils.isValidString(strA)) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a(this.b, "Updating HTML with cached optional resource: " + strA);
                }
                this.r.a(strA, str);
                strH1 = strH1.replace(str, strA);
                this.r.d(strH1);
            } else {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.b(this.b, "Failed to cache optional resource: " + str);
                }
                a(str, "cacheOptionalHtmlResource", mapA);
            }
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a(this.b, "Finish caching optional HTML resources for ad #" + this.r.getAdIdNumber());
        }
    }

    private void o() {
        Long l = (Long) this.a.a(c5.c1);
        if (l.longValue() <= 0) {
            e();
            return;
        }
        long jE1 = (this.r.e1() - l.longValue()) - (SystemClock.elapsedRealtime() - this.s);
        if (jE1 > 0) {
            this.a.s0().a(new x6(this.a, "delayAdLoadSuccessCallback", new Runnable() { // from class: com.applovin.impl.r5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.e();
                }
            }), i6.b.CACHING, jE1);
        } else {
            e();
        }
    }

    public void b(boolean z) {
        this.u = z;
    }

    public void c(boolean z) {
        this.t = z;
    }

    @Override // com.applovin.impl.q5, java.lang.Runnable
    public void run() {
        super.run();
        boolean zD0 = this.r.D0();
        boolean z = this.u;
        if (zD0 || z) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Begin caching for streaming ad #" + this.r.getAdIdNumber() + "...");
            }
            if (((Boolean) this.a.a(c5.L0)).booleanValue()) {
                ArrayList arrayList = new ArrayList();
                if (!zD0) {
                    e();
                    d0 d0VarL = l();
                    if (d0VarL != null) {
                        arrayList.add(d0VarL);
                    }
                } else if (this.t) {
                    e();
                    d0 d0VarL2 = l();
                    if (d0VarL2 != null) {
                        arrayList.add(d0VarL2);
                    }
                    e0 e0VarM = m();
                    if (e0VarM != null) {
                        arrayList.add(e0VarM);
                    }
                } else {
                    d0 d0VarL3 = l();
                    if (d0VarL3 != null) {
                        a(Arrays.asList(d0VarL3));
                    }
                    e();
                    e0 e0VarM2 = m();
                    if (e0VarM2 != null) {
                        arrayList.add(e0VarM2);
                    }
                }
                a(arrayList);
                e();
            } else if (zD0) {
                if (this.t) {
                    e();
                }
                j();
                if (!this.t) {
                    e();
                }
                k();
            } else {
                e();
                j();
            }
        } else {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a(this.b, "Begin processing for non-streaming ad #" + this.r.getAdIdNumber() + "...");
            }
            if (this.r.i1() != null) {
                this.r.i1().c(this.i, new c4.a() { // from class: com.applovin.impl.r5$$ExternalSyntheticLambda1
                    @Override // com.applovin.impl.c4.a
                    public final void a(int i) {
                        this.f$0.a(i);
                    }
                });
                this.r.i1().b();
            }
            if (((Boolean) this.a.a(c5.L0)).booleanValue()) {
                ArrayList arrayList2 = new ArrayList();
                d0 d0VarL4 = l();
                if (d0VarL4 != null) {
                    arrayList2.add(d0VarL4);
                }
                e0 e0VarM3 = m();
                if (e0VarM3 != null) {
                    arrayList2.add(e0VarM3);
                }
                a(arrayList2);
                o();
                if (this.r.i1() != null) {
                    this.r.i1().a();
                }
                n();
                e();
            } else {
                j();
                k();
                o();
                if (this.r.i1() != null) {
                    this.r.i1().a();
                }
                n();
                e();
            }
        }
        h();
    }
}
