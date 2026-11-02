package com.applovin.impl;

import android.app.Activity;
import android.os.SystemClock;
import android.view.ViewGroup;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class z1 extends y1 {
    private final a2 N;
    private i0 O;
    private long P;
    private final AtomicBoolean Q;

    class a implements y1.g {
        a() {
        }

        @Override // com.applovin.impl.y1.g
        public void a(y1 y1Var) {
            ((AppLovinFullscreenActivity) z1.this.d).setPresenter(y1Var);
            z1.this.r();
            y1Var.w();
        }

        @Override // com.applovin.impl.y1.g
        public void a(String str, Throwable th) {
            HashMap<String, String> mapHashMap = CollectionUtils.hashMap("source", "recreateFullscreenAdPresenterAfterRenderProcessGone");
            CollectionUtils.putStringIfValid("error_message", str, mapHashMap);
            CollectionUtils.putStringIfValid("top_main_method", th.toString(), mapHashMap);
            z1.this.b.g().a(h2.I, z1.this.a, mapHashMap);
            z1.this.d(false);
            z1.this.d.finish();
        }
    }

    public z1(com.applovin.impl.sdk.ad.b bVar, Activity activity, Map map, com.applovin.impl.sdk.l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, lVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.N = new a2(this.a, this.d, this.b);
        this.Q = new AtomicBoolean();
    }

    private long C() {
        com.applovin.impl.sdk.ad.b bVar = this.a;
        if (!(bVar instanceof com.applovin.impl.sdk.ad.a)) {
            return 0L;
        }
        float fK1 = ((com.applovin.impl.sdk.ad.a) bVar).k1();
        if (fK1 <= 0.0f) {
            fK1 = this.a.s();
        }
        return (long) (u7.c(fK1) * (((double) this.a.z()) / 100.0d));
    }

    private int D() {
        i0 i0Var;
        int iMin = 100;
        if (h()) {
            if (((Boolean) this.b.a(c5.o1)).booleanValue() && !this.a.hasShown()) {
                return 0;
            }
            if (!E() && (i0Var = this.O) != null) {
                iMin = (int) Math.min(100.0d, ((this.P - i0Var.b()) / this.P) * 100.0d);
            }
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a("AppLovinFullscreenActivity", "Ad engaged at " + iMin + "%");
            }
        }
        return iMin;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void F() {
        y1.a(this.a, this.F, this.G, this.H, null, this.b, this.d, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void G() {
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a("AppLovinFullscreenActivity", "Marking ad as fully watched");
        }
        this.Q.set(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void H() {
        this.r = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void I() {
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.g gVar = this.k;
        if (gVar != null) {
            arrayList.add(new m4(gVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.j;
            arrayList.add(new m4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.a.getAdEventTracker().b(b(), arrayList);
    }

    @Override // com.applovin.impl.y1
    protected void A() {
        this.N.a(this.l);
        this.r = SystemClock.elapsedRealtime();
        this.Q.set(true);
    }

    protected boolean E() {
        if (!(this.K && this.a.a1()) && h()) {
            return this.Q.get();
        }
        return true;
    }

    protected void J() {
        long jR;
        long millis = 0;
        if (this.a.Q() >= 0 || this.a.R() >= 0) {
            if (this.a.Q() >= 0) {
                jR = this.a.Q();
            } else {
                if (this.a.W0()) {
                    int iK1 = (int) ((com.applovin.impl.sdk.ad.a) this.a).k1();
                    if (iK1 > 0) {
                        millis = TimeUnit.SECONDS.toMillis(iK1);
                    } else {
                        int iS = (int) this.a.s();
                        if (iS > 0) {
                            millis = TimeUnit.SECONDS.toMillis(iS);
                        }
                    }
                }
                jR = (long) (millis * (((double) this.a.R()) / 100.0d));
            }
            c(jR);
        }
    }

    @Override // com.applovin.impl.y1
    public void a(ViewGroup viewGroup) {
        this.N.a(this.k, this.j, b(), viewGroup);
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null) {
            kVar.b();
        }
        b().renderAd(this.a);
        a("javascript:al_onPoststitialShow();", this.a.y());
        if (h()) {
            long jC = C();
            this.P = jC;
            if (jC > 0) {
                if (com.applovin.impl.sdk.p.a()) {
                    this.c.a("AppLovinFullscreenActivity", "Scheduling timer for ad fully watched in " + this.P + "ms...");
                }
                this.O = i0.a(this.P, this.b, new Runnable() { // from class: com.applovin.impl.z1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.G();
                    }
                });
            }
        }
        if (this.k != null) {
            if (this.a.s() >= 0) {
                a(this.k, this.a.s(), new Runnable() { // from class: com.applovin.impl.z1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.H();
                    }
                });
            } else {
                this.k.setVisibility(0);
            }
        }
        J();
        this.b.s0().a(new x6(this.b, "updateMainViewOM", new Runnable() { // from class: com.applovin.impl.z1$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.I();
            }
        }), i6.b.OTHER, TimeUnit.SECONDS.toMillis(1L));
        p();
        super.b(u7.e(this.b));
    }

    @Override // com.applovin.impl.y1
    public void a(String str) {
        if (!((Boolean) this.b.a(c5.a7)).booleanValue()) {
            com.applovin.impl.sdk.ad.b bVar = this.a;
            if (bVar != null) {
                bVar.a(str);
            }
            m();
        }
        i0 i0Var = this.O;
        if (i0Var != null) {
            i0Var.a();
            this.O = null;
        }
        super.a(str);
    }

    @Override // com.applovin.impl.y1
    public void b(long j) {
    }

    @Override // com.applovin.impl.y1
    public void e() {
        super.e();
        A();
    }

    @Override // com.applovin.impl.y1
    public void f() {
        super.f();
        int iD = this.a.D();
        if (iD <= 0 || !(this.d instanceof AppLovinFullscreenActivity)) {
            A();
            return;
        }
        if (this.a.U() >= iD) {
            A();
            return;
        }
        d(true);
        this.a.F0();
        this.a.setHasShown(false);
        a("attempting_reshow_from_render_process_gone");
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.z1$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.F();
            }
        }, this.a.h());
    }

    @Override // com.applovin.impl.y1
    protected void m() {
        super.a(D(), false, E(), -2L);
    }

    @Override // com.applovin.impl.y1
    public void v() {
    }

    @Override // com.applovin.impl.y1
    public void w() {
        a((ViewGroup) null);
    }

    @Override // com.applovin.impl.y1
    protected void x() {
        super.x();
        this.Q.set(true);
    }
}
