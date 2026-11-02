package com.applovin.impl;

import android.app.Activity;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class c2 extends f2 {
    private final v7 n0;
    private final Set o0;

    class a implements c1.b {
        a() {
        }

        @Override // com.applovin.impl.c1.b
        public void a() {
            float duration = c2.this.P.getDuration() - c2.this.P.getCurrentPosition();
            c2 c2Var = c2.this;
            long j = (long) (c2Var.d0 - duration);
            int iD = c2Var.D();
            HashSet hashSet = new HashSet();
            for (f8 f8Var : new HashSet(c2.this.o0)) {
                if (f8Var.a(j, iD)) {
                    hashSet.add(f8Var);
                    c2.this.o0.remove(f8Var);
                }
            }
            c2.this.a(hashSet);
            if (iD >= 25 && iD < 50) {
                c2.this.n0.getAdEventTracker().x();
                return;
            }
            if (iD >= 50 && iD < 75) {
                c2.this.n0.getAdEventTracker().y();
            } else if (iD >= 75) {
                c2.this.n0.getAdEventTracker().C();
            }
        }

        @Override // com.applovin.impl.c1.b
        public boolean b() {
            return !c2.this.g0;
        }
    }

    public c2(final com.applovin.impl.sdk.ad.b bVar, final Activity activity, Map map, final com.applovin.impl.sdk.l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(bVar, activity, map, lVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        HashSet hashSet = new HashSet();
        this.o0 = hashSet;
        v7 v7Var = (v7) bVar;
        this.n0 = v7Var;
        if (v7Var.r1()) {
            ImageView imageViewA = b8.a(v7Var.l1().e(), activity, lVar);
            this.W = imageViewA;
            imageViewA.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.c2$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.a(bVar, lVar, activity, view);
                }
            });
        }
        v7.d dVar = v7.d.VIDEO;
        hashSet.addAll(v7Var.a(dVar, g8.a));
        a(v7.d.IMPRESSION);
        a(dVar, "creativeView");
        v7Var.getAdEventTracker().g();
    }

    private boolean W() {
        return this.W != null && this.n0.r1();
    }

    private void X() {
        if (!H() || this.o0.isEmpty()) {
            return;
        }
        if (com.applovin.impl.sdk.p.a()) {
            this.c.k("AppLovinFullscreenActivity", "Firing " + this.o0.size() + " un-fired video progress trackers when video was completed.");
        }
        a(this.o0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, com.applovin.impl.sdk.l lVar, Activity activity, View view) {
        Uri uriC = this.n0.l1().c();
        if (uriC != null) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a("AppLovinFullscreenActivity", "Industry Icon clicked, opening URL: " + uriC);
            }
            a(v7.d.INDUSTRY_ICON_CLICK);
            if (bVar.isCustomTabsEnabled()) {
                lVar.A().a(uriC, b().getController(), activity);
            } else {
                q7.b(uriC, bVar, activity, lVar);
            }
        }
    }

    private void a(v7.d dVar) {
        a(dVar, a8.UNSPECIFIED);
    }

    private void a(v7.d dVar, a8 a8Var) {
        a(dVar, "", a8Var);
    }

    private void a(v7.d dVar, String str) {
        a(dVar, str, a8.UNSPECIFIED);
    }

    private void a(v7.d dVar, String str, a8 a8Var) {
        a(this.n0.a(dVar, str), a8Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Set set) {
        a(set, a8.UNSPECIFIED);
    }

    private void a(Set set, a8 a8Var) {
        if (set == null || set.isEmpty()) {
            return;
        }
        long currentPosition = (long) this.P.getCurrentPosition();
        j8 j8VarQ1 = this.n0.q1();
        Uri uriD = j8VarQ1 != null ? j8VarQ1.d() : null;
        if (com.applovin.impl.sdk.p.a()) {
            this.c.a("AppLovinFullscreenActivity", "Firing " + set.size() + " tracker(s): " + set);
        }
        h8.a(set, currentPosition, uriD, a8Var, this.b);
    }

    @Override // com.applovin.impl.f2
    protected float C() {
        v7 v7Var = this.n0;
        i8 i8VarP1 = v7Var.p1();
        float fD = 0.0f;
        if (i8VarP1 == null || i8VarP1.d() <= 0) {
            float f = this.d0;
            if (f > 0.0f) {
                fD = 0.0f + f;
            }
        } else {
            fD = 0.0f + i8VarP1.d();
        }
        if (!v7Var.W0()) {
            return fD;
        }
        long jS = v7Var.s();
        return jS > 0 ? fD + jS : fD;
    }

    @Override // com.applovin.impl.f2
    public void E() {
        a(v7.d.VIDEO, "skip");
        this.n0.getAdEventTracker().B();
        super.E();
    }

    @Override // com.applovin.impl.f2
    protected void F() {
        super.F();
        v7 v7Var = this.n0;
        if (v7Var != null) {
            v7Var.getAdEventTracker().i();
        }
    }

    @Override // com.applovin.impl.f2
    protected void R() {
        super.R();
        v7 v7Var = this.n0;
        if (v7Var != null) {
            v7Var.getAdEventTracker().j();
        }
    }

    @Override // com.applovin.impl.f2
    public void S() {
        X();
        if (!h8.a(this.n0)) {
            if (com.applovin.impl.sdk.p.a()) {
                this.c.a("AppLovinFullscreenActivity", "VAST ad does not have valid companion ad - dismissing...");
            }
            a("no_valid_companion_ad");
        } else {
            if (this.g0) {
                return;
            }
            a(v7.d.COMPANION, "creativeView");
            this.n0.getAdEventTracker().w();
            super.S();
        }
    }

    @Override // com.applovin.impl.f2
    public void V() {
        super.V();
        a(v7.d.VIDEO, this.c0 ? "mute" : "unmute");
        this.n0.getAdEventTracker().b(this.c0);
    }

    @Override // com.applovin.impl.f2
    public void a(MotionEvent motionEvent) {
        a(v7.d.VIDEO_CLICK);
        this.n0.getAdEventTracker().v();
        super.a(motionEvent);
    }

    @Override // com.applovin.impl.f2, com.applovin.impl.y1
    public void a(ViewGroup viewGroup) {
        super.a(viewGroup);
        if (W()) {
            a(v7.d.INDUSTRY_ICON_IMPRESSION);
            this.W.setVisibility(0);
        }
        this.Z.a("PROGRESS_TRACKING", TimeUnit.SECONDS.toMillis(1L), new a());
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.a aVar = this.Q;
        if (aVar != null) {
            arrayList.add(new m4(aVar, FriendlyObstructionPurpose.OTHER, "video stream buffering indicator"));
        }
        com.applovin.impl.adview.g gVar = this.R;
        if (gVar != null) {
            arrayList.add(new m4(gVar, FriendlyObstructionPurpose.CLOSE_AD, "skip button"));
        }
        k0 k0Var = this.S;
        if (k0Var != null) {
            arrayList.add(new m4(k0Var, FriendlyObstructionPurpose.OTHER, "countdown clock"));
        }
        ProgressBar progressBar = this.U;
        if (progressBar != null) {
            arrayList.add(new m4(progressBar, FriendlyObstructionPurpose.OTHER, "progress bar"));
        }
        ProgressBar progressBar2 = this.V;
        if (progressBar2 != null) {
            arrayList.add(new m4(progressBar2, FriendlyObstructionPurpose.OTHER, "postitial progress bar"));
        }
        ImageView imageView = this.T;
        if (imageView != null) {
            arrayList.add(new m4(imageView, FriendlyObstructionPurpose.VIDEO_CONTROLS, "mute button"));
        }
        com.applovin.impl.adview.k kVar = this.j;
        if (kVar != null && kVar.a()) {
            com.applovin.impl.adview.k kVar2 = this.j;
            arrayList.add(new m4(kVar2, FriendlyObstructionPurpose.NOT_VISIBLE, kVar2.getIdentifier()));
        }
        this.n0.getAdEventTracker().b(this.P, arrayList);
    }

    @Override // com.applovin.impl.f2, com.applovin.impl.y1
    public void a(String str) {
        if (this.n0 != null) {
            a(v7.d.VIDEO, TJAdUnitConstants.String.CLOSE);
            a(v7.d.COMPANION, TJAdUnitConstants.String.CLOSE);
        }
        super.a(str);
    }

    @Override // com.applovin.impl.f2
    public void g(String str) {
        a(v7.d.ERROR, a8.MEDIA_FILE_ERROR);
        this.n0.getAdEventTracker().b(str);
        super.g(str);
    }

    @Override // com.applovin.impl.y1
    public void s() {
        super.s();
        a(this.g0 ? v7.d.COMPANION : v7.d.VIDEO, "pause");
        this.n0.getAdEventTracker().z();
    }

    @Override // com.applovin.impl.y1
    public void t() {
        super.t();
        a(this.g0 ? v7.d.COMPANION : v7.d.VIDEO, "resume");
        this.n0.getAdEventTracker().A();
    }

    @Override // com.applovin.impl.f2, com.applovin.impl.y1
    public void v() {
        this.Z.c();
        super.v();
    }

    @Override // com.applovin.impl.f2, com.applovin.impl.y1
    public void w() {
        a((ViewGroup) null);
    }
}
