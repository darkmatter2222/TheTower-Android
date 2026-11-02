package com.ironsource;

import com.ironsource.mediationsdk.adunit.adapter.utility.AdInfo;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.mediation.LevelPlay;
import java.util.List;
import p005kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class Xf {
    private final Sf a;

    public static final class a implements InterfaceC3626hb {
        a() {
        }

        @Override // com.ironsource.InterfaceC3626hb
        public void a(AdInfo adInfo) {
            Xf.this.a(Yf.a, LevelPlay.AdFormat.INTERSTITIAL, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3626hb
        public void a(IronSourceError ironSourceError) {
            Xf.this.a(Yf.b, LevelPlay.AdFormat.INTERSTITIAL, C3522bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null));
        }

        @Override // com.ironsource.InterfaceC3626hb
        public void a(IronSourceError ironSourceError, AdInfo adInfo) {
            Xf.this.a(Yf.e, LevelPlay.AdFormat.INTERSTITIAL, C3522bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null, adInfo));
        }

        @Override // com.ironsource.InterfaceC3626hb
        public void b(AdInfo adInfo) {
            Xf.this.a(Yf.g, LevelPlay.AdFormat.INTERSTITIAL, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3626hb
        public void c(AdInfo adInfo) {
            Xf.this.a(Yf.c, LevelPlay.AdFormat.INTERSTITIAL, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3626hb
        public void d(AdInfo adInfo) {
            Xf.this.a(Yf.f, LevelPlay.AdFormat.INTERSTITIAL, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3626hb
        public void e(AdInfo adInfo) {
            Xf.this.a(Yf.d, LevelPlay.AdFormat.INTERSTITIAL, C3522bg.a.a(adInfo));
        }
    }

    public static final class b implements InterfaceC3882vb, InterfaceC3864ub {
        b() {
        }

        @Override // com.ironsource.InterfaceC3864ub
        public void a() {
            Xf.this.a(Yf.n, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(new Object[0]));
        }

        @Override // com.ironsource.InterfaceC3846tb
        public void a(C3717md c3717md, AdInfo adInfo) {
            Xf.this.a(Yf.f, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(Wf.a.a(c3717md), adInfo));
        }

        @Override // com.ironsource.InterfaceC3882vb
        public void a(AdInfo adInfo) {
            Xf.this.a(Yf.a, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3882vb
        public void a(IronSourceError ironSourceError) {
            Xf.this.a(Yf.b, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null));
        }

        @Override // com.ironsource.InterfaceC3846tb
        public void a(IronSourceError ironSourceError, AdInfo adInfo) {
            Xf.this.a(Yf.e, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null, adInfo));
        }

        @Override // com.ironsource.InterfaceC3846tb
        public void b(C3717md c3717md, AdInfo adInfo) {
            Xf.this.a(Yf.i, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(Wf.a.a(c3717md), adInfo));
        }

        @Override // com.ironsource.InterfaceC3846tb
        public void b(AdInfo adInfo) {
            Xf.this.a(Yf.g, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3846tb
        public void c(AdInfo adInfo) {
            Xf.this.a(Yf.c, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.InterfaceC3864ub
        public void d(AdInfo adInfo) {
            Xf.this.a(Yf.h, LevelPlay.AdFormat.REWARDED, C3522bg.a.a(adInfo));
        }
    }

    public static final class c implements Ia {
        c() {
        }

        @Override // com.ironsource.Ia
        public void a(IronSourceError ironSourceError) {
            Xf.this.a(Yf.b, LevelPlay.AdFormat.BANNER, C3522bg.a.a(ironSourceError != null ? ironSourceError.getErrorMessage() : null));
        }

        @Override // com.ironsource.Ia
        public void d(AdInfo adInfo) {
            Xf.this.a(Yf.f, LevelPlay.AdFormat.BANNER, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void e(AdInfo adInfo) {
            Xf.this.a(Yf.j, LevelPlay.AdFormat.BANNER, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void f(AdInfo adInfo) {
            Xf.this.a(Yf.m, LevelPlay.AdFormat.BANNER, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void g(AdInfo adInfo) {
            Xf.this.a(Yf.k, LevelPlay.AdFormat.BANNER, C3522bg.a.a(adInfo));
        }

        @Override // com.ironsource.Ia
        public void h(AdInfo adInfo) {
            Xf.this.a(Yf.l, LevelPlay.AdFormat.BANNER, C3522bg.a.a(adInfo));
        }
    }

    public Xf(Sf javaScriptEvaluator) {
        Intrinsics.checkNotNullParameter(javaScriptEvaluator, "javaScriptEvaluator");
        this.a = javaScriptEvaluator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, LevelPlay.AdFormat adFormat, List<? extends Object> list) {
        this.a.a(str, adFormat, list);
    }

    private final void b() {
        Wf wf = Wf.a;
        wf.a((InterfaceC3626hb) null);
        wf.a((InterfaceC3846tb) null);
        wf.a((Ia) null);
    }

    private final void c() {
        com.ironsource.mediationsdk.c.c().d(false);
        Wf.a.e();
    }

    public final void a() {
        b();
        c();
    }

    public final void d() {
        Wf wf = Wf.a;
        wf.a(new a());
        wf.a(new b());
        wf.a(new c());
    }
}
