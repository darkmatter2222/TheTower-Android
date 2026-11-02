package com.applovin.impl.mediation.ads;

import android.view.ViewGroup;
import com.applovin.impl.h3;
import com.applovin.impl.l8;
import com.applovin.impl.m8;
import com.applovin.impl.sdk.l;
import com.applovin.impl.sdk.p;

/* JADX INFO: loaded from: classes2.dex */
public class b implements m8.a {
    private final l a;
    private final h3 b;
    private final m8 c;
    private final l8 d;
    private final a.InterfaceC0019a e;

    public b(h3 h3Var, ViewGroup viewGroup, a.InterfaceC0019a interfaceC0019a, l lVar) {
        this.a = lVar;
        this.b = h3Var;
        this.e = interfaceC0019a;
        this.d = new l8(viewGroup, lVar);
        m8 m8Var = new m8(viewGroup, lVar, this);
        this.c = m8Var;
        m8Var.a(h3Var);
        lVar.Q();
        if (p.a()) {
            lVar.Q().a("MaxNativeAdView", "Created new MaxNativeAdView (" + this + ")");
        }
    }

    private void a(long j) {
        if (this.b.y0().compareAndSet(false, true)) {
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("MaxNativeAdView", "Scheduling viewability impression for ad...");
            }
            this.a.Z().processViewabilityAdImpressionPostback(this.b, j, this.e);
        }
    }

    public void a() {
        this.c.b();
    }

    public h3 b() {
        return this.b;
    }

    public void c() {
        this.a.Q();
        if (p.a()) {
            this.a.Q().a("MaxNativeAdView", "Handling view attached to window");
        }
        if (this.b.x0().compareAndSet(false, true)) {
            this.a.Q();
            if (p.a()) {
                this.a.Q().a("MaxNativeAdView", "Scheduling impression for ad manually...");
            }
            if (this.b.getNativeAd().isExpired()) {
                p.h("MaxNativeAdView", "Attempting to display an expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
            } else {
                this.a.f().a(this.b);
            }
            this.a.Z().processRawAdImpression(this.b, this.e);
        }
    }

    @Override // com.applovin.impl.m8.a
    public void onLogVisibilityImpression() {
        a(this.d.a(this.b));
    }
}
